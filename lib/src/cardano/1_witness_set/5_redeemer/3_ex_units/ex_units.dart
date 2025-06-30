import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../exceptions/parse_exceptions.dart";
import "../../../cbor_encodable.dart";

part "ex_units.freezed.dart";

@freezed
sealed class ExUnits with _$ExUnits implements CborEncodable {
  const factory ExUnits({
    required BigInt mem,
    required BigInt steps,
  }) = _ExUnits;
  const ExUnits._();

  factory ExUnits.deserialize(CborValue cborValue) {
    if (cborValue is! CborList) {
      throw ExUnitsParseException("cborValue is ${cborValue.runtimeType}");
    }
    if (cborValue.length != 2) {
      throw ExUnitsParseException("cborValue length is ${cborValue.length}");
    }

    return ExUnits(
      mem: (cborValue[0] as CborInt).toBigInt(),
      steps: (cborValue[1] as CborInt).toBigInt(),
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborList.of([
        CborInt(mem),
        CborInt(steps),
      ]);
}
