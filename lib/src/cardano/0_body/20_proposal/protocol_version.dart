// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../cbor_encodable.dart";

part "protocol_version.freezed.dart";

@freezed
sealed class ProtocolVersion with _$ProtocolVersion implements CborEncodable {
  const factory ProtocolVersion({
    required int major,
    required int minor,
  }) = _ProtocolVersion;
  const ProtocolVersion._();

  @override
  CborValue serialize({required bool forJson}) => CborList([
    CborSmallInt(major),
    CborSmallInt(minor),
  ]);

  factory ProtocolVersion.deserialize(CborValue cValue) {
    if (cValue is! CborList) {
      throw Exception(
        "ProtocolVersion deserialization failed. Expected a cbor list but got ${cValue.runtimeType}",
      );
    }
    if (cValue.length != 2) {
      throw Exception(
        "ProtocolVersion deserialization failed. Expected a cbor list with length 2 but got ${cValue.length}",
      );
    }
    final major = cValue[0];
    if (major is! CborInt) {
      throw Exception(
        "ProtocolVersion deserialization failed. Expected cValue[0] to be cbor int but got ${major.runtimeType}",
      );
    }
    final minor = cValue[1];
    if (minor is! CborInt) {
      throw Exception(
        "ProtocolVersion deserialization failed. Expected cValue[1] to be cbor int but got ${minor.runtimeType}",
      );
    }
    return ProtocolVersion(
      major: major.toInt(),
      minor: minor.toInt(),
    );
  }
}
