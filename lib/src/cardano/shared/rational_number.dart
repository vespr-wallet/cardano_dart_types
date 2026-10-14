// ignore_for_file: invalid_annotation_target
import "package:cbor/cbor.dart" hide cbor;
import "package:freezed_annotation/freezed_annotation.dart";

import "../cbor_encodable.dart";

part "rational_number.freezed.dart";

@freezed
sealed class RationalNumber with _$RationalNumber implements CborEncodable {
  factory RationalNumber({
    required BigInt numerator,
    required BigInt denominator,
    @Default(CborLengthType.definite) CborLengthType lengthType,
    // tag 30 (rational number) by default; empty when parsed from an untagged [numerator, denominator] list
    @Default([CborTag.rationalNumber]) List<int> cborTags,
  }) = _RationalNumber;
  RationalNumber._();

  factory RationalNumber.deserialize(CborValue cValue) {
    if (cValue is CborRationalNumber) {
      return RationalNumber(
        numerator: cValue.numerator.toBigInt(),
        denominator: cValue.denominator.toBigInt(),
        lengthType: cValue.type,
        cborTags: cValue.tags,
      );
    }

    if (cValue is CborList) {
      if (cValue.length != 2) {
        throw Exception(
          "RationalNumber deserialization failed. Expected a rational number / cbor list of length 2 but got ${cValue.length}",
        );
      }
      return RationalNumber(
        numerator: (cValue[0] as CborInt).toBigInt(),
        denominator: (cValue[1] as CborInt).toBigInt(),
        lengthType: cValue.type,
        cborTags: cValue.tags,
      );
    }

    throw Exception(
      "RationalNumber deserialization failed. Expected a cbor rational number but got ${cValue.runtimeType}",
    );
  }

  @override
  CborValue serialize({required bool forJson}) =>
      forJson //
      // explicit string (not toString()) so the JSON shape doesn't change with the encoding detail fields
      ? CborString("RationalNumber(numerator: $numerator, denominator: $denominator)")
      : CborRationalNumber(
          numerator: CborInt(numerator),
          denominator: CborInt(denominator),
          tags: cborTags,
          type: lengthType,
        );
}
