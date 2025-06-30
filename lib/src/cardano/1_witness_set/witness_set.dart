import "package:bip32_ed25519/bip32_ed25519.dart";
import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../utils/cbor.dart";
import "../../utils/iterable_extensions.dart";
import "../../utils/sugar.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";
import "../transaction.dart";
import "0_v_key/witness_v_key.dart";
import "1_native_scripts/native_script.dart";
import "2_bootstrap/witness_bootstrap.dart";
import "3_plutus_script_v1/plutus_script_v1.dart";
import "4_plutus_data/plutus_data.dart";
import "5_redeemer/redeemer.dart";
import "6_plutus_script_v2/plutus_script_v2.dart";
import "7_plutus_script_v3/plutus_script_v3.dart";

part "witness_set.freezed.dart";

@freezed
sealed class ListWithCborType<T> with _$ListWithCborType<T> {
  const factory ListWithCborType(
    List<T> items,
    CborLengthType cborLengthType,
    List<int>? tags,
  ) = _ListWithCborType;
  const ListWithCborType._();

  ListWithCborType<T>? nullIfEmpty() => items.isEmpty ? null : this;
}

/// this can be transaction signatures or a full blown smart contract
@freezed
sealed class WitnessSet with _$WitnessSet implements CborEncodable {
  const factory WitnessSet({
    ListWithCborType<WitnessVKey>? ivkeyWitnesses,
    ListWithCborType<NativeScript>? inativeScripts,
    ListWithCborType<WitnessBootstrap>? ibootstrap,
    ListWithCborType<PlutusScriptV1>? iplutusScriptV1,
    ListWithCborType<PlutusData>? iplutusData,
    ListWithCborType<Redeemer>? iredeemer,
    ListWithCborType<PlutusScriptV2>? iplutusScriptV2,
    ListWithCborType<PlutusScriptV3>? iplutusScriptV3,
    List<int>? iCborTags,
  }) = _WitnessSet;
  const WitnessSet._();

  List<WitnessVKey> get vkeyWitnesses => ivkeyWitnesses?.items ?? [];

  List<NativeScript> get nativeScripts => inativeScripts?.items ?? [];

  List<WitnessBootstrap> get bootstrap => ibootstrap?.items ?? [];

  List<PlutusScriptV1> get plutusScriptV1 => iplutusScriptV1?.items ?? [];

  List<PlutusData> get plutusData => iplutusData?.items ?? [];

  List<Redeemer> get redeemer => iredeemer?.items ?? [];

  List<PlutusScriptV2> get plutusScriptV2 => iplutusScriptV2?.items ?? [];

  List<PlutusScriptV3> get plutusScriptV3 => iplutusScriptV3?.items ?? [];

  WitnessSet operator +(WitnessSet other) {
    return WitnessSet(
      ivkeyWitnesses: ListWithCborType(
        vkeyWitnesses + other.vkeyWitnesses,
        ivkeyWitnesses?.cborLengthType ?? other.ivkeyWitnesses?.cborLengthType ?? CborLengthType.definite,
        mergeCborTags(ivkeyWitnesses?.tags, other.ivkeyWitnesses?.tags),
      ).nullIfEmpty(),
      ibootstrap: ListWithCborType(
        bootstrap + other.bootstrap,
        ibootstrap?.cborLengthType ?? other.ibootstrap?.cborLengthType ?? CborLengthType.definite,
        mergeCborTags(ibootstrap?.tags, other.ibootstrap?.tags),
      ).nullIfEmpty(),
      inativeScripts: ListWithCborType(
        nativeScripts + other.nativeScripts,
        inativeScripts?.cborLengthType ?? other.inativeScripts?.cborLengthType ?? CborLengthType.definite,
        mergeCborTags(inativeScripts?.tags, other.inativeScripts?.tags),
      ).nullIfEmpty(),
      iplutusData: ListWithCborType(
        plutusData + other.plutusData,
        iplutusData?.cborLengthType ?? other.iplutusData?.cborLengthType ?? CborLengthType.definite,
        mergeCborTags(iplutusData?.tags, other.iplutusData?.tags),
      ).nullIfEmpty(),
      iredeemer: ListWithCborType(
        redeemer + other.redeemer,
        iredeemer?.cborLengthType ?? other.iredeemer?.cborLengthType ?? CborLengthType.definite,
        mergeCborTags(iredeemer?.tags, other.iredeemer?.tags),
      ).nullIfEmpty(),
      iplutusScriptV1: ListWithCborType(
        plutusScriptV1 + other.plutusScriptV1,
        iplutusScriptV1?.cborLengthType ?? other.iplutusScriptV1?.cborLengthType ?? CborLengthType.definite,
        mergeCborTags(iplutusScriptV1?.tags, other.iplutusScriptV1?.tags),
      ).nullIfEmpty(),
      iplutusScriptV2: ListWithCborType(
        plutusScriptV2 + other.plutusScriptV2,
        iplutusScriptV2?.cborLengthType ?? other.iplutusScriptV2?.cborLengthType ?? CborLengthType.definite,
        mergeCborTags(iplutusScriptV2?.tags, other.iplutusScriptV2?.tags),
      ).nullIfEmpty(),
      iplutusScriptV3: ListWithCborType(
        plutusScriptV3 + other.plutusScriptV3,
        iplutusScriptV3?.cborLengthType ?? other.iplutusScriptV3?.cborLengthType ?? CborLengthType.definite,
        mergeCborTags(iplutusScriptV3?.tags, other.iplutusScriptV3?.tags),
      ).nullIfEmpty(),
      iCborTags: mergeCborTags(iCborTags, other.iCborTags),
    );
  }

