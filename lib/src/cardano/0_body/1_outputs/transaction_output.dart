import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../exceptions/parse_exceptions.dart";
import "../../../utils/iterable_extensions.dart";
import "../../../utils/sugar.dart";
import "../../../utils/transformations.dart";
import "../../1_witness_set/4_plutus_data/plutus_data.dart";
import "../../cbor_encodable.dart";
import "../../shared/asset.dart";
import "../../transaction.dart";
import "2_datum/output_datum.dart";

part "transaction_output.freezed.dart";

/// Address to send to and amount to send.
@Freezed(toStringOverride: false)
sealed class CardanoTransactionOutput with _$CardanoTransactionOutput implements CborEncodable {
  CardanoTransactionOutput._();

  factory CardanoTransactionOutput.legacy({
    required Uint8List addressBytes, // address bytes (convert to bech32 for shelley and base58 for byron)
    required Value value,
    required OutputDatum_Hash? outDatumHash,
    required CborLengthType lengthType,
  }) = CardanoTransactionOutput_Legacy;

  factory CardanoTransactionOutput.postAlonzo({
    required Uint8List addressBytes, // address bytes (convert to bech32 for shelley and base58 for byron)
    required Value value,
    required OutputDatum? outDatum,
    required Uint8List? scriptRef,
    required CborLengthType lengthType,
  }) = CardanoTransactionOutput_PostAlonzo;

  @override
  late final OutputDatum? datum = switch (this) {
    CardanoTransactionOutput_PostAlonzo(outDatum: final outDatum) => outDatum,
    CardanoTransactionOutput_Legacy(outDatumHash: final datumHash) => datumHash,
  };

  @override
  String toString() {
    final addr = addressBytes.addressBase58Orbech32Encode();
    return switch (this) {
      CardanoTransactionOutput_PostAlonzo(scriptRef: final scriptRef) =>
        "CardanoTransactionOutput.postAlonzo(addressBytes: $addr, value: $value, "
            "datum: $datum, scriptRef: $scriptRef, lengthType: $lengthType)",
      CardanoTransactionOutput_Legacy() => "CardanoTransactionOutput.legacy(addressBytes: $addr, value: $value, "
          "datum: $datum, lengthType: $lengthType)",
    };
  }

  @override
  CborValue serialize({required bool forJson}) {
    final obj = this;
    return switch (obj) {
      CardanoTransactionOutput_PostAlonzo() => obj._serializePostAlonzo(forJson: forJson),
      CardanoTransactionOutput_Legacy() => obj._serializeLegacy(forJson: forJson),
    };
  }

  factory CardanoTransactionOutput.deserializeHex(String cborHex) {
    return CardanoTransactionOutput.deserialize(cbor.decode(cborHex.hexDecode()));
  }

  factory CardanoTransactionOutput.deserialize(CborValue cValue) {
    final result = switch (cValue) {
      CborMap() => CardanoTransactionOutput.deserializePostAlonzo(cMap: cValue),
      CborList() => CardanoTransactionOutput.deserializeAlonzo(cList: cValue),
      _ => throw TransactionOutputParseException("cValue is ${cValue.runtimeType}"),
    };

    conditionalAssert(() => result.serializeHexString() == cValue.hexEncode());

    return result;
  }

  factory CardanoTransactionOutput.deserializePostAlonzo({required CborMap cMap}) {
    final address = cMap[const CborSmallInt(0)]! as CborBytes;
    final cardanoValue = _parseCborValue(
      cMap[const CborSmallInt(1)].require(argumentName: "deserializePostAlonzo: cMap[const CborSmallInt(1)]"),
      source: "deserializePostAlonzo",
    );
    final cborMaybeDatum = cMap[const CborSmallInt(2)];
    final cborMaybeScriptRef = cMap[const CborSmallInt(3)];

    final datum = cborMaybeDatum?.let((cborDatum) {
      if (cborDatum is! CborList) {
        throw TransactionOutputParseException("deserializePostAlonzo: cborDatum type: ${cborDatum.runtimeType}");
      }
      if (cborDatum.length != 2) {
        throw TransactionOutputParseException("deserializePostAlonzo: cborDatum length: ${cborDatum.length}");
      }

      final cborDatumOption = cborDatum[0] as CborSmallInt;
      final cborDatumContent = cborDatum[1];
      return switch (cborDatumOption.toInt()) {
        0 => OutputDatum.hash((cborDatumContent as CborBytes).bytes.toUint8List()),
        1 => OutputDatum.inline(PlutusData.deserialize(cborDatumContent)),
        _ => throw TransactionOutputParseException(
            "deserializePostAlonzo: cborDatumOption value: ${cborDatumOption.toInt()}",
          )
      };
      // cborDatum
    });

    final scriptRef = cborMaybeScriptRef?.let((p0) => (p0 as CborBytes).bytes.toUint8List());

    final result = CardanoTransactionOutput_PostAlonzo(
      addressBytes: address.bytes.toUint8List(),
      value: cardanoValue,
      outDatum: datum,
      scriptRef: scriptRef,
      lengthType: cMap.type,
    );

    conditionalAssert(() => result.serializeHexString() == cMap.hexEncode());

    return result;
  }

