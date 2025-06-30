// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../cardano_dart_types.dart";
import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";

part "required_signers.freezed.dart";

@freezed
sealed class RequiredSigners with _$RequiredSigners implements CborEncodable {
  const factory RequiredSigners({
    required List<Uint8List> signersBytes,
    required List<int> cborTags, // [258] tag may be sent in Conway era | passed for ledger serialization
  }) = _RequiredSigner;
  const RequiredSigners._();

  @override
  CborList serialize({required bool forJson}) => CborList(
        [
          ...signersBytes.map((e) => e.serializeCbor(forJson: forJson)),
          if (forJson) CborString("tags: [${cborTags.join(", ")}]"),
        ],
        tags: cborTags,
        type: CborLengthType.definite,
      );

  static RequiredSigners deserialize(CborValue cList) {
    if (cList is! CborList) {
      throw CborDeserializationException(
        "RequiredSigners deserialization failed. Expected a cbor list but got ${cList.runtimeType}",
      );
    }

    return RequiredSigners(
      signersBytes: cList.map((signer) {
        if (signer is! CborBytes) {
          throw CborDeserializationException(
            "RequiredSigners - signersBytes deserialization failed. Expected a cbor bytes but got ${signer.runtimeType}",
          );
        }
        return signer.bytes.toUint8List();
      }).toList(),
      cborTags: cList.tags,
    );
  }
}