  factory WitnessSet.deserializeFromHex({required String hexCbor}) => WitnessSet.deserializeBytes(hexCbor.hexDecode());

  factory WitnessSet.deserializeBytes(Uint8List bytes) {
    final cborValue = cbor.decode(bytes);
    if (cborValue is! CborMap) {
      throw CborMalformedException("cborValue is ${cborValue.runtimeType}");
    }

    return WitnessSet.deserialize(cMap: cborValue);
  }

  factory WitnessSet.deserialize({required CborMap cMap}) {
    final ListWithCborType<WitnessVKey>? vkeyWitnesses = cMap.getList(0)?.let(
          (p0) => ListWithCborType(
            p0.map((item) => WitnessVKey.deserialize(cList: item as CborList)).asUnmodifiableList,
            p0.type,
            p0.tags,
          ),
        );

    final ListWithCborType<NativeScript>? nativeScripts = cMap.getList(1)?.let(
          (p0) => ListWithCborType(
            p0.map((item) => NativeScript.deserialize(cList: item as CborList)).asUnmodifiableList,
            p0.type,
            p0.tags,
          ),
        );

    final ListWithCborType<WitnessBootstrap>? bootstrap = cMap.getList(2)?.let(
          (p0) => ListWithCborType(
            p0.map(WitnessBootstrap.deserialize).asUnmodifiableList,
            p0.type,
            p0.tags,
          ),
        );

    final ListWithCborType<PlutusScriptV1>? plutusScriptV1 = cMap.getList(3)?.let(
          (p0) => ListWithCborType(
            p0.map(PlutusScriptV1.deserialize).asUnmodifiableList,
            p0.type,
            p0.tags,
          ),
        );

    final ListWithCborType<PlutusData>? plutusData = cMap.getList(4)?.let(
          (p0) => ListWithCborType(
            p0.map(PlutusData.deserialize).asUnmodifiableList,
            p0.type,
            p0.tags,
          ),
        );

    final cRedeemer = cMap[const CborSmallInt(5)];

    final ListWithCborType<Redeemer>? redeemer = switch (cRedeemer) {
      CborList() => ListWithCborType(
          cRedeemer.map(Redeemer.deserializePreConway).asUnmodifiableList,
          cRedeemer.type,
          cRedeemer.tags,
        ),
      // Conway ERA is CborMap
      CborMap() => ListWithCborType(
          cRedeemer.entries.map((entry) => Redeemer.deserializeConway(entry.key, entry.value)).asUnmodifiableList,
          cRedeemer.type,
          cRedeemer.tags,
        ),
      null => null,
      _ => throw CborMalformedException("cborValue is ${cRedeemer.runtimeType}"),
    };

    final ListWithCborType<PlutusScriptV2>? plutusScriptV2 = cMap.getList(6)?.let(
          (p0) => ListWithCborType(
            p0.map(PlutusScriptV2.deserialize).asUnmodifiableList,
            p0.type,
            p0.tags,
          ),
        );

    final ListWithCborType<PlutusScriptV3>? plutusScriptV3 = cMap.getList(7)?.let(
          (p0) => ListWithCborType(
            p0.map(PlutusScriptV3.deserialize).asUnmodifiableList,
            p0.type,
            p0.tags,
          ),
        );

    final result = WitnessSet(
      ivkeyWitnesses: vkeyWitnesses,
      inativeScripts: nativeScripts,
      ibootstrap: bootstrap,
      iplutusScriptV1: plutusScriptV1,
      iplutusData: plutusData,
      iredeemer: redeemer,
      iplutusScriptV2: plutusScriptV2,
      iplutusScriptV3: plutusScriptV3,
      iCborTags: cMap.tags,
    );

    conditionalAssert(
      () {
        final encoded = result.serialize(forJson: false);
        final encodedKeys = encoded.keys.toList(growable: false);

        final inputKeys = cMap.keys.toList(growable: false);
        if (encodedKeys.length != inputKeys.length) {
          throw Exception("Keys length mismatch: ${encodedKeys.length} != ${inputKeys.length}");
        }

        for (var i = 0; i < encodedKeys.length; i++) {
          final encodedKey = encodedKeys[i];
          final inputKey = inputKeys[i];
          if (encodedKey != inputKey) {
            throw Exception("Key mismatch: $encodedKey != $inputKey");
          }
          final encodedValue = encoded[encodedKey];
          final inputValue = cMap[inputKey];
          if (encodedValue?.hexEncode() != inputValue?.hexEncode()) {
            throw Exception(
                "Value mismatch for key $encodedKey: ${encodedValue?.hexEncode()} != ${inputValue?.hexEncode()}");
          }
        }

        return true;
      },
      "witness_set: all",
    );

    conditionalAssert(() => result.serializeHexString() == cMap.hexEncode());

    return result;
  }

// transaction_witness_set = {? 0 : nonempty_set<vkeywitness>
//                           , ? 1 : nonempty_set<native_script>
//                           , ? 2 : nonempty_set<bootstrap_witness>
//                           , ? 3 : nonempty_set<plutus_v1_script>
//                           , ? 4 : nonempty_set<plutus_data>
//                           , ? 5 : redeemers
//                           , ? 6 : nonempty_set<plutus_v2_script>
//                           , ? 7 : nonempty_set<plutus_v3_script>}
  @override
  CborMap serialize({required bool forJson}) {
    final witnessesEntry = ivkeyWitnesses?.let(
      (p0) => MapEntry(
        forJson ? CborString("vkeyWitnesses") : const CborSmallInt(0),
        CborList.of(
          p0.items.map((e) => e.serialize(forJson: forJson)),
          type: p0.cborLengthType,
          tags: p0.tags ?? [],
        ),
      ),
    );

    final scriptsEntry = inativeScripts?.let(
      (p0) => MapEntry(
        forJson ? CborString("nativeScripts") : const CborSmallInt(1),
        CborList.of(
          p0.items.map((e) => e.serialize(forJson: forJson)),
          type: p0.cborLengthType,
          tags: p0.tags ?? [],
        ),
      ),
    );

    final bootstrapEntry = ibootstrap?.let(
      (p0) => MapEntry(
        forJson ? CborString("bootstrap") : const CborSmallInt(2),
        CborList.of(
          p0.items.map((e) => e.serialize(forJson: forJson)),
          type: p0.cborLengthType,
          tags: p0.tags ?? [],
        ),
      ),
    );

    final plutusV1ScriptEntry = iplutusScriptV1?.let(
      (p0) => MapEntry(
        forJson ? CborString("plutusScriptV1") : const CborSmallInt(3),
        CborList.of(
          p0.items.map((e) => e.serialize(forJson: forJson)),
          type: p0.cborLengthType,
          tags: p0.tags ?? [],
        ),
      ),
    );

    final plutusDataEntry = iplutusData?.let(
      (p0) => MapEntry(
        forJson ? CborString("plutusData") : const CborSmallInt(4),
        CborList.of(
          p0.items.map((e) => e.serialize(forJson: forJson)),
          type: p0.cborLengthType,
          tags: p0.tags ?? [],
        ),
      ),
    );

    final redeemerEntry = iredeemer?.let(
      (p0) {
        final isConway = switch (p0.items.firstOrNull) {
          null => true,
          Redeemer_Conway() => true,
          Redeemer_PreConway() => false,
        };
        final redeemerEntriesCbor = switch (isConway) {
          true => CborMap.fromEntries(
              p0.items.map((e) => e.serializeConway(forJson: forJson)),
              type: p0.cborLengthType,
              tags: p0.tags ?? [],
            ),
          false => CborList.of(
              p0.items.map((e) => e.serializePreConway(forJson: forJson)),
              type: p0.cborLengthType,
              tags: p0.tags ?? [],
            ),
        };
        return MapEntry(
          forJson ? CborString("redeemer") : const CborSmallInt(5),
          redeemerEntriesCbor,
        );
      },
    );

    final plutusScriptV2Entry = iplutusScriptV2?.let(
      (p0) => MapEntry(
        forJson ? CborString("plutusScriptV2") : const CborSmallInt(6),
        CborList.of(
          p0.items.map((e) => e.serialize(forJson: forJson)),
          type: p0.cborLengthType,
          tags: p0.tags ?? [],
        ),
      ),
    );

    final plutusScriptV3Entry = iplutusScriptV3?.let(
      (p0) => MapEntry(
        forJson ? CborString("plutusScriptV3") : const CborSmallInt(7),
        CborList.of(
          p0.items.map((e) => e.serialize(forJson: forJson)),
          type: p0.cborLengthType,
          tags: p0.tags ?? [],
        ),
      ),
    );

    return CborMap.fromEntries(
      [
        witnessesEntry,
        scriptsEntry,
        bootstrapEntry,
        plutusV1ScriptEntry,
        plutusDataEntry,
        redeemerEntry,
        plutusScriptV2Entry,
        plutusScriptV3Entry,
      ].nonNulls(), // remove empty entries for smaller CBOR size
      tags: iCborTags ?? [],
      type: CborLengthType.definite,
    );
  }
}

extension _CborMapExtensions on CborMap {
  CborList? getList(int keyIndex) => (this[CborSmallInt(keyIndex)]) as CborList?;
}
