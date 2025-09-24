// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../exceptions/cose_exceptions.dart";
import "../utils/iterable_extensions.dart";
import "../utils/sugar.dart";
import "../utils/transformations.dart";
import "cose_item.dart";
import "cose_signature.dart";

part "cose_header_map.freezed.dart";

@freezed
sealed class CoseHeaderMap with _$CoseHeaderMap implements COSEItem {
  const factory CoseHeaderMap({
    CborValue? algorithmId, //  BigInteger / String / byte[] / (long / Integer)
    CborList? criticality, // Array<BigInteger / String / byte[] / (long / Integer)>
    CborValue? contentType, // BigInteger / String / byte[] / (long / Integer)
    Uint8List? keyId,
    Uint8List? initVector,
    Uint8List? partialInitVector,
    List<CoseSignature>? counterSignature,
    bool? hashed,
    required CborMap otherHeaders,
  }) = _CoseHeaderMap;
  const CoseHeaderMap._();

  factory CoseHeaderMap.deserialize(CborValue cValue) {
    if (cValue is! CborMap) {
      throw CoseHeaderMapParseException("cbor value is type ${cValue.runtimeType}");
    }

    final algorithmId = cValue[const CborSmallInt(1)];
    final criticality = cValue[const CborSmallInt(2)] as CborList?;
    final contentType = cValue[const CborSmallInt(3)];
    final keyId = (cValue[const CborSmallInt(4)] as CborBytes?)?.bytes.toUint8List();
    final initVector = (cValue[const CborSmallInt(5)] as CborBytes?)?.bytes.toUint8List();
    final partialInitVector = (cValue[const CborSmallInt(6)] as CborBytes?)?.bytes.toUint8List();
    final counterSignature = (cValue[const CborSmallInt(7)] as CborList?)?.map(CoseSignature.deserialize).toList();
    final hashed = (cValue[CborString("hashed")] as CborBool?)?.value;

    final otherHeaders = CborMap.fromEntries(
      cValue.keys
          .where((e) {
            if (e is CborString && e.toString() == "hashed") return false;
            if (e is! CborInt) return true;

            final eBigInt = e.toBigInt();
            return eBigInt < BigInt.one || eBigInt > _bigInt7;
          })
          .map((e) => MapEntry(e, cValue[e]!)),
    );

    return CoseHeaderMap(
      algorithmId: algorithmId,
      criticality: criticality,
      contentType: contentType,
      keyId: keyId,
      initVector: initVector,
      partialInitVector: partialInitVector,
      counterSignature: counterSignature,
      hashed: hashed,
      otherHeaders: otherHeaders,
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborMap.fromEntries(
    [
      algorithmId?.let(
        (p0) => MapEntry(
          forJson ? CborString("algorithmId") : const CborSmallInt(1),
          p0,
        ),
      ),
      criticality?.let(
        (p0) => MapEntry(
          forJson ? CborString("criticality") : const CborSmallInt(2),
          p0,
        ),
      ),
      contentType?.let(
        (p0) => MapEntry(
          forJson ? CborString("contentType") : const CborSmallInt(3),
          p0,
        ),
      ),
      keyId?.let(
        (p0) => MapEntry(
          forJson ? CborString("keyId") : const CborSmallInt(4),
          forJson ? CborString(p0.hexEncode()) : CborBytes(p0),
        ),
      ),
      initVector?.let(
        (p0) => MapEntry(
          forJson ? CborString("initVector") : const CborSmallInt(5),
          forJson ? CborString(p0.hexEncode()) : CborBytes(p0),
        ),
      ),
      partialInitVector?.let(
        (p0) => MapEntry(
          forJson ? CborString("partialInitVector") : const CborSmallInt(6),
          forJson ? CborString(p0.hexEncode()) : CborBytes(p0),
        ),
      ),
      counterSignature?.let(
        (p0) => MapEntry(
          forJson ? CborString("counterSignature") : const CborSmallInt(7),
          CborList.of(p0.map((e) => e.serialize(forJson: forJson))),
        ),
      ),
      hashed?.let(
        (p0) => MapEntry(
          CborString("hashed"),
          CborBool(p0),
        ),
      ),
      ...otherHeaders.entries,
    ].nonNulls(),
  );
}

final _bigInt7 = BigInt.parse("7");
