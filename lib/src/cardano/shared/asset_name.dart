import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../exceptions/parse_exceptions.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";

part "asset_name.freezed.dart";

@freezed
sealed class AssetName with _$AssetName implements CborEncodable {
  const factory AssetName({
    required List<int> value,
    @Default(CborLengthType.definite) CborLengthType lengthType,
    @Default([]) List<int> cborTags,
  }) = _AssetName;

  factory AssetName.fromHex(String hex) {
    return AssetName(value: hex.hexDecode());
  }

  const AssetName._();

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

  factory AssetName.deserialize(CborValue cValue) {
    if (cValue is CborBytes) {
      return AssetName(
        value: cValue.bytes,
        lengthType: cValue.type,
        cborTags: cValue.tags,
      );
    }
    throw AssetNameParseException("cValue is ${cValue.runtimeType}");
  }
}
