// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol_param_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProtocolParamUpdate {
  BigInt? get minFeeA; // 0
  BigInt? get minFeeB; // 1
  int? get maxBlockSize; // 2
  int? get maxTxSize; // 3
  int? get maxBlockHeaderSize; // 4
  BigInt? get keyDeposit; // 5
  BigInt? get poolDeposit; // 6
  int? get maxEpoch; // 7
  int? get nOpt; // 8
  RationalNumber? get poolPledgeInfluence; // 9
  RationalNumber? get expansionRate; // 10
  RationalNumber? get treasuryGrowth; // 11
  @Deprecated("")
  RationalNumber? get decentralisationConstant; // 12
  @Deprecated("Removed in Babbage era")
  Nonce? get extraEntropy; // 13
  ProtocolVersion? get protocolVersion; // 14
  @Deprecated("")
  BigInt? get minUtxo; // 15
  BigInt? get minPoolCost; // 16
  BigInt? get adaPerUtxoByte; // 17
// Alonzo changes
  CborValue? get costmdls; // 18
  CborValue? get executionCosts; // 19
  CborValue? get maxTxExUnits; // 20
  CborValue? get maxBlockExUnits; // 21
  BigInt? get maxValSize; // 22
  int? get collateralPercentage; // 23
  int? get maxCollateralInputs;

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProtocolParamUpdateCopyWith<ProtocolParamUpdate> get copyWith =>
      _$ProtocolParamUpdateCopyWithImpl<ProtocolParamUpdate>(
          this as ProtocolParamUpdate, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProtocolParamUpdate &&
            (identical(other.minFeeA, minFeeA) || other.minFeeA == minFeeA) &&
            (identical(other.minFeeB, minFeeB) || other.minFeeB == minFeeB) &&
            (identical(other.maxBlockSize, maxBlockSize) ||
                other.maxBlockSize == maxBlockSize) &&
            (identical(other.maxTxSize, maxTxSize) ||
                other.maxTxSize == maxTxSize) &&
            (identical(other.maxBlockHeaderSize, maxBlockHeaderSize) ||
                other.maxBlockHeaderSize == maxBlockHeaderSize) &&
            (identical(other.keyDeposit, keyDeposit) ||
                other.keyDeposit == keyDeposit) &&
            (identical(other.poolDeposit, poolDeposit) ||
                other.poolDeposit == poolDeposit) &&
            (identical(other.maxEpoch, maxEpoch) ||
                other.maxEpoch == maxEpoch) &&
            (identical(other.nOpt, nOpt) || other.nOpt == nOpt) &&
            (identical(other.poolPledgeInfluence, poolPledgeInfluence) ||
                other.poolPledgeInfluence == poolPledgeInfluence) &&
            (identical(other.expansionRate, expansionRate) ||
                other.expansionRate == expansionRate) &&
            (identical(other.treasuryGrowth, treasuryGrowth) ||
                other.treasuryGrowth == treasuryGrowth) &&
            (identical(
                    other.decentralisationConstant, decentralisationConstant) ||
                other.decentralisationConstant == decentralisationConstant) &&
            (identical(other.extraEntropy, extraEntropy) ||
                other.extraEntropy == extraEntropy) &&
            (identical(other.protocolVersion, protocolVersion) ||
                other.protocolVersion == protocolVersion) &&
            (identical(other.minUtxo, minUtxo) || other.minUtxo == minUtxo) &&
            (identical(other.minPoolCost, minPoolCost) ||
                other.minPoolCost == minPoolCost) &&
            (identical(other.adaPerUtxoByte, adaPerUtxoByte) ||
                other.adaPerUtxoByte == adaPerUtxoByte) &&
            (identical(other.costmdls, costmdls) ||
                other.costmdls == costmdls) &&
            (identical(other.executionCosts, executionCosts) ||
                other.executionCosts == executionCosts) &&
            (identical(other.maxTxExUnits, maxTxExUnits) ||
                other.maxTxExUnits == maxTxExUnits) &&
            (identical(other.maxBlockExUnits, maxBlockExUnits) ||
                other.maxBlockExUnits == maxBlockExUnits) &&
            (identical(other.maxValSize, maxValSize) ||
                other.maxValSize == maxValSize) &&
            (identical(other.collateralPercentage, collateralPercentage) ||
                other.collateralPercentage == collateralPercentage) &&
            (identical(other.maxCollateralInputs, maxCollateralInputs) ||
                other.maxCollateralInputs == maxCollateralInputs));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        minFeeA,
        minFeeB,
        maxBlockSize,
        maxTxSize,
        maxBlockHeaderSize,
        keyDeposit,
        poolDeposit,
        maxEpoch,
        nOpt,
        poolPledgeInfluence,
        expansionRate,
        treasuryGrowth,
        decentralisationConstant,
        extraEntropy,
        protocolVersion,
        minUtxo,
        minPoolCost,
        adaPerUtxoByte,
        costmdls,
        executionCosts,
        maxTxExUnits,
        maxBlockExUnits,
        maxValSize,
        collateralPercentage,
        maxCollateralInputs
      ]);

  @override
  String toString() {
    return 'ProtocolParamUpdate(minFeeA: $minFeeA, minFeeB: $minFeeB, maxBlockSize: $maxBlockSize, maxTxSize: $maxTxSize, maxBlockHeaderSize: $maxBlockHeaderSize, keyDeposit: $keyDeposit, poolDeposit: $poolDeposit, maxEpoch: $maxEpoch, nOpt: $nOpt, poolPledgeInfluence: $poolPledgeInfluence, expansionRate: $expansionRate, treasuryGrowth: $treasuryGrowth, decentralisationConstant: $decentralisationConstant, extraEntropy: $extraEntropy, protocolVersion: $protocolVersion, minUtxo: $minUtxo, minPoolCost: $minPoolCost, adaPerUtxoByte: $adaPerUtxoByte, costmdls: $costmdls, executionCosts: $executionCosts, maxTxExUnits: $maxTxExUnits, maxBlockExUnits: $maxBlockExUnits, maxValSize: $maxValSize, collateralPercentage: $collateralPercentage, maxCollateralInputs: $maxCollateralInputs)';
  }
}

