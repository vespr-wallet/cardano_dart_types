import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../exceptions/parse_exceptions.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";

part "policy.freezed.dart";

@freezed
sealed class PolicyId with _$PolicyId implements CborEncodable {
  const factory PolicyId({
    required List<int> value,
    @Default(CborLengthType.definite) CborLengthType lengthType,
    @Default([]) List<int> cborTags,
  }) = _PolicyId;

  factory PolicyId.fromHex(String hex) {
    return PolicyId(value: hex.hexDecode());
  }

  const PolicyId._();

  String get hexValue => value.hexEncode();

  @override
  CborValue serialize({required bool forJson}) {
    return forJson
        ? CborString(value.hexEncode())
        : CborBytes(
            value,
            // lengthType: lengthType, // TODO: first fix cbor package to accept lengthType for bytes
            tags: cborTags,
          );
  }

  factory PolicyId.deserialize(CborValue cValue) {
    if (cValue is CborBytes) {
      return PolicyId(
        value: cValue.bytes,
        lengthType: cValue.type,
        cborTags: cValue.tags,
      );
    }
    throw PolicyIdParseException("cValue is ${cValue.runtimeType}");
  }
}
