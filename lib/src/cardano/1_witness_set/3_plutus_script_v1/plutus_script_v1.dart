import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../exceptions/parse_exceptions.dart";
import "../../../utils/transformations.dart";
import "../script.dart";

part "plutus_script_v1.freezed.dart";

@freezed
class PlutusScriptV1 extends Script with _$PlutusScriptV1 {

  const factory PlutusScriptV1({required Uint8List bytes}) = _PlutusScriptV1;
  const PlutusScriptV1._() : super();

  factory PlutusScriptV1.deserialize(CborValue cborValue) {
    if (cborValue is! CborBytes) {
      throw WitnessPlutusScriptV1ParseException("cborValue is ${cborValue.runtimeType}");
    }

    return PlutusScriptV1(bytes: cborValue.bytes.toUint8List());
  }

  @override
  CborValue serialize({required bool forJson}) => forJson ? CborString(getScriptHash().hexEncode()) : CborBytes(bytes);
}
