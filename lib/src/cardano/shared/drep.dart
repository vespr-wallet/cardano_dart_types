// ignore_for_file: invalid_annotation_target

import "package:freezed_annotation/freezed_annotation.dart";

import "../../../cardano_dart_types.dart";
import "../../hd/util/CborDeserializationException.dart";
import "../cbor_encodable.dart";

part "drep.freezed.dart";

@freezed
sealed class Drep with _$Drep implements CborEncodable {
  Drep._();

  factory Drep.addrKeyHash({
    required String hash,
    required CborLengthType lengthType,
  }) = Drep_AddrKeyHash;

  factory Drep.scriptHash({
    required String hash,
    required CborLengthType lengthType,
  }) = Drep_ScriptHash;

  factory Drep.abstain({
    required CborLengthType lengthType,
  }) = Drep_Abstain;

  factory Drep.noConfidence({
    required CborLengthType lengthType,
  }) = Drep_NoConfidence;

  factory Drep.deserialize(CborValue value) {
    if (value is! CborList) {
      throw CborDeserializationException(
        "Drep deserialization failed. Expected a cbor list but got ${value.runtimeType}",
      );
    }
    final type = value[0] as CborInt;
    return switch (type.toInt()) {
      0 => Drep_AddrKeyHash(
        hash: (value[1] as CborBytes).bytes.hexEncode(),
        lengthType: value.type,
      ),
      1 => Drep_ScriptHash(
        hash: (value[1] as CborBytes).bytes.hexEncode(),
        lengthType: value.type,
      ),
      2 => Drep_Abstain(
        lengthType: value.type,
      ),
      3 => Drep_NoConfidence(
        lengthType: value.type,
      ),
      _ => throw Exception("Invalid Drep type"),
    };
  }

  @override
  late final int type = switch (this) {
    Drep_AddrKeyHash() => 0,
    Drep_ScriptHash() => 1,
    Drep_Abstain() => 2,
    Drep_NoConfidence() => 3,
  };

  @override
  CborValue serialize({required bool forJson}) => CborList.of(
    [
      // ignore: no_runtimetype_tostring
      forJson ? CborString(runtimeType.toString()) : CborSmallInt(type),
      ...switch (this) {
        Drep_AddrKeyHash(hash: final hash) => [
          forJson ? CborString(hash) : CborBytes(hash.hexDecode()),
        ],
        Drep_ScriptHash(hash: final hash) => [
          forJson ? CborString(hash) : CborBytes(hash.hexDecode()),
        ],
        Drep_Abstain() => [],
        Drep_NoConfidence() => [],
      },
    ],
    type: lengthType,
  );
}