/// @nodoc
abstract mixin class $ProtocolParamUpdateCopyWith<$Res> {
  factory $ProtocolParamUpdateCopyWith(
          ProtocolParamUpdate value, $Res Function(ProtocolParamUpdate) _then) =
      _$ProtocolParamUpdateCopyWithImpl;
  @useResult
  $Res call(
      {BigInt? minFeeA,
      BigInt? minFeeB,
      int? maxBlockSize,
      int? maxTxSize,
      int? maxBlockHeaderSize,
      BigInt? keyDeposit,
      BigInt? poolDeposit,
      int? maxEpoch,
      int? nOpt,
      RationalNumber? poolPledgeInfluence,
      RationalNumber? expansionRate,
      RationalNumber? treasuryGrowth,
      @Deprecated("") RationalNumber? decentralisationConstant,
      @Deprecated("Removed in Babbage era") Nonce? extraEntropy,
      ProtocolVersion? protocolVersion,
      @Deprecated("") BigInt? minUtxo,
      BigInt? minPoolCost,
      BigInt? adaPerUtxoByte,
      CborValue? costmdls,
      CborValue? executionCosts,
      CborValue? maxTxExUnits,
      CborValue? maxBlockExUnits,
      BigInt? maxValSize,
      int? collateralPercentage,
      int? maxCollateralInputs});

  $RationalNumberCopyWith<$Res>? get poolPledgeInfluence;
  $RationalNumberCopyWith<$Res>? get expansionRate;
  $RationalNumberCopyWith<$Res>? get treasuryGrowth;
  $RationalNumberCopyWith<$Res>? get decentralisationConstant;
  $NonceCopyWith<$Res>? get extraEntropy;
  $ProtocolVersionCopyWith<$Res>? get protocolVersion;
}

