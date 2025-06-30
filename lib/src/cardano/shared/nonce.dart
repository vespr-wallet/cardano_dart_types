// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:freezed_annotation/freezed_annotation.dart";

import "../../../cardano_dart_types.dart";
import "../../hd/util/CborDeserializationException.dart";
import "../cbor_encodable.dart";

part "nonce.freezed.dart";

@freezed
sealed class Nonce with _$Nonce implements CborEncodable {
  const factory Nonce({
    required Uint8List? nonceHash,
  }) = _Nonce;
  const Nonce._();

  factory Nonce.deserialize(CborValue cValue) {
    if (cValue is! CborList) {
      throw CborDeserializationException(
        "Nonce deserialization failed. Expected a cbor list but got ${cValue.runtimeType}",
      );
    }
    if (cValue.length > 2) {
      throw CborDeserializationException(
        "Nonce deserialization failed. Expected a cbor list with length <= 2 but got ${cValue.length}",
      );
    }
    final i = cValue[0];
    if (i is! CborInt) {
      throw CborDeserializationException(
        "Nonce deserialization failed. Expected cValue[0] to be cbor int but got ${i.runtimeType}",
      );
    }
    return switch (i.toInt()) {
      0 => const Nonce(nonceHash: null),
      1 => Nonce(
          nonceHash: (cValue[1] as CborBytes).bytes.toUint8List(),
        ),
      _ => throw CborDeserializationException(
          "Nonce deserialization failed. Invalid Nonce type ${i.toInt()}",
        ),
    };
  }

  @override
  CborValue serialize({required bool forJson}) {
    final nonceHash = this.nonceHash;
    return forJson
        ? CborString(nonceHash == null ? "Nonce with no hash" : "Nonce with hash: ${nonceHash.hexEncode()}")
        : CborList([
            CborSmallInt(nonceHash == null ? 0 : 1),
            if (nonceHash != null) CborBytes(nonceHash),
          ]);
  }
}
