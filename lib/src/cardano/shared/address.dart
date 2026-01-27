import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../exceptions/parse_exceptions.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";

part "address.freezed.dart";

@freezed
sealed class Address with _$Address implements CborEncodable {
  const factory Address({
    required List<int> value, // bytes
    @Default(CborLengthType.definite) CborLengthType lengthType,
    @Default([]) List<int> cborTags,
  }) = _Address;

  factory Address.fromHex(String hex) {
    return Address(value: hex.hexDecode());
  }

  factory Address.fromBase58OrBech32(String base58OrBech32) {
    try {
      return Address(value: base58OrBech32.bech32Decode());
    } catch (err) {
      return Address(value: base58OrBech32.base58Decode());
    }
  }

  const Address._();

  String get hexValue => value.hexEncode();

  String get base58OrBech32Value => value.addressBase58Orbech32Encode();

  @override
  CborValue serialize({required bool forJson}) {
    return forJson
        ? CborString(base58OrBech32Value)
        : CborBytes(
            value,
            // lengthType: lengthType, // TODO: first fix cbor package to accept lengthType for bytes
            tags: cborTags,
          );
  }

  factory Address.deserialize(CborValue cValue) {
    if (cValue is CborBytes) {
      return Address(
        value: cValue.bytes,
        lengthType: cValue.type,
        cborTags: cValue.tags,
      );
    }
    throw AddressParseException("cValue is ${cValue.runtimeType}");
  }
}
