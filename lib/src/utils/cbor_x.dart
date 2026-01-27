import "../../cardano_dart_types.dart";

extension BigIntX on BigInt {
  // if the value is less than 53 bits, it will be a CborSmallInt
  CborInt toCborInt() => CborInt(this);

  CborBigInt toCborBigInt() => CborBigInt(this);
}

extension IntX on int {
  CborSmallInt toCborInt() => CborSmallInt(this);
}
