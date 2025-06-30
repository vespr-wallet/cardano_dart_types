// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";
import "../../shared/anchor.dart";

part "constitution.freezed.dart";

@freezed
sealed class Constitution with _$Constitution implements CborEncodable {
  const factory Constitution({
    required Anchor anchor,
    required String? scriptHash,
  }) = _Constitution;
  const Constitution._();

  factory Constitution.deserialize(CborValue cValue) {
    if (cValue is! CborList) {
      throw Exception(
        "Constitution deserialization failed. Expected a cbor list but got ${cValue.runtimeType}",
      );
    }
    if (cValue.length != 2) {
      throw Exception(
        "Constitution deserialization failed. Expected a cbor list with length 2 but got ${cValue.length}",
      );
    }

    final scriptHash = cValue[1];

    return Constitution(
      anchor: Anchor.deserialize(cValue[0]),
      scriptHash: switch (scriptHash) {
        CborNull() => null,
        CborBytes() => scriptHash.bytes.hexEncode(),
        _ => throw Exception(
            "Constitution deserialization failed. Invalid script hash type ${scriptHash.runtimeType}",
          ),
      },
    );
  }

  @override
  CborValue serialize({required bool forJson}) {
    final scriptHash = this.scriptHash;

    return CborList([
      anchor.serialize(forJson: forJson),
      scriptHash == null
          ? const CborNull()
          : forJson
              ? CborString(scriptHash)
              : CborBytes(scriptHash.hexDecode()),
    ]);
  }
}
