// ignore_for_file: omit_local_variable_types

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../exceptions/parse_exceptions.dart";
import "../../utils/sugar.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";
import "../transaction.dart";
import "../util.dart";

part "asset.freezed.dart";

/// Can be a simple ADA amount using coin or a combination of ADA and Native Tokens and their amounts.
@Freezed(equal: false)
@immutable
sealed class Value with _$Value implements CborEncodable {
  const Value._();

  const factory Value.v0({required BigInt lovelace}) = Value_v0;

  const factory Value.v1({required BigInt lovelace, required List<MultiAsset> mA}) = Value_v1;

  List<MultiAsset> get multiAssets => switch (this) {
        Value_v0() => const [],
        Value_v1(mA: final mA) => mA,
      };

  //
  // [
  //  340000,
  //  {
  //    h'329728F73683FE04364631C27A7912538C116D802416CA1EAF2D7A96': {h'736174636F696E': 4000},
  //    h'6B8D07D69639E9413DD637A1A815A7323C69C86ABBAFB66DBFDB1AA7': {h'': 9000}
  //  }
  // ]
  //
  @override
  CborValue serialize({required bool forJson}) {
    final obj = this;
    return switch (obj) {
      Value_v0() => lovelace.serialize(forJson: forJson),
      Value_v1() => CborList.of(
          [
            lovelace.serialize(forJson: forJson),
            CborMap.fromEntries(obj.mA.map((multiAsset) => multiAsset.serialize(forJson: forJson))),
          ],
        ),
    };
  }

  factory Value.deserializeHex(String valueHex) {
    return Value.deserialize(cValue: cbor.decode(valueHex.hexDecode()));
  }

  factory Value.deserializeBytes(Uint8List bytes) {
    return Value.deserialize(cValue: cbor.decode(bytes));
  }

  /// Either a simple int value for lovelace only or a list[lovelace, list<assets>]
  factory Value.deserialize({required CborValue cValue}) {
    if (cValue is CborInt) {
      return Value.v0(lovelace: cValue.toBigInt());
    }
    if (cValue is! CborList) {
      throw CardanoValueParseException("cValue is ${cValue.runtimeType}");
    }
    if (cValue.length != 2) {
      throw CardanoValueParseException("cValue list has length != 2 : ${cValue.length}");
    }

    final List<MultiAsset> multiAssets =
        (cValue[1] as CborMap).entries.map((entry) => MultiAsset.deserialize(cMapEntry: entry)).toList();

    final result = Value.v1(
      lovelace: (cValue[0] as CborInt).toBigInt(),
      mA: multiAssets,
    );

    conditionalAssert(() => result.serializeHexString() == cValue.hexEncode());

    return result;
  }

  Value operator +(Value other) {
    final totalLovelace = lovelace + other.lovelace;
    final List<MultiAsset> totalMultiAssets = multiAssets.merge(other.multiAssets, Operation.add);

    return Value.v1(lovelace: totalLovelace, mA: totalMultiAssets);
  }

  Value operator -(Value other) {
    final totalLovelace = lovelace - other.lovelace;
    final List<MultiAsset> totalMultiAssets = multiAssets.merge(other.multiAssets, Operation.subtract);

    return Value.v1(lovelace: totalLovelace, mA: totalMultiAssets);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Value &&
            (identical(other.lovelace, lovelace) || other.lovelace == lovelace) &&
            const DeepCollectionEquality.unordered().equals(other.multiAssets, multiAssets));
  }

  @override
  int get hashCode => Object.hash(lovelace, const DeepCollectionEquality.unordered().hash(multiAssets));
}

/// Native Token multi-asset container.
@Freezed(equal: false)
@immutable
sealed class MultiAsset with _$MultiAsset {
  const factory MultiAsset({
    required String policyId, // hex encoded
    required List<Asset> assets,
  }) = _MultiAsset;
  const MultiAsset._();

