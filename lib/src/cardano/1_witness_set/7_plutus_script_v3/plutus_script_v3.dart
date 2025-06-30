import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../exceptions/parse_exceptions.dart";
import "../../../utils/transformations.dart";
import "../script.dart";

part "plutus_script_v3.freezed.dart";

@freezed
sealed class PlutusScriptV3 extends Script with _$PlutusScriptV3 {
  const factory PlutusScriptV3({required Uint8List bytes}) = _PlutusScriptV3;
  const PlutusScriptV3._();

  factory PlutusScriptV3.deserialize(CborValue cborValue) {
    if (cborValue is! CborBytes) {
      throw WitnessPlutusScriptV3ParseException("cborValue is ${cborValue.runtimeType}");
    }

    return PlutusScriptV3(bytes: cborValue.bytes.toUint8List());
  }

  @override
  CborValue serialize({required bool forJson}) => forJson ? CborString(getScriptHash().hexEncode()) : CborBytes(bytes);
}