  factory CardanoTransactionOutput.deserializeAlonzo({required CborList cList}) {
    if (cList.length != 2 && cList.length != 3) {
      throw TransactionOutputParseException("deserializeAlonzo: Length is ${cList.length} instead of 2 оr 3");
    }

    final cborAddress = cList[0] as CborBytes;
    final cborValue = cList[1];
    final cborMaybeDatum = cList.length == 3 ? cList[2] : null;

    final datum = cborMaybeDatum?.let((cborDatum) {
      if (cborDatum is! CborBytes) {
        throw TransactionOutputParseException("deserializeAlonzo: cborDatum type: ${cborDatum.runtimeType}");
      }

      return OutputDatum_Hash(cborDatum.bytes.toUint8List());
    });

    final value = _parseCborValue(cborValue, source: "deserializeAlonzo");

    final result = CardanoTransactionOutput.legacy(
      addressBytes: cborAddress.bytes.toUint8List(),
      value: value,
      outDatumHash: datum,
      lengthType: cList.type,
    );

    conditionalAssert(() => result.serializeHexString() == cList.hexEncode());

    return result;
  }

  static Value _parseCborValue(CborValue cborValue, {required String source}) {
    if (cborValue is! CborList && cborValue is! CborInt) {
      throw TransactionOutputParseException("$source: value type: ${cborValue.runtimeType}");
    }

    return Value.deserialize(cValue: cborValue);
  }
}

extension _CardanoTxOutputPostAlonzoExtensions on CardanoTransactionOutput_PostAlonzo {
  CborMap _serializePostAlonzo({required bool forJson}) => CborMap.fromEntries(
        [
          if (forJson) MapEntry(CborString("type"), CborString("postAlonzo")),
          MapEntry(
            forJson ? CborString("address") : const CborSmallInt(0),
            forJson ? CborString(addressBytes.addressBase58Orbech32Encode()) : CborBytes(addressBytes),
          ),
          MapEntry(
            forJson ? CborString("Value") : const CborSmallInt(1),
            value.serialize(forJson: forJson),
          ),
          datum?.let(
            (p0) => MapEntry(
              forJson ? CborString("datum") : const CborSmallInt(2),
              CborList([
                CborSmallInt(
                  switch (p0) {
                    OutputDatum_Hash() => 0,
                    OutputDatum_Inline() => 1,
                  },
                ),
                p0.serialize(forJson: forJson),
              ]),
            ),
          ),
          scriptRef?.let(
            (p0) => MapEntry(
              forJson ? CborString("scriptRef") : const CborSmallInt(3),
              forJson ? CborString(p0.hexEncode()) : CborBytes(p0, tags: [24]),
            ),
          ),
        ].nonNulls(),
        type: lengthType,
      );
}

extension _CardanoTxOutputLegacyExtensions on CardanoTransactionOutput_Legacy {
  CborList _serializeLegacy({required bool forJson}) => CborList.of(
        [
          if (forJson) CborString("type: legacy"),
          forJson ? CborString(addressBytes.addressBase58Orbech32Encode()) : CborBytes(addressBytes),
          value.serialize(forJson: forJson),
          datum?.serialize(forJson: forJson),
        ].nonNulls(),
        type: lengthType,
      );
}

extension TransactionOutputIterableExtension on Iterable<CardanoTransactionOutput> {
  CborValue serialize({required bool forJson}) => CborList.of(
        map((output) => output.serialize(forJson: forJson)),
      );
}