  factory MultiAsset.deserialize({required MapEntry<CborValue, CborValue> cMapEntry}) {
    final policyId = (cMapEntry.key as CborBytes).bytes.toUint8List().hexEncode();

    final List<Asset> assets = [];
    (cMapEntry.value as CborMap).forEach(
      (key, value) => assets.add(
        Asset(
          hexName: (key as CborBytes).bytes.toUint8List().hexEncode(),
          value: (value as CborInt).toBigInt(),
        ),
      ),
    );

    return MultiAsset(policyId: policyId, assets: assets);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiAsset &&
            (identical(other.policyId, policyId) || other.policyId == policyId) &&
            const DeepCollectionEquality.unordered().equals(other.assets, assets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, policyId, const DeepCollectionEquality.unordered().hash(assets));

  //
  //    h'329728F73683FE04364631C27A7912538C116D802416CA1EAF2D7A96': {h'736174636F696E': 4000},
  //
  MapEntry<CborValue, CborValue> serialize({required bool forJson}) {
    final assetsMapEntries = assets.map(
      (asset) {
        final key = forJson
            ? CborString(asset.hexName.tryCatch(t: (data) => data.hexToUtf8(), c: (data) => data))
            : CborBytes(
                asset.hexName.hexDecode(),
              );
        final value = asset.value.serialize(forJson: forJson);

        return MapEntry(key, value);
      },
    );

    return MapEntry(
      forJson ? CborString(policyId) : CborBytes(policyId.hexDecode()),
      CborMap.fromEntries(assetsMapEntries),
    );
  }
}

extension MultiAssetIterableX on Iterable<MultiAsset> {
  CborMap serialize({required bool forJson}) => CborMap.fromEntries(map((e) => e.serialize(forJson: forJson)));
}

/// an single asset name and value under a MultiAsset policyId
@freezed
sealed class Asset with _$Asset {
  const factory Asset({
    required String hexName, // hex encoded
    required BigInt value,
  }) = _Asset;
  const Asset._();
}

enum Operation { add, subtract }

extension MultiAssetListOperations on List<MultiAsset> {
  List<MultiAsset> merge(final List<MultiAsset> other, final Operation op) {
    final thisMultiAssets = List.of(this);
    final otherMultiAssets = List.of(other);

    final List<MultiAsset> mergedMultiAssets = [];
    for (final thisMa in thisMultiAssets) {
      final otherMaIndex = otherMultiAssets.indexWhere((ma) => ma.policyId == thisMa.policyId);
      if (otherMaIndex == -1) {
        // policy doesn't exist in other
        mergedMultiAssets.add(thisMa);
      } else {
        final otherMa = otherMultiAssets.removeAt(otherMaIndex);

        final List<Asset> mergedPolicyAssets = thisMa.assets.merge(otherMa.assets, op);

        if (mergedPolicyAssets.isNotEmpty) {
          mergedMultiAssets.add(MultiAsset(policyId: thisMa.policyId, assets: mergedPolicyAssets));
        }
      }
    }

    // add whatever's left in otherMultiAssets after removing matching items
    if (op == Operation.add) {
      mergedMultiAssets.addAll(otherMultiAssets);
    } else {
      mergedMultiAssets.addAll(
        otherMultiAssets.map(
          (e) => e.copyWith(
            assets: e.assets //
                .map((e2) => e2.copyWith(value: BigInt.zero - e2.value))
                .toList(),
          ),
        ),
      );
    }

    return mergedMultiAssets;
  }
}

extension AssetListOperations on List<Asset> {
  List<Asset> merge(final List<Asset> other, final Operation op) {
    final thisPolicyAssets = List.of(this);
    final otherPolicyAssets = List.of(other);

    final List<Asset> mergedPolicyAssets = [];

    for (final thisAsset in thisPolicyAssets) {
      final otherAssetIndex = otherPolicyAssets.indexWhere((asset) => asset.hexName == thisAsset.hexName);
      if (otherAssetIndex == -1) {
        // asset doesn't exist in other
        mergedPolicyAssets.add(thisAsset);
      } else {
        final otherAsset = otherPolicyAssets.removeAt(otherAssetIndex);
        final mergedAmount = op == Operation.add //
            ? thisAsset.value + otherAsset.value
            : thisAsset.value - otherAsset.value;

        if (mergedAmount != BigInt.zero) {
          mergedPolicyAssets.add(Asset(hexName: thisAsset.hexName, value: mergedAmount));
        }
      }
    }

    // add whatever's left in otherPolicyAssets after removing matching items
    if (op == Operation.add) {
      mergedPolicyAssets.addAll(otherPolicyAssets);
    } else {
      mergedPolicyAssets.addAll(otherPolicyAssets.map((e) => e.copyWith(value: BigInt.zero - e.value)));
    }

    return mergedPolicyAssets;
  }
}
