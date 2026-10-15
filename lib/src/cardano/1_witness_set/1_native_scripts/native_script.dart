import "package:bip32_ed25519/api.dart";
import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../exceptions/parse_exceptions.dart";
import "../../../utils/transformations.dart";
import "../script.dart";

part "native_script.freezed.dart";

@freezed
sealed class NativeScript extends Script with _$NativeScript {
  const NativeScript._() : super();

  const factory NativeScript.pubKey({
    required Uint8List blob,
    @Default(CborLengthType.definite) CborLengthType lengthType,
  }) = NativeScript_PubKey;

  const factory NativeScript.all({
    required List<NativeScript> scripts,
    @Default(CborLengthType.definite) CborLengthType lengthType,
    @Default(CborLengthType.definite) CborLengthType scriptsLengthType,
  }) = NativeScript_All;

  const factory NativeScript.any({
    required List<NativeScript> scripts,
    @Default(CborLengthType.definite) CborLengthType lengthType,
    @Default(CborLengthType.definite) CborLengthType scriptsLengthType,
  }) = NativeScript_Any;

  const factory NativeScript.atLeast({
    required int required,
    required List<NativeScript> scripts,
    @Default(CborLengthType.definite) CborLengthType lengthType,
    @Default(CborLengthType.definite) CborLengthType scriptsLengthType,
  }) = NativeScript_AtLeast;

  const factory NativeScript.requireTimeAfter({
    required BigInt slot,
    @Default(CborLengthType.definite) CborLengthType lengthType,
  }) = NativeScript_RequireTimeAfter;

  const factory NativeScript.requireTimeBefore({
    required BigInt slot,
    @Default(CborLengthType.definite) CborLengthType lengthType,
  }) = NativeScript_RequireTimeBefore;

  int get selector => switch (this) {
    NativeScript_PubKey() => 0,
    NativeScript_All() => 1,
    NativeScript_Any() => 2,
    NativeScript_AtLeast() => 3,
    NativeScript_RequireTimeAfter() => 4,
    NativeScript_RequireTimeBefore() => 5,
  };

  @override
  CborList serialize({required bool forJson}) {
    final obj = this;
    CborValue encoder(Uint8List data) => forJson ? CborString(getScriptHash().hexEncode()) : CborBytes(data);

    return CborList.of(
      [
        // ignore: no_runtimetype_tostring
        forJson ? CborString(runtimeType.toString()) : CborSmallInt(selector),
        ...switch (obj) {
          NativeScript_PubKey(blob: final blob) => [encoder(blob)],
          NativeScript_All(:final scripts, :final scriptsLengthType) ||
          NativeScript_Any(:final scripts, :final scriptsLengthType) => [
            CborList.of(scripts.map((e) => e.serialize(forJson: forJson)), type: scriptsLengthType),
          ],
          NativeScript_AtLeast(:final scripts, :final required, :final scriptsLengthType) => [
            CborSmallInt(required),
            CborList.of(scripts.map((e) => e.serialize(forJson: forJson)), type: scriptsLengthType),
          ],
          NativeScript_RequireTimeAfter(slot: final slot) => [CborInt(slot)],
          NativeScript_RequireTimeBefore(slot: final slot) => [CborInt(slot)],
        },
      ],
      type: lengthType,
    );
  }

  factory NativeScript.deserialize({required CborList cList}) {
    final selector = (cList[0] as CborSmallInt).value;

    final lengthType = cList.type;
    List<NativeScript> scripts(int index) =>
        (cList[index] as CborList) //
            .map((e) => NativeScript.deserialize(cList: e as CborList))
            .toList(growable: false);
    CborLengthType scriptsLengthType(int index) => (cList[index] as CborList).type;

    return switch (selector) {
      0 => NativeScript.pubKey(blob: (cList[1] as CborBytes).bytes.toUint8List(), lengthType: lengthType),
      1 => NativeScript.all(scripts: scripts(1), lengthType: lengthType, scriptsLengthType: scriptsLengthType(1)),
      2 => NativeScript.any(scripts: scripts(1), lengthType: lengthType, scriptsLengthType: scriptsLengthType(1)),
      3 => NativeScript.atLeast(
        required: (cList[1] as CborSmallInt).value,
        scripts: scripts(2),
        lengthType: lengthType,
        scriptsLengthType: scriptsLengthType(2),
      ),
      4 => NativeScript.requireTimeAfter(slot: (cList[1] as CborInt).toBigInt(), lengthType: lengthType),
      5 => NativeScript.requireTimeBefore(slot: (cList[1] as CborInt).toBigInt(), lengthType: lengthType),
      _ => throw NativeScriptParseException("Unknown NativeScript selector: $selector"),
    };
  }
}
