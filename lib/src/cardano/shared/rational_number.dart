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
  }) = _RationalNumber;
  RationalNumber._();

  factory RationalNumber.deserialize(CborValue cValue) {
    if (cValue is CborList) {
      if (cValue.length != 2) {
        throw Exception(
          "RationalNumber deserialization failed. Expected a rational number / cbor list of length 2 but got ${cValue.length}",
        );
      }
      return RationalNumber(
        numerator: (cValue[0] as CborInt).toBigInt(),
        denominator: (cValue[1] as CborInt).toBigInt(),
      );
    }

    if (cValue is! CborRationalNumber) {
      throw Exception(
        "RationalNumber deserialization failed. Expected a cbor rational number but got ${cValue.runtimeType}",
      );
    }
    return RationalNumber(
      numerator: cValue.numerator.toBigInt(),
      denominator: cValue.denominator.toBigInt(),
    );
  }

  @override
  CborValue serialize({required bool forJson}) =>
      forJson //
      ? CborString(toString())
      : CborRationalNumber(numerator: CborInt(numerator), denominator: CborInt(denominator));
}
