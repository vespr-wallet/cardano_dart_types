import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../exceptions/parse_exceptions.dart";
import "../../../utils/transformations.dart";
import "../script.dart";

part "plutus_script_v2.freezed.dart";

@freezed
sealed class PlutusScriptV2 extends Script with _$PlutusScriptV2 {
  const factory PlutusScriptV2({required Uint8List bytes}) = _PlutusScriptV2;
  const PlutusScriptV2._();

  factory PlutusScriptV2.deserialize(CborValue cborValue) {
    if (cborValue is! CborBytes) {
      throw WitnessPlutusScriptV2ParseException("cborValue is ${cborValue.runtimeType}");
    }

    return PlutusScriptV2(bytes: cborValue.bytes.toUint8List());
  }

  @override
  CborValue serialize({required bool forJson}) => forJson ? CborString(getScriptHash().hexEncode()) : CborBytes(bytes);
}