/// @nodoc
class _$ProtocolParamUpdateCopyWithImpl<$Res>
    implements $ProtocolParamUpdateCopyWith<$Res> {
  _$ProtocolParamUpdateCopyWithImpl(this._self, this._then);

  final ProtocolParamUpdate _self;
  final $Res Function(ProtocolParamUpdate) _then;

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minFeeA = freezed,
    Object? minFeeB = freezed,
    Object? maxBlockSize = freezed,
    Object? maxTxSize = freezed,
    Object? maxBlockHeaderSize = freezed,
    Object? keyDeposit = freezed,
    Object? poolDeposit = freezed,
    Object? maxEpoch = freezed,
    Object? nOpt = freezed,
    Object? poolPledgeInfluence = freezed,
    Object? expansionRate = freezed,
    Object? treasuryGrowth = freezed,
    Object? decentralisationConstant = freezed,
    Object? extraEntropy = freezed,
    Object? protocolVersion = freezed,
    Object? minUtxo = freezed,
    Object? minPoolCost = freezed,
    Object? adaPerUtxoByte = freezed,
    Object? costmdls = freezed,
    Object? executionCosts = freezed,
    Object? maxTxExUnits = freezed,
    Object? maxBlockExUnits = freezed,
    Object? maxValSize = freezed,
    Object? collateralPercentage = freezed,
    Object? maxCollateralInputs = freezed,
  }) {
    return _then(_self.copyWith(
      minFeeA: freezed == minFeeA
          ? _self.minFeeA
          : minFeeA // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      minFeeB: freezed == minFeeB
          ? _self.minFeeB
          : minFeeB // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      maxBlockSize: freezed == maxBlockSize
          ? _self.maxBlockSize
          : maxBlockSize // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTxSize: freezed == maxTxSize
          ? _self.maxTxSize
          : maxTxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      maxBlockHeaderSize: freezed == maxBlockHeaderSize
          ? _self.maxBlockHeaderSize
          : maxBlockHeaderSize // ignore: cast_nullable_to_non_nullable
              as int?,
      keyDeposit: freezed == keyDeposit
          ? _self.keyDeposit
          : keyDeposit // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      poolDeposit: freezed == poolDeposit
          ? _self.poolDeposit
          : poolDeposit // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      maxEpoch: freezed == maxEpoch
          ? _self.maxEpoch
          : maxEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      nOpt: freezed == nOpt
          ? _self.nOpt
          : nOpt // ignore: cast_nullable_to_non_nullable
              as int?,
      poolPledgeInfluence: freezed == poolPledgeInfluence
          ? _self.poolPledgeInfluence
          : poolPledgeInfluence // ignore: cast_nullable_to_non_nullable
              as RationalNumber?,
      expansionRate: freezed == expansionRate
          ? _self.expansionRate
          : expansionRate // ignore: cast_nullable_to_non_nullable
              as RationalNumber?,
      treasuryGrowth: freezed == treasuryGrowth
          ? _self.treasuryGrowth
          : treasuryGrowth // ignore: cast_nullable_to_non_nullable
              as RationalNumber?,
      decentralisationConstant: freezed == decentralisationConstant
          ? _self.decentralisationConstant
          : decentralisationConstant // ignore: cast_nullable_to_non_nullable
              as RationalNumber?,
      extraEntropy: freezed == extraEntropy
          ? _self.extraEntropy
          : extraEntropy // ignore: cast_nullable_to_non_nullable
              as Nonce?,
      protocolVersion: freezed == protocolVersion
          ? _self.protocolVersion
          : protocolVersion // ignore: cast_nullable_to_non_nullable
              as ProtocolVersion?,
      minUtxo: freezed == minUtxo
          ? _self.minUtxo
          : minUtxo // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      minPoolCost: freezed == minPoolCost
          ? _self.minPoolCost
          : minPoolCost // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      adaPerUtxoByte: freezed == adaPerUtxoByte
          ? _self.adaPerUtxoByte
          : adaPerUtxoByte // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      costmdls: freezed == costmdls
          ? _self.costmdls
          : costmdls // ignore: cast_nullable_to_non_nullable
              as CborValue?,
      executionCosts: freezed == executionCosts
          ? _self.executionCosts
          : executionCosts // ignore: cast_nullable_to_non_nullable
              as CborValue?,
      maxTxExUnits: freezed == maxTxExUnits
          ? _self.maxTxExUnits
          : maxTxExUnits // ignore: cast_nullable_to_non_nullable
              as CborValue?,
      maxBlockExUnits: freezed == maxBlockExUnits
          ? _self.maxBlockExUnits
          : maxBlockExUnits // ignore: cast_nullable_to_non_nullable
              as CborValue?,
      maxValSize: freezed == maxValSize
          ? _self.maxValSize
          : maxValSize // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      collateralPercentage: freezed == collateralPercentage
          ? _self.collateralPercentage
          : collateralPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCollateralInputs: freezed == maxCollateralInputs
          ? _self.maxCollateralInputs
          : maxCollateralInputs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res>? get poolPledgeInfluence {
    if (_self.poolPledgeInfluence == null) {
      return null;
    }

    return $RationalNumberCopyWith<$Res>(_self.poolPledgeInfluence!, (value) {
      return _then(_self.copyWith(poolPledgeInfluence: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res>? get expansionRate {
    if (_self.expansionRate == null) {
      return null;
    }

    return $RationalNumberCopyWith<$Res>(_self.expansionRate!, (value) {
      return _then(_self.copyWith(expansionRate: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res>? get treasuryGrowth {
    if (_self.treasuryGrowth == null) {
      return null;
    }

    return $RationalNumberCopyWith<$Res>(_self.treasuryGrowth!, (value) {
      return _then(_self.copyWith(treasuryGrowth: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res>? get decentralisationConstant {
    if (_self.decentralisationConstant == null) {
      return null;
    }

    return $RationalNumberCopyWith<$Res>(_self.decentralisationConstant!,
        (value) {
      return _then(_self.copyWith(decentralisationConstant: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NonceCopyWith<$Res>? get extraEntropy {
    if (_self.extraEntropy == null) {
      return null;
    }

    return $NonceCopyWith<$Res>(_self.extraEntropy!, (value) {
      return _then(_self.copyWith(extraEntropy: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProtocolVersionCopyWith<$Res>? get protocolVersion {
    if (_self.protocolVersion == null) {
      return null;
    }

    return $ProtocolVersionCopyWith<$Res>(_self.protocolVersion!, (value) {
      return _then(_self.copyWith(protocolVersion: value));
    });
  }
}

/// @nodoc

class _ProtocolParamUpdate extends ProtocolParamUpdate {
  const _ProtocolParamUpdate(
      {required this.minFeeA,
      required this.minFeeB,
      required this.maxBlockSize,
      required this.maxTxSize,
      required this.maxBlockHeaderSize,
      required this.keyDeposit,
      required this.poolDeposit,
      required this.maxEpoch,
      required this.nOpt,
      required this.poolPledgeInfluence,
      required this.expansionRate,
      required this.treasuryGrowth,
      @Deprecated("") required this.decentralisationConstant,
      @Deprecated("Removed in Babbage era") required this.extraEntropy,
      required this.protocolVersion,
      @Deprecated("") required this.minUtxo,
      required this.minPoolCost,
      required this.adaPerUtxoByte,
      required this.costmdls,
      required this.executionCosts,
      required this.maxTxExUnits,
      required this.maxBlockExUnits,
      required this.maxValSize,
      required this.collateralPercentage,
      required this.maxCollateralInputs})
      : super._();

  @override
  final BigInt? minFeeA;
// 0
  @override
  final BigInt? minFeeB;
// 1
  @override
  final int? maxBlockSize;
// 2
  @override
  final int? maxTxSize;
// 3
  @override
  final int? maxBlockHeaderSize;
// 4
  @override
  final BigInt? keyDeposit;
// 5
  @override
  final BigInt? poolDeposit;
// 6
  @override
  final int? maxEpoch;
// 7
  @override
  final int? nOpt;
// 8
  @override
  final RationalNumber? poolPledgeInfluence;
// 9
  @override
  final RationalNumber? expansionRate;
// 10
  @override
  final RationalNumber? treasuryGrowth;
// 11
  @override
  @Deprecated("")
  final RationalNumber? decentralisationConstant;
// 12
  @override
  @Deprecated("Removed in Babbage era")
  final Nonce? extraEntropy;
// 13
  @override
  final ProtocolVersion? protocolVersion;
// 14
  @override
  @Deprecated("")
  final BigInt? minUtxo;
// 15
  @override
  final BigInt? minPoolCost;
// 16
  @override
  final BigInt? adaPerUtxoByte;
// 17
// Alonzo changes
  @override
  final CborValue? costmdls;
// 18
  @override
  final CborValue? executionCosts;
// 19
  @override
  final CborValue? maxTxExUnits;
// 20
  @override
  final CborValue? maxBlockExUnits;
// 21
  @override
  final BigInt? maxValSize;
// 22
  @override
  final int? collateralPercentage;
// 23
  @override
  final int? maxCollateralInputs;

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProtocolParamUpdateCopyWith<_ProtocolParamUpdate> get copyWith =>
      __$ProtocolParamUpdateCopyWithImpl<_ProtocolParamUpdate>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProtocolParamUpdate &&
            (identical(other.minFeeA, minFeeA) || other.minFeeA == minFeeA) &&
            (identical(other.minFeeB, minFeeB) || other.minFeeB == minFeeB) &&
            (identical(other.maxBlockSize, maxBlockSize) ||
                other.maxBlockSize == maxBlockSize) &&
            (identical(other.maxTxSize, maxTxSize) ||
                other.maxTxSize == maxTxSize) &&
            (identical(other.maxBlockHeaderSize, maxBlockHeaderSize) ||
                other.maxBlockHeaderSize == maxBlockHeaderSize) &&
            (identical(other.keyDeposit, keyDeposit) ||
                other.keyDeposit == keyDeposit) &&
            (identical(other.poolDeposit, poolDeposit) ||
                other.poolDeposit == poolDeposit) &&
            (identical(other.maxEpoch, maxEpoch) ||
                other.maxEpoch == maxEpoch) &&
            (identical(other.nOpt, nOpt) || other.nOpt == nOpt) &&
            (identical(other.poolPledgeInfluence, poolPledgeInfluence) ||
                other.poolPledgeInfluence == poolPledgeInfluence) &&
            (identical(other.expansionRate, expansionRate) ||
                other.expansionRate == expansionRate) &&
            (identical(other.treasuryGrowth, treasuryGrowth) ||
                other.treasuryGrowth == treasuryGrowth) &&
            (identical(
                    other.decentralisationConstant, decentralisationConstant) ||
                other.decentralisationConstant == decentralisationConstant) &&
            (identical(other.extraEntropy, extraEntropy) ||
                other.extraEntropy == extraEntropy) &&
            (identical(other.protocolVersion, protocolVersion) ||
                other.protocolVersion == protocolVersion) &&
            (identical(other.minUtxo, minUtxo) || other.minUtxo == minUtxo) &&
            (identical(other.minPoolCost, minPoolCost) ||
                other.minPoolCost == minPoolCost) &&
            (identical(other.adaPerUtxoByte, adaPerUtxoByte) ||
                other.adaPerUtxoByte == adaPerUtxoByte) &&
            (identical(other.costmdls, costmdls) ||
                other.costmdls == costmdls) &&
            (identical(other.executionCosts, executionCosts) ||
                other.executionCosts == executionCosts) &&
            (identical(other.maxTxExUnits, maxTxExUnits) ||
                other.maxTxExUnits == maxTxExUnits) &&
            (identical(other.maxBlockExUnits, maxBlockExUnits) ||
                other.maxBlockExUnits == maxBlockExUnits) &&
            (identical(other.maxValSize, maxValSize) ||
                other.maxValSize == maxValSize) &&
            (identical(other.collateralPercentage, collateralPercentage) ||
                other.collateralPercentage == collateralPercentage) &&
            (identical(other.maxCollateralInputs, maxCollateralInputs) ||
                other.maxCollateralInputs == maxCollateralInputs));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        minFeeA,
        minFeeB,
        maxBlockSize,
        maxTxSize,
        maxBlockHeaderSize,
        keyDeposit,
        poolDeposit,
        maxEpoch,
        nOpt,
        poolPledgeInfluence,
        expansionRate,
        treasuryGrowth,
        decentralisationConstant,
        extraEntropy,
        protocolVersion,
        minUtxo,
        minPoolCost,
        adaPerUtxoByte,
        costmdls,
        executionCosts,
        maxTxExUnits,
        maxBlockExUnits,
        maxValSize,
        collateralPercentage,
        maxCollateralInputs
      ]);

  @override
  String toString() {
    return 'ProtocolParamUpdate(minFeeA: $minFeeA, minFeeB: $minFeeB, maxBlockSize: $maxBlockSize, maxTxSize: $maxTxSize, maxBlockHeaderSize: $maxBlockHeaderSize, keyDeposit: $keyDeposit, poolDeposit: $poolDeposit, maxEpoch: $maxEpoch, nOpt: $nOpt, poolPledgeInfluence: $poolPledgeInfluence, expansionRate: $expansionRate, treasuryGrowth: $treasuryGrowth, decentralisationConstant: $decentralisationConstant, extraEntropy: $extraEntropy, protocolVersion: $protocolVersion, minUtxo: $minUtxo, minPoolCost: $minPoolCost, adaPerUtxoByte: $adaPerUtxoByte, costmdls: $costmdls, executionCosts: $executionCosts, maxTxExUnits: $maxTxExUnits, maxBlockExUnits: $maxBlockExUnits, maxValSize: $maxValSize, collateralPercentage: $collateralPercentage, maxCollateralInputs: $maxCollateralInputs)';
  }
}

/// @nodoc
abstract mixin class _$ProtocolParamUpdateCopyWith<$Res>
    implements $ProtocolParamUpdateCopyWith<$Res> {
  factory _$ProtocolParamUpdateCopyWith(_ProtocolParamUpdate value,
          $Res Function(_ProtocolParamUpdate) _then) =
      __$ProtocolParamUpdateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BigInt? minFeeA,
      BigInt? minFeeB,
      int? maxBlockSize,
      int? maxTxSize,
      int? maxBlockHeaderSize,
      BigInt? keyDeposit,
      BigInt? poolDeposit,
      int? maxEpoch,
      int? nOpt,
      RationalNumber? poolPledgeInfluence,
      RationalNumber? expansionRate,
      RationalNumber? treasuryGrowth,
      @Deprecated("") RationalNumber? decentralisationConstant,
      @Deprecated("Removed in Babbage era") Nonce? extraEntropy,
      ProtocolVersion? protocolVersion,
      @Deprecated("") BigInt? minUtxo,
      BigInt? minPoolCost,
      BigInt? adaPerUtxoByte,
      CborValue? costmdls,
      CborValue? executionCosts,
      CborValue? maxTxExUnits,
      CborValue? maxBlockExUnits,
      BigInt? maxValSize,
      int? collateralPercentage,
      int? maxCollateralInputs});

  @override
  $RationalNumberCopyWith<$Res>? get poolPledgeInfluence;
  @override
  $RationalNumberCopyWith<$Res>? get expansionRate;
  @override
  $RationalNumberCopyWith<$Res>? get treasuryGrowth;
  @override
  $RationalNumberCopyWith<$Res>? get decentralisationConstant;
  @override
  $NonceCopyWith<$Res>? get extraEntropy;
  @override
  $ProtocolVersionCopyWith<$Res>? get protocolVersion;
}

/// @nodoc
class __$ProtocolParamUpdateCopyWithImpl<$Res>
    implements _$ProtocolParamUpdateCopyWith<$Res> {
  __$ProtocolParamUpdateCopyWithImpl(this._self, this._then);

  final _ProtocolParamUpdate _self;
  final $Res Function(_ProtocolParamUpdate) _then;

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? minFeeA = freezed,
    Object? minFeeB = freezed,
    Object? maxBlockSize = freezed,
    Object? maxTxSize = freezed,
    Object? maxBlockHeaderSize = freezed,
    Object? keyDeposit = freezed,
    Object? poolDeposit = freezed,
    Object? maxEpoch = freezed,
    Object? nOpt = freezed,
    Object? poolPledgeInfluence = freezed,
    Object? expansionRate = freezed,
    Object? treasuryGrowth = freezed,
    Object? decentralisationConstant = freezed,
    Object? extraEntropy = freezed,
    Object? protocolVersion = freezed,
    Object? minUtxo = freezed,
    Object? minPoolCost = freezed,
    Object? adaPerUtxoByte = freezed,
    Object? costmdls = freezed,
    Object? executionCosts = freezed,
    Object? maxTxExUnits = freezed,
    Object? maxBlockExUnits = freezed,
    Object? maxValSize = freezed,
    Object? collateralPercentage = freezed,
    Object? maxCollateralInputs = freezed,
  }) {
    return _then(_ProtocolParamUpdate(
      minFeeA: freezed == minFeeA
          ? _self.minFeeA
          : minFeeA // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      minFeeB: freezed == minFeeB
          ? _self.minFeeB
          : minFeeB // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      maxBlockSize: freezed == maxBlockSize
          ? _self.maxBlockSize
          : maxBlockSize // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTxSize: freezed == maxTxSize
          ? _self.maxTxSize
          : maxTxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      maxBlockHeaderSize: freezed == maxBlockHeaderSize
          ? _self.maxBlockHeaderSize
          : maxBlockHeaderSize // ignore: cast_nullable_to_non_nullable
              as int?,
      keyDeposit: freezed == keyDeposit
          ? _self.keyDeposit
          : keyDeposit // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      poolDeposit: freezed == poolDeposit
          ? _self.poolDeposit
          : poolDeposit // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      maxEpoch: freezed == maxEpoch
          ? _self.maxEpoch
          : maxEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      nOpt: freezed == nOpt
          ? _self.nOpt
          : nOpt // ignore: cast_nullable_to_non_nullable
              as int?,
      poolPledgeInfluence: freezed == poolPledgeInfluence
          ? _self.poolPledgeInfluence
          : poolPledgeInfluence // ignore: cast_nullable_to_non_nullable
              as RationalNumber?,
      expansionRate: freezed == expansionRate
          ? _self.expansionRate
          : expansionRate // ignore: cast_nullable_to_non_nullable
              as RationalNumber?,
      treasuryGrowth: freezed == treasuryGrowth
          ? _self.treasuryGrowth
          : treasuryGrowth // ignore: cast_nullable_to_non_nullable
              as RationalNumber?,
      decentralisationConstant: freezed == decentralisationConstant
          ? _self.decentralisationConstant
          : decentralisationConstant // ignore: cast_nullable_to_non_nullable
              as RationalNumber?,
      extraEntropy: freezed == extraEntropy
          ? _self.extraEntropy
          : extraEntropy // ignore: cast_nullable_to_non_nullable
              as Nonce?,
      protocolVersion: freezed == protocolVersion
          ? _self.protocolVersion
          : protocolVersion // ignore: cast_nullable_to_non_nullable
              as ProtocolVersion?,
      minUtxo: freezed == minUtxo
          ? _self.minUtxo
          : minUtxo // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      minPoolCost: freezed == minPoolCost
          ? _self.minPoolCost
          : minPoolCost // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      adaPerUtxoByte: freezed == adaPerUtxoByte
          ? _self.adaPerUtxoByte
          : adaPerUtxoByte // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      costmdls: freezed == costmdls
          ? _self.costmdls
          : costmdls // ignore: cast_nullable_to_non_nullable
              as CborValue?,
      executionCosts: freezed == executionCosts
          ? _self.executionCosts
          : executionCosts // ignore: cast_nullable_to_non_nullable
              as CborValue?,
      maxTxExUnits: freezed == maxTxExUnits
          ? _self.maxTxExUnits
          : maxTxExUnits // ignore: cast_nullable_to_non_nullable
              as CborValue?,
      maxBlockExUnits: freezed == maxBlockExUnits
          ? _self.maxBlockExUnits
          : maxBlockExUnits // ignore: cast_nullable_to_non_nullable
              as CborValue?,
      maxValSize: freezed == maxValSize
          ? _self.maxValSize
          : maxValSize // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      collateralPercentage: freezed == collateralPercentage
          ? _self.collateralPercentage
          : collateralPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCollateralInputs: freezed == maxCollateralInputs
          ? _self.maxCollateralInputs
          : maxCollateralInputs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res>? get poolPledgeInfluence {
    if (_self.poolPledgeInfluence == null) {
      return null;
    }

    return $RationalNumberCopyWith<$Res>(_self.poolPledgeInfluence!, (value) {
      return _then(_self.copyWith(poolPledgeInfluence: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res>? get expansionRate {
    if (_self.expansionRate == null) {
      return null;
    }

    return $RationalNumberCopyWith<$Res>(_self.expansionRate!, (value) {
      return _then(_self.copyWith(expansionRate: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res>? get treasuryGrowth {
    if (_self.treasuryGrowth == null) {
      return null;
    }

    return $RationalNumberCopyWith<$Res>(_self.treasuryGrowth!, (value) {
      return _then(_self.copyWith(treasuryGrowth: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res>? get decentralisationConstant {
    if (_self.decentralisationConstant == null) {
      return null;
    }

    return $RationalNumberCopyWith<$Res>(_self.decentralisationConstant!,
        (value) {
      return _then(_self.copyWith(decentralisationConstant: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NonceCopyWith<$Res>? get extraEntropy {
    if (_self.extraEntropy == null) {
      return null;
    }

    return $NonceCopyWith<$Res>(_self.extraEntropy!, (value) {
      return _then(_self.copyWith(extraEntropy: value));
    });
  }

  /// Create a copy of ProtocolParamUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProtocolVersionCopyWith<$Res>? get protocolVersion {
    if (_self.protocolVersion == null) {
      return null;
    }

    return $ProtocolVersionCopyWith<$Res>(_self.protocolVersion!, (value) {
      return _then(_self.copyWith(protocolVersion: value));
    });
  }
}

// dart format on
