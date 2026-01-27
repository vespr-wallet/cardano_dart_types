import "package:freezed_annotation/freezed_annotation.dart";

import "../../../cardano_dart_types.dart";
import "../cbor_encodable.dart";

part "transaction_hash.freezed.dart";

@freezed
sealed class TransactionHash with _$TransactionHash implements CborEncodable {
  const factory TransactionHash({
    required List<int> value,
    @Default(CborLengthType.definite) CborLengthType lengthType,
    @Default([]) List<int> cborTags,
  }) = _TransactionHash;

  factory TransactionHash.fromHex(String hex) {
    return TransactionHash(value: hex.hexDecode());
  }

  const TransactionHash._();

  String get hexValue => value.hexEncode();

  @override
  CborValue serialize({required bool forJson}) {
    return forJson
        ? CborString(value.hexEncode())
        : CborBytes(
            value,
            // lengthType: cValue.type,
            tags: cborTags,
          );
  }

  factory TransactionHash.deserialize(CborValue cValue) {
    if (cValue is! CborBytes) {
      throw TransactionHashParseException(
        "TransactionHash deserialization failed. Invalid cbor type ${cValue.runtimeType}",
      );
    }
    return TransactionHash(
      value: cValue.bytes,
      // lengthType: cValue.type, // TODO: first fix cbor package to accept lengthType for bytes
      cborTags: cValue.tags,
    );
  }
}
