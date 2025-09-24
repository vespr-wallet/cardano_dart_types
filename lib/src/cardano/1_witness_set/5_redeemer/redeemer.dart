import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../exceptions/parse_exceptions.dart";
import "../4_plutus_data/plutus_data.dart";
import "3_ex_units/ex_units.dart";

part "redeemer.freezed.dart";

@freezed
sealed class Redeemer with _$Redeemer {
  const Redeemer._();

  const factory Redeemer.preConway({
    required RedeemerTag redeemerTag,
    required int index,
    required PlutusData plutusData,
    required ExUnits exUnits,
  }) = Redeemer_PreConway;

  const factory Redeemer.conway({
    required RedeemerTag redeemerTag,
    required int index,
    required PlutusData plutusData,
    required ExUnits exUnits,
  }) = Redeemer_Conway;

  factory Redeemer.deserializePreConway(CborValue cborValue) {
    if (cborValue is! CborList) {
      throw RedeemerParseException("deserializePreConway: cborValue is ${cborValue.runtimeType}");
    }
    if (cborValue.length != 4) {
      throw RedeemerParseException("deserializePreConway: cborValue length is ${cborValue.length}");
    }

    return Redeemer.preConway(
      redeemerTag: RedeemerTag.fromInt((cborValue[0] as CborSmallInt).toInt()),
      index: (cborValue[1] as CborSmallInt).toInt(),
      plutusData: PlutusData.deserialize(cborValue[2]),
      exUnits: ExUnits.deserialize(cborValue[3]),
    );
  }

  factory Redeemer.deserializeConway(CborValue redeemerKey, CborValue redeemerValue) {
    if (redeemerKey is! CborList) {
      throw RedeemerParseException("deserializeConway: redeemerKey is ${redeemerKey.runtimeType}");
    }
    if (redeemerValue is! CborList) {
      throw RedeemerParseException("deserializeConway: redeemerValue is ${redeemerKey.runtimeType}");
    }
    if (redeemerKey.length != 2) {
      throw RedeemerParseException("deserializeConway: redeemerKey length is ${redeemerKey.length}");
    }
    if (redeemerValue.length != 2) {
      throw RedeemerParseException("deserializeConway: redeemerValue length is ${redeemerValue.length}");
    }

    return Redeemer.conway(
      redeemerTag: RedeemerTag.fromInt((redeemerKey[0] as CborSmallInt).toInt()),
      index: (redeemerKey[1] as CborSmallInt).toInt(),
      plutusData: PlutusData.deserialize(redeemerValue[0]),
      exUnits: ExUnits.deserialize(redeemerValue[1]),
    );
  }

  CborValue serializePreConway({required bool forJson}) => CborList.of([
    forJson ? CborString(redeemerTag.name) : CborSmallInt(redeemerTag.intValue),
    CborSmallInt(index),
    plutusData.serialize(forJson: forJson),
    exUnits.serialize(forJson: forJson),
  ]);

  MapEntry<CborValue, CborValue> serializeConway({required bool forJson}) => MapEntry(
    CborList.of([
      forJson ? CborString(redeemerTag.name) : CborSmallInt(redeemerTag.intValue),
      CborSmallInt(index),
    ]),
    CborList.of([
      plutusData.serialize(forJson: forJson),
      exUnits.serialize(forJson: forJson),
    ]),
  );
}

enum RedeemerTag {
  spend(0),
  mint(1),
  cert(2),
  reward(3),
  voting(4),
  proposing(5);

  final int intValue;
  const RedeemerTag(this.intValue);

  factory RedeemerTag.fromInt(int value) => RedeemerTag.values.singleWhere((element) => element.intValue == value);
}
