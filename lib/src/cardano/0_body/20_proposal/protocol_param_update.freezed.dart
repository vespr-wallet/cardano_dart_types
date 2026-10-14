// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 BigInt? get minFeeA;// 0
 BigInt? get minFeeB;// 1
 int? get maxBlockSize;// 2
 int? get maxTxSize;// 3
 int? get maxBlockHeaderSize;// 4
 BigInt? get keyDeposit;// 5
 BigInt? get poolDeposit;// 6
 int? get maxEpoch;// 7
 int? get nOpt;// 8
 RationalNumber? get poolPledgeInfluence;// 9
 RationalNumber? get expansionRate;// 10
 RationalNumber? get treasuryGrowth;// 11
@Deprecated("") RationalNumber? get decentralisationConstant;// 12
@Deprecated("Removed in Babbage era") Nonce? get extraEntropy;// 13
 ProtocolVersion? get protocolVersion;// 14
@Deprecated("") BigInt? get minUtxo;// 15
 BigInt? get minPoolCost;// 16
 BigInt? get adaPerUtxoByte;// 17
// Alonzo changes
 CborValue? get costmdls;// 18
 CborValue? get executionCosts;// 19
 CborValue? get maxTxExUnits;// 20
 CborValue? get maxBlockExUnits;// 21
 BigInt? get maxValSize;// 22
 int? get collateralPercentage;// 23
 int? get maxCollateralInputs;// 24
// Conway changes
 List<RationalNumber>? get poolVotingThresholds;// 25
 List<RationalNumber>? get drepVotingThresholds;// 26
 int? get minCommitteeSize;// 27
 int? get committeeTermLimit;// 28
 int? get govActionValidityPeriod;// 29
 BigInt? get govActionDeposit;// 30
 BigInt? get drepDeposit;// 31
 int? get drepInactivityPeriod;// 32
 RationalNumber? get minFeeRefScriptCostPerByte;// 33
// encoding details (not part of the protocol params)
 CborLengthType get lengthType;/// Map key order as parsed, or null when ascending (the standard order).
 List<int>? get nonStandardKeyOrder; CborLengthType get poolVotingThresholdsLengthType; CborLengthType get drepVotingThresholdsLengthType;
/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProtocolParamUpdateCopyWith<ProtocolParamUpdate> get copyWith => _$ProtocolParamUpdateCopyWithImpl<ProtocolParamUpdate>(this as ProtocolParamUpdate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProtocolParamUpdate&&(identical(other.minFeeA, minFeeA) || other.minFeeA == minFeeA)&&(identical(other.minFeeB, minFeeB) || other.minFeeB == minFeeB)&&(identical(other.maxBlockSize, maxBlockSize) || other.maxBlockSize == maxBlockSize)&&(identical(other.maxTxSize, maxTxSize) || other.maxTxSize == maxTxSize)&&(identical(other.maxBlockHeaderSize, maxBlockHeaderSize) || other.maxBlockHeaderSize == maxBlockHeaderSize)&&(identical(other.keyDeposit, keyDeposit) || other.keyDeposit == keyDeposit)&&(identical(other.poolDeposit, poolDeposit) || other.poolDeposit == poolDeposit)&&(identical(other.maxEpoch, maxEpoch) || other.maxEpoch == maxEpoch)&&(identical(other.nOpt, nOpt) || other.nOpt == nOpt)&&(identical(other.poolPledgeInfluence, poolPledgeInfluence) || other.poolPledgeInfluence == poolPledgeInfluence)&&(identical(other.expansionRate, expansionRate) || other.expansionRate == expansionRate)&&(identical(other.treasuryGrowth, treasuryGrowth) || other.treasuryGrowth == treasuryGrowth)&&(identical(other.decentralisationConstant, decentralisationConstant) || other.decentralisationConstant == decentralisationConstant)&&(identical(other.extraEntropy, extraEntropy) || other.extraEntropy == extraEntropy)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.minUtxo, minUtxo) || other.minUtxo == minUtxo)&&(identical(other.minPoolCost, minPoolCost) || other.minPoolCost == minPoolCost)&&(identical(other.adaPerUtxoByte, adaPerUtxoByte) || other.adaPerUtxoByte == adaPerUtxoByte)&&(identical(other.costmdls, costmdls) || other.costmdls == costmdls)&&(identical(other.executionCosts, executionCosts) || other.executionCosts == executionCosts)&&(identical(other.maxTxExUnits, maxTxExUnits) || other.maxTxExUnits == maxTxExUnits)&&(identical(other.maxBlockExUnits, maxBlockExUnits) || other.maxBlockExUnits == maxBlockExUnits)&&(identical(other.maxValSize, maxValSize) || other.maxValSize == maxValSize)&&(identical(other.collateralPercentage, collateralPercentage) || other.collateralPercentage == collateralPercentage)&&(identical(other.maxCollateralInputs, maxCollateralInputs) || other.maxCollateralInputs == maxCollateralInputs)&&const DeepCollectionEquality().equals(other.poolVotingThresholds, poolVotingThresholds)&&const DeepCollectionEquality().equals(other.drepVotingThresholds, drepVotingThresholds)&&(identical(other.minCommitteeSize, minCommitteeSize) || other.minCommitteeSize == minCommitteeSize)&&(identical(other.committeeTermLimit, committeeTermLimit) || other.committeeTermLimit == committeeTermLimit)&&(identical(other.govActionValidityPeriod, govActionValidityPeriod) || other.govActionValidityPeriod == govActionValidityPeriod)&&(identical(other.govActionDeposit, govActionDeposit) || other.govActionDeposit == govActionDeposit)&&(identical(other.drepDeposit, drepDeposit) || other.drepDeposit == drepDeposit)&&(identical(other.drepInactivityPeriod, drepInactivityPeriod) || other.drepInactivityPeriod == drepInactivityPeriod)&&(identical(other.minFeeRefScriptCostPerByte, minFeeRefScriptCostPerByte) || other.minFeeRefScriptCostPerByte == minFeeRefScriptCostPerByte)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other.nonStandardKeyOrder, nonStandardKeyOrder)&&(identical(other.poolVotingThresholdsLengthType, poolVotingThresholdsLengthType) || other.poolVotingThresholdsLengthType == poolVotingThresholdsLengthType)&&(identical(other.drepVotingThresholdsLengthType, drepVotingThresholdsLengthType) || other.drepVotingThresholdsLengthType == drepVotingThresholdsLengthType));
}


@override
int get hashCode => Object.hashAll([runtimeType,minFeeA,minFeeB,maxBlockSize,maxTxSize,maxBlockHeaderSize,keyDeposit,poolDeposit,maxEpoch,nOpt,poolPledgeInfluence,expansionRate,treasuryGrowth,decentralisationConstant,extraEntropy,protocolVersion,minUtxo,minPoolCost,adaPerUtxoByte,costmdls,executionCosts,maxTxExUnits,maxBlockExUnits,maxValSize,collateralPercentage,maxCollateralInputs,const DeepCollectionEquality().hash(poolVotingThresholds),const DeepCollectionEquality().hash(drepVotingThresholds),minCommitteeSize,committeeTermLimit,govActionValidityPeriod,govActionDeposit,drepDeposit,drepInactivityPeriod,minFeeRefScriptCostPerByte,lengthType,const DeepCollectionEquality().hash(nonStandardKeyOrder),poolVotingThresholdsLengthType,drepVotingThresholdsLengthType]);

@override
String toString() {
  return 'ProtocolParamUpdate(minFeeA: $minFeeA, minFeeB: $minFeeB, maxBlockSize: $maxBlockSize, maxTxSize: $maxTxSize, maxBlockHeaderSize: $maxBlockHeaderSize, keyDeposit: $keyDeposit, poolDeposit: $poolDeposit, maxEpoch: $maxEpoch, nOpt: $nOpt, poolPledgeInfluence: $poolPledgeInfluence, expansionRate: $expansionRate, treasuryGrowth: $treasuryGrowth, decentralisationConstant: $decentralisationConstant, extraEntropy: $extraEntropy, protocolVersion: $protocolVersion, minUtxo: $minUtxo, minPoolCost: $minPoolCost, adaPerUtxoByte: $adaPerUtxoByte, costmdls: $costmdls, executionCosts: $executionCosts, maxTxExUnits: $maxTxExUnits, maxBlockExUnits: $maxBlockExUnits, maxValSize: $maxValSize, collateralPercentage: $collateralPercentage, maxCollateralInputs: $maxCollateralInputs, poolVotingThresholds: $poolVotingThresholds, drepVotingThresholds: $drepVotingThresholds, minCommitteeSize: $minCommitteeSize, committeeTermLimit: $committeeTermLimit, govActionValidityPeriod: $govActionValidityPeriod, govActionDeposit: $govActionDeposit, drepDeposit: $drepDeposit, drepInactivityPeriod: $drepInactivityPeriod, minFeeRefScriptCostPerByte: $minFeeRefScriptCostPerByte, lengthType: $lengthType, nonStandardKeyOrder: $nonStandardKeyOrder, poolVotingThresholdsLengthType: $poolVotingThresholdsLengthType, drepVotingThresholdsLengthType: $drepVotingThresholdsLengthType)';
}


}

/// @nodoc
abstract mixin class $ProtocolParamUpdateCopyWith<$Res>  {
  factory $ProtocolParamUpdateCopyWith(ProtocolParamUpdate value, $Res Function(ProtocolParamUpdate) _then) = _$ProtocolParamUpdateCopyWithImpl;
@useResult
$Res call({
 BigInt? minFeeA, BigInt? minFeeB, int? maxBlockSize, int? maxTxSize, int? maxBlockHeaderSize, BigInt? keyDeposit, BigInt? poolDeposit, int? maxEpoch, int? nOpt, RationalNumber? poolPledgeInfluence, RationalNumber? expansionRate, RationalNumber? treasuryGrowth,@Deprecated("") RationalNumber? decentralisationConstant,@Deprecated("Removed in Babbage era") Nonce? extraEntropy, ProtocolVersion? protocolVersion,@Deprecated("") BigInt? minUtxo, BigInt? minPoolCost, BigInt? adaPerUtxoByte, CborValue? costmdls, CborValue? executionCosts, CborValue? maxTxExUnits, CborValue? maxBlockExUnits, BigInt? maxValSize, int? collateralPercentage, int? maxCollateralInputs, List<RationalNumber>? poolVotingThresholds, List<RationalNumber>? drepVotingThresholds, int? minCommitteeSize, int? committeeTermLimit, int? govActionValidityPeriod, BigInt? govActionDeposit, BigInt? drepDeposit, int? drepInactivityPeriod, RationalNumber? minFeeRefScriptCostPerByte, CborLengthType lengthType, List<int>? nonStandardKeyOrder, CborLengthType poolVotingThresholdsLengthType, CborLengthType drepVotingThresholdsLengthType
});


$RationalNumberCopyWith<$Res>? get poolPledgeInfluence;$RationalNumberCopyWith<$Res>? get expansionRate;$RationalNumberCopyWith<$Res>? get treasuryGrowth;$RationalNumberCopyWith<$Res>? get decentralisationConstant;$NonceCopyWith<$Res>? get extraEntropy;$ProtocolVersionCopyWith<$Res>? get protocolVersion;$RationalNumberCopyWith<$Res>? get minFeeRefScriptCostPerByte;

}
/// @nodoc
class _$ProtocolParamUpdateCopyWithImpl<$Res>
    implements $ProtocolParamUpdateCopyWith<$Res> {
  _$ProtocolParamUpdateCopyWithImpl(this._self, this._then);

  final ProtocolParamUpdate _self;
  final $Res Function(ProtocolParamUpdate) _then;

/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minFeeA = freezed,Object? minFeeB = freezed,Object? maxBlockSize = freezed,Object? maxTxSize = freezed,Object? maxBlockHeaderSize = freezed,Object? keyDeposit = freezed,Object? poolDeposit = freezed,Object? maxEpoch = freezed,Object? nOpt = freezed,Object? poolPledgeInfluence = freezed,Object? expansionRate = freezed,Object? treasuryGrowth = freezed,Object? decentralisationConstant = freezed,Object? extraEntropy = freezed,Object? protocolVersion = freezed,Object? minUtxo = freezed,Object? minPoolCost = freezed,Object? adaPerUtxoByte = freezed,Object? costmdls = freezed,Object? executionCosts = freezed,Object? maxTxExUnits = freezed,Object? maxBlockExUnits = freezed,Object? maxValSize = freezed,Object? collateralPercentage = freezed,Object? maxCollateralInputs = freezed,Object? poolVotingThresholds = freezed,Object? drepVotingThresholds = freezed,Object? minCommitteeSize = freezed,Object? committeeTermLimit = freezed,Object? govActionValidityPeriod = freezed,Object? govActionDeposit = freezed,Object? drepDeposit = freezed,Object? drepInactivityPeriod = freezed,Object? minFeeRefScriptCostPerByte = freezed,Object? lengthType = null,Object? nonStandardKeyOrder = freezed,Object? poolVotingThresholdsLengthType = null,Object? drepVotingThresholdsLengthType = null,}) {
  return _then(_self.copyWith(
minFeeA: freezed == minFeeA ? _self.minFeeA : minFeeA // ignore: cast_nullable_to_non_nullable
as BigInt?,minFeeB: freezed == minFeeB ? _self.minFeeB : minFeeB // ignore: cast_nullable_to_non_nullable
as BigInt?,maxBlockSize: freezed == maxBlockSize ? _self.maxBlockSize : maxBlockSize // ignore: cast_nullable_to_non_nullable
as int?,maxTxSize: freezed == maxTxSize ? _self.maxTxSize : maxTxSize // ignore: cast_nullable_to_non_nullable
as int?,maxBlockHeaderSize: freezed == maxBlockHeaderSize ? _self.maxBlockHeaderSize : maxBlockHeaderSize // ignore: cast_nullable_to_non_nullable
as int?,keyDeposit: freezed == keyDeposit ? _self.keyDeposit : keyDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,poolDeposit: freezed == poolDeposit ? _self.poolDeposit : poolDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,maxEpoch: freezed == maxEpoch ? _self.maxEpoch : maxEpoch // ignore: cast_nullable_to_non_nullable
as int?,nOpt: freezed == nOpt ? _self.nOpt : nOpt // ignore: cast_nullable_to_non_nullable
as int?,poolPledgeInfluence: freezed == poolPledgeInfluence ? _self.poolPledgeInfluence : poolPledgeInfluence // ignore: cast_nullable_to_non_nullable
as RationalNumber?,expansionRate: freezed == expansionRate ? _self.expansionRate : expansionRate // ignore: cast_nullable_to_non_nullable
as RationalNumber?,treasuryGrowth: freezed == treasuryGrowth ? _self.treasuryGrowth : treasuryGrowth // ignore: cast_nullable_to_non_nullable
as RationalNumber?,decentralisationConstant: freezed == decentralisationConstant ? _self.decentralisationConstant : decentralisationConstant // ignore: cast_nullable_to_non_nullable
as RationalNumber?,extraEntropy: freezed == extraEntropy ? _self.extraEntropy : extraEntropy // ignore: cast_nullable_to_non_nullable
as Nonce?,protocolVersion: freezed == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as ProtocolVersion?,minUtxo: freezed == minUtxo ? _self.minUtxo : minUtxo // ignore: cast_nullable_to_non_nullable
as BigInt?,minPoolCost: freezed == minPoolCost ? _self.minPoolCost : minPoolCost // ignore: cast_nullable_to_non_nullable
as BigInt?,adaPerUtxoByte: freezed == adaPerUtxoByte ? _self.adaPerUtxoByte : adaPerUtxoByte // ignore: cast_nullable_to_non_nullable
as BigInt?,costmdls: freezed == costmdls ? _self.costmdls : costmdls // ignore: cast_nullable_to_non_nullable
as CborValue?,executionCosts: freezed == executionCosts ? _self.executionCosts : executionCosts // ignore: cast_nullable_to_non_nullable
as CborValue?,maxTxExUnits: freezed == maxTxExUnits ? _self.maxTxExUnits : maxTxExUnits // ignore: cast_nullable_to_non_nullable
as CborValue?,maxBlockExUnits: freezed == maxBlockExUnits ? _self.maxBlockExUnits : maxBlockExUnits // ignore: cast_nullable_to_non_nullable
as CborValue?,maxValSize: freezed == maxValSize ? _self.maxValSize : maxValSize // ignore: cast_nullable_to_non_nullable
as BigInt?,collateralPercentage: freezed == collateralPercentage ? _self.collateralPercentage : collateralPercentage // ignore: cast_nullable_to_non_nullable
as int?,maxCollateralInputs: freezed == maxCollateralInputs ? _self.maxCollateralInputs : maxCollateralInputs // ignore: cast_nullable_to_non_nullable
as int?,poolVotingThresholds: freezed == poolVotingThresholds ? _self.poolVotingThresholds : poolVotingThresholds // ignore: cast_nullable_to_non_nullable
as List<RationalNumber>?,drepVotingThresholds: freezed == drepVotingThresholds ? _self.drepVotingThresholds : drepVotingThresholds // ignore: cast_nullable_to_non_nullable
as List<RationalNumber>?,minCommitteeSize: freezed == minCommitteeSize ? _self.minCommitteeSize : minCommitteeSize // ignore: cast_nullable_to_non_nullable
as int?,committeeTermLimit: freezed == committeeTermLimit ? _self.committeeTermLimit : committeeTermLimit // ignore: cast_nullable_to_non_nullable
as int?,govActionValidityPeriod: freezed == govActionValidityPeriod ? _self.govActionValidityPeriod : govActionValidityPeriod // ignore: cast_nullable_to_non_nullable
as int?,govActionDeposit: freezed == govActionDeposit ? _self.govActionDeposit : govActionDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,drepDeposit: freezed == drepDeposit ? _self.drepDeposit : drepDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,drepInactivityPeriod: freezed == drepInactivityPeriod ? _self.drepInactivityPeriod : drepInactivityPeriod // ignore: cast_nullable_to_non_nullable
as int?,minFeeRefScriptCostPerByte: freezed == minFeeRefScriptCostPerByte ? _self.minFeeRefScriptCostPerByte : minFeeRefScriptCostPerByte // ignore: cast_nullable_to_non_nullable
as RationalNumber?,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,nonStandardKeyOrder: freezed == nonStandardKeyOrder ? _self.nonStandardKeyOrder : nonStandardKeyOrder // ignore: cast_nullable_to_non_nullable
as List<int>?,poolVotingThresholdsLengthType: null == poolVotingThresholdsLengthType ? _self.poolVotingThresholdsLengthType : poolVotingThresholdsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,drepVotingThresholdsLengthType: null == drepVotingThresholdsLengthType ? _self.drepVotingThresholdsLengthType : drepVotingThresholdsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
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
}/// Create a copy of ProtocolParamUpdate
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
}/// Create a copy of ProtocolParamUpdate
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
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res>? get decentralisationConstant {
    if (_self.decentralisationConstant == null) {
    return null;
  }

  return $RationalNumberCopyWith<$Res>(_self.decentralisationConstant!, (value) {
    return _then(_self.copyWith(decentralisationConstant: value));
  });
}/// Create a copy of ProtocolParamUpdate
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
}/// Create a copy of ProtocolParamUpdate
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
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res>? get minFeeRefScriptCostPerByte {
    if (_self.minFeeRefScriptCostPerByte == null) {
    return null;
  }

  return $RationalNumberCopyWith<$Res>(_self.minFeeRefScriptCostPerByte!, (value) {
    return _then(_self.copyWith(minFeeRefScriptCostPerByte: value));
  });
}
}



/// @nodoc


class _ProtocolParamUpdate extends ProtocolParamUpdate {
  const _ProtocolParamUpdate({required this.minFeeA, required this.minFeeB, required this.maxBlockSize, required this.maxTxSize, required this.maxBlockHeaderSize, required this.keyDeposit, required this.poolDeposit, required this.maxEpoch, required this.nOpt, required this.poolPledgeInfluence, required this.expansionRate, required this.treasuryGrowth, @Deprecated("") required this.decentralisationConstant, @Deprecated("Removed in Babbage era") required this.extraEntropy, required this.protocolVersion, @Deprecated("") required this.minUtxo, required this.minPoolCost, required this.adaPerUtxoByte, required this.costmdls, required this.executionCosts, required this.maxTxExUnits, required this.maxBlockExUnits, required this.maxValSize, required this.collateralPercentage, required this.maxCollateralInputs, final  List<RationalNumber>? poolVotingThresholds, final  List<RationalNumber>? drepVotingThresholds, this.minCommitteeSize, this.committeeTermLimit, this.govActionValidityPeriod, this.govActionDeposit, this.drepDeposit, this.drepInactivityPeriod, this.minFeeRefScriptCostPerByte, this.lengthType = CborLengthType.definite, final  List<int>? nonStandardKeyOrder, this.poolVotingThresholdsLengthType = CborLengthType.definite, this.drepVotingThresholdsLengthType = CborLengthType.definite}): _poolVotingThresholds = poolVotingThresholds,_drepVotingThresholds = drepVotingThresholds,_nonStandardKeyOrder = nonStandardKeyOrder,super._();
  

@override final  BigInt? minFeeA;
// 0
@override final  BigInt? minFeeB;
// 1
@override final  int? maxBlockSize;
// 2
@override final  int? maxTxSize;
// 3
@override final  int? maxBlockHeaderSize;
// 4
@override final  BigInt? keyDeposit;
// 5
@override final  BigInt? poolDeposit;
// 6
@override final  int? maxEpoch;
// 7
@override final  int? nOpt;
// 8
@override final  RationalNumber? poolPledgeInfluence;
// 9
@override final  RationalNumber? expansionRate;
// 10
@override final  RationalNumber? treasuryGrowth;
// 11
@override@Deprecated("") final  RationalNumber? decentralisationConstant;
// 12
@override@Deprecated("Removed in Babbage era") final  Nonce? extraEntropy;
// 13
@override final  ProtocolVersion? protocolVersion;
// 14
@override@Deprecated("") final  BigInt? minUtxo;
// 15
@override final  BigInt? minPoolCost;
// 16
@override final  BigInt? adaPerUtxoByte;
// 17
// Alonzo changes
@override final  CborValue? costmdls;
// 18
@override final  CborValue? executionCosts;
// 19
@override final  CborValue? maxTxExUnits;
// 20
@override final  CborValue? maxBlockExUnits;
// 21
@override final  BigInt? maxValSize;
// 22
@override final  int? collateralPercentage;
// 23
@override final  int? maxCollateralInputs;
// 24
// Conway changes
 final  List<RationalNumber>? _poolVotingThresholds;
// 24
// Conway changes
@override List<RationalNumber>? get poolVotingThresholds {
  final value = _poolVotingThresholds;
  if (value == null) return null;
  if (_poolVotingThresholds is EqualUnmodifiableListView) return _poolVotingThresholds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// 25
 final  List<RationalNumber>? _drepVotingThresholds;
// 25
@override List<RationalNumber>? get drepVotingThresholds {
  final value = _drepVotingThresholds;
  if (value == null) return null;
  if (_drepVotingThresholds is EqualUnmodifiableListView) return _drepVotingThresholds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// 26
@override final  int? minCommitteeSize;
// 27
@override final  int? committeeTermLimit;
// 28
@override final  int? govActionValidityPeriod;
// 29
@override final  BigInt? govActionDeposit;
// 30
@override final  BigInt? drepDeposit;
// 31
@override final  int? drepInactivityPeriod;
// 32
@override final  RationalNumber? minFeeRefScriptCostPerByte;
// 33
// encoding details (not part of the protocol params)
@override@JsonKey() final  CborLengthType lengthType;
/// Map key order as parsed, or null when ascending (the standard order).
 final  List<int>? _nonStandardKeyOrder;
/// Map key order as parsed, or null when ascending (the standard order).
@override List<int>? get nonStandardKeyOrder {
  final value = _nonStandardKeyOrder;
  if (value == null) return null;
  if (_nonStandardKeyOrder is EqualUnmodifiableListView) return _nonStandardKeyOrder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  CborLengthType poolVotingThresholdsLengthType;
@override@JsonKey() final  CborLengthType drepVotingThresholdsLengthType;

/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProtocolParamUpdateCopyWith<_ProtocolParamUpdate> get copyWith => __$ProtocolParamUpdateCopyWithImpl<_ProtocolParamUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProtocolParamUpdate&&(identical(other.minFeeA, minFeeA) || other.minFeeA == minFeeA)&&(identical(other.minFeeB, minFeeB) || other.minFeeB == minFeeB)&&(identical(other.maxBlockSize, maxBlockSize) || other.maxBlockSize == maxBlockSize)&&(identical(other.maxTxSize, maxTxSize) || other.maxTxSize == maxTxSize)&&(identical(other.maxBlockHeaderSize, maxBlockHeaderSize) || other.maxBlockHeaderSize == maxBlockHeaderSize)&&(identical(other.keyDeposit, keyDeposit) || other.keyDeposit == keyDeposit)&&(identical(other.poolDeposit, poolDeposit) || other.poolDeposit == poolDeposit)&&(identical(other.maxEpoch, maxEpoch) || other.maxEpoch == maxEpoch)&&(identical(other.nOpt, nOpt) || other.nOpt == nOpt)&&(identical(other.poolPledgeInfluence, poolPledgeInfluence) || other.poolPledgeInfluence == poolPledgeInfluence)&&(identical(other.expansionRate, expansionRate) || other.expansionRate == expansionRate)&&(identical(other.treasuryGrowth, treasuryGrowth) || other.treasuryGrowth == treasuryGrowth)&&(identical(other.decentralisationConstant, decentralisationConstant) || other.decentralisationConstant == decentralisationConstant)&&(identical(other.extraEntropy, extraEntropy) || other.extraEntropy == extraEntropy)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.minUtxo, minUtxo) || other.minUtxo == minUtxo)&&(identical(other.minPoolCost, minPoolCost) || other.minPoolCost == minPoolCost)&&(identical(other.adaPerUtxoByte, adaPerUtxoByte) || other.adaPerUtxoByte == adaPerUtxoByte)&&(identical(other.costmdls, costmdls) || other.costmdls == costmdls)&&(identical(other.executionCosts, executionCosts) || other.executionCosts == executionCosts)&&(identical(other.maxTxExUnits, maxTxExUnits) || other.maxTxExUnits == maxTxExUnits)&&(identical(other.maxBlockExUnits, maxBlockExUnits) || other.maxBlockExUnits == maxBlockExUnits)&&(identical(other.maxValSize, maxValSize) || other.maxValSize == maxValSize)&&(identical(other.collateralPercentage, collateralPercentage) || other.collateralPercentage == collateralPercentage)&&(identical(other.maxCollateralInputs, maxCollateralInputs) || other.maxCollateralInputs == maxCollateralInputs)&&const DeepCollectionEquality().equals(other._poolVotingThresholds, _poolVotingThresholds)&&const DeepCollectionEquality().equals(other._drepVotingThresholds, _drepVotingThresholds)&&(identical(other.minCommitteeSize, minCommitteeSize) || other.minCommitteeSize == minCommitteeSize)&&(identical(other.committeeTermLimit, committeeTermLimit) || other.committeeTermLimit == committeeTermLimit)&&(identical(other.govActionValidityPeriod, govActionValidityPeriod) || other.govActionValidityPeriod == govActionValidityPeriod)&&(identical(other.govActionDeposit, govActionDeposit) || other.govActionDeposit == govActionDeposit)&&(identical(other.drepDeposit, drepDeposit) || other.drepDeposit == drepDeposit)&&(identical(other.drepInactivityPeriod, drepInactivityPeriod) || other.drepInactivityPeriod == drepInactivityPeriod)&&(identical(other.minFeeRefScriptCostPerByte, minFeeRefScriptCostPerByte) || other.minFeeRefScriptCostPerByte == minFeeRefScriptCostPerByte)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other._nonStandardKeyOrder, _nonStandardKeyOrder)&&(identical(other.poolVotingThresholdsLengthType, poolVotingThresholdsLengthType) || other.poolVotingThresholdsLengthType == poolVotingThresholdsLengthType)&&(identical(other.drepVotingThresholdsLengthType, drepVotingThresholdsLengthType) || other.drepVotingThresholdsLengthType == drepVotingThresholdsLengthType));
}


@override
int get hashCode => Object.hashAll([runtimeType,minFeeA,minFeeB,maxBlockSize,maxTxSize,maxBlockHeaderSize,keyDeposit,poolDeposit,maxEpoch,nOpt,poolPledgeInfluence,expansionRate,treasuryGrowth,decentralisationConstant,extraEntropy,protocolVersion,minUtxo,minPoolCost,adaPerUtxoByte,costmdls,executionCosts,maxTxExUnits,maxBlockExUnits,maxValSize,collateralPercentage,maxCollateralInputs,const DeepCollectionEquality().hash(_poolVotingThresholds),const DeepCollectionEquality().hash(_drepVotingThresholds),minCommitteeSize,committeeTermLimit,govActionValidityPeriod,govActionDeposit,drepDeposit,drepInactivityPeriod,minFeeRefScriptCostPerByte,lengthType,const DeepCollectionEquality().hash(_nonStandardKeyOrder),poolVotingThresholdsLengthType,drepVotingThresholdsLengthType]);

@override
String toString() {
  return 'ProtocolParamUpdate(minFeeA: $minFeeA, minFeeB: $minFeeB, maxBlockSize: $maxBlockSize, maxTxSize: $maxTxSize, maxBlockHeaderSize: $maxBlockHeaderSize, keyDeposit: $keyDeposit, poolDeposit: $poolDeposit, maxEpoch: $maxEpoch, nOpt: $nOpt, poolPledgeInfluence: $poolPledgeInfluence, expansionRate: $expansionRate, treasuryGrowth: $treasuryGrowth, decentralisationConstant: $decentralisationConstant, extraEntropy: $extraEntropy, protocolVersion: $protocolVersion, minUtxo: $minUtxo, minPoolCost: $minPoolCost, adaPerUtxoByte: $adaPerUtxoByte, costmdls: $costmdls, executionCosts: $executionCosts, maxTxExUnits: $maxTxExUnits, maxBlockExUnits: $maxBlockExUnits, maxValSize: $maxValSize, collateralPercentage: $collateralPercentage, maxCollateralInputs: $maxCollateralInputs, poolVotingThresholds: $poolVotingThresholds, drepVotingThresholds: $drepVotingThresholds, minCommitteeSize: $minCommitteeSize, committeeTermLimit: $committeeTermLimit, govActionValidityPeriod: $govActionValidityPeriod, govActionDeposit: $govActionDeposit, drepDeposit: $drepDeposit, drepInactivityPeriod: $drepInactivityPeriod, minFeeRefScriptCostPerByte: $minFeeRefScriptCostPerByte, lengthType: $lengthType, nonStandardKeyOrder: $nonStandardKeyOrder, poolVotingThresholdsLengthType: $poolVotingThresholdsLengthType, drepVotingThresholdsLengthType: $drepVotingThresholdsLengthType)';
}


}

/// @nodoc
abstract mixin class _$ProtocolParamUpdateCopyWith<$Res> implements $ProtocolParamUpdateCopyWith<$Res> {
  factory _$ProtocolParamUpdateCopyWith(_ProtocolParamUpdate value, $Res Function(_ProtocolParamUpdate) _then) = __$ProtocolParamUpdateCopyWithImpl;
@override @useResult
$Res call({
 BigInt? minFeeA, BigInt? minFeeB, int? maxBlockSize, int? maxTxSize, int? maxBlockHeaderSize, BigInt? keyDeposit, BigInt? poolDeposit, int? maxEpoch, int? nOpt, RationalNumber? poolPledgeInfluence, RationalNumber? expansionRate, RationalNumber? treasuryGrowth,@Deprecated("") RationalNumber? decentralisationConstant,@Deprecated("Removed in Babbage era") Nonce? extraEntropy, ProtocolVersion? protocolVersion,@Deprecated("") BigInt? minUtxo, BigInt? minPoolCost, BigInt? adaPerUtxoByte, CborValue? costmdls, CborValue? executionCosts, CborValue? maxTxExUnits, CborValue? maxBlockExUnits, BigInt? maxValSize, int? collateralPercentage, int? maxCollateralInputs, List<RationalNumber>? poolVotingThresholds, List<RationalNumber>? drepVotingThresholds, int? minCommitteeSize, int? committeeTermLimit, int? govActionValidityPeriod, BigInt? govActionDeposit, BigInt? drepDeposit, int? drepInactivityPeriod, RationalNumber? minFeeRefScriptCostPerByte, CborLengthType lengthType, List<int>? nonStandardKeyOrder, CborLengthType poolVotingThresholdsLengthType, CborLengthType drepVotingThresholdsLengthType
});


@override $RationalNumberCopyWith<$Res>? get poolPledgeInfluence;@override $RationalNumberCopyWith<$Res>? get expansionRate;@override $RationalNumberCopyWith<$Res>? get treasuryGrowth;@override $RationalNumberCopyWith<$Res>? get decentralisationConstant;@override $NonceCopyWith<$Res>? get extraEntropy;@override $ProtocolVersionCopyWith<$Res>? get protocolVersion;@override $RationalNumberCopyWith<$Res>? get minFeeRefScriptCostPerByte;

}
/// @nodoc
class __$ProtocolParamUpdateCopyWithImpl<$Res>
    implements _$ProtocolParamUpdateCopyWith<$Res> {
  __$ProtocolParamUpdateCopyWithImpl(this._self, this._then);

  final _ProtocolParamUpdate _self;
  final $Res Function(_ProtocolParamUpdate) _then;

/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minFeeA = freezed,Object? minFeeB = freezed,Object? maxBlockSize = freezed,Object? maxTxSize = freezed,Object? maxBlockHeaderSize = freezed,Object? keyDeposit = freezed,Object? poolDeposit = freezed,Object? maxEpoch = freezed,Object? nOpt = freezed,Object? poolPledgeInfluence = freezed,Object? expansionRate = freezed,Object? treasuryGrowth = freezed,Object? decentralisationConstant = freezed,Object? extraEntropy = freezed,Object? protocolVersion = freezed,Object? minUtxo = freezed,Object? minPoolCost = freezed,Object? adaPerUtxoByte = freezed,Object? costmdls = freezed,Object? executionCosts = freezed,Object? maxTxExUnits = freezed,Object? maxBlockExUnits = freezed,Object? maxValSize = freezed,Object? collateralPercentage = freezed,Object? maxCollateralInputs = freezed,Object? poolVotingThresholds = freezed,Object? drepVotingThresholds = freezed,Object? minCommitteeSize = freezed,Object? committeeTermLimit = freezed,Object? govActionValidityPeriod = freezed,Object? govActionDeposit = freezed,Object? drepDeposit = freezed,Object? drepInactivityPeriod = freezed,Object? minFeeRefScriptCostPerByte = freezed,Object? lengthType = null,Object? nonStandardKeyOrder = freezed,Object? poolVotingThresholdsLengthType = null,Object? drepVotingThresholdsLengthType = null,}) {
  return _then(_ProtocolParamUpdate(
minFeeA: freezed == minFeeA ? _self.minFeeA : minFeeA // ignore: cast_nullable_to_non_nullable
as BigInt?,minFeeB: freezed == minFeeB ? _self.minFeeB : minFeeB // ignore: cast_nullable_to_non_nullable
as BigInt?,maxBlockSize: freezed == maxBlockSize ? _self.maxBlockSize : maxBlockSize // ignore: cast_nullable_to_non_nullable
as int?,maxTxSize: freezed == maxTxSize ? _self.maxTxSize : maxTxSize // ignore: cast_nullable_to_non_nullable
as int?,maxBlockHeaderSize: freezed == maxBlockHeaderSize ? _self.maxBlockHeaderSize : maxBlockHeaderSize // ignore: cast_nullable_to_non_nullable
as int?,keyDeposit: freezed == keyDeposit ? _self.keyDeposit : keyDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,poolDeposit: freezed == poolDeposit ? _self.poolDeposit : poolDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,maxEpoch: freezed == maxEpoch ? _self.maxEpoch : maxEpoch // ignore: cast_nullable_to_non_nullable
as int?,nOpt: freezed == nOpt ? _self.nOpt : nOpt // ignore: cast_nullable_to_non_nullable
as int?,poolPledgeInfluence: freezed == poolPledgeInfluence ? _self.poolPledgeInfluence : poolPledgeInfluence // ignore: cast_nullable_to_non_nullable
as RationalNumber?,expansionRate: freezed == expansionRate ? _self.expansionRate : expansionRate // ignore: cast_nullable_to_non_nullable
as RationalNumber?,treasuryGrowth: freezed == treasuryGrowth ? _self.treasuryGrowth : treasuryGrowth // ignore: cast_nullable_to_non_nullable
as RationalNumber?,decentralisationConstant: freezed == decentralisationConstant ? _self.decentralisationConstant : decentralisationConstant // ignore: cast_nullable_to_non_nullable
as RationalNumber?,extraEntropy: freezed == extraEntropy ? _self.extraEntropy : extraEntropy // ignore: cast_nullable_to_non_nullable
as Nonce?,protocolVersion: freezed == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as ProtocolVersion?,minUtxo: freezed == minUtxo ? _self.minUtxo : minUtxo // ignore: cast_nullable_to_non_nullable
as BigInt?,minPoolCost: freezed == minPoolCost ? _self.minPoolCost : minPoolCost // ignore: cast_nullable_to_non_nullable
as BigInt?,adaPerUtxoByte: freezed == adaPerUtxoByte ? _self.adaPerUtxoByte : adaPerUtxoByte // ignore: cast_nullable_to_non_nullable
as BigInt?,costmdls: freezed == costmdls ? _self.costmdls : costmdls // ignore: cast_nullable_to_non_nullable
as CborValue?,executionCosts: freezed == executionCosts ? _self.executionCosts : executionCosts // ignore: cast_nullable_to_non_nullable
as CborValue?,maxTxExUnits: freezed == maxTxExUnits ? _self.maxTxExUnits : maxTxExUnits // ignore: cast_nullable_to_non_nullable
as CborValue?,maxBlockExUnits: freezed == maxBlockExUnits ? _self.maxBlockExUnits : maxBlockExUnits // ignore: cast_nullable_to_non_nullable
as CborValue?,maxValSize: freezed == maxValSize ? _self.maxValSize : maxValSize // ignore: cast_nullable_to_non_nullable
as BigInt?,collateralPercentage: freezed == collateralPercentage ? _self.collateralPercentage : collateralPercentage // ignore: cast_nullable_to_non_nullable
as int?,maxCollateralInputs: freezed == maxCollateralInputs ? _self.maxCollateralInputs : maxCollateralInputs // ignore: cast_nullable_to_non_nullable
as int?,poolVotingThresholds: freezed == poolVotingThresholds ? _self._poolVotingThresholds : poolVotingThresholds // ignore: cast_nullable_to_non_nullable
as List<RationalNumber>?,drepVotingThresholds: freezed == drepVotingThresholds ? _self._drepVotingThresholds : drepVotingThresholds // ignore: cast_nullable_to_non_nullable
as List<RationalNumber>?,minCommitteeSize: freezed == minCommitteeSize ? _self.minCommitteeSize : minCommitteeSize // ignore: cast_nullable_to_non_nullable
as int?,committeeTermLimit: freezed == committeeTermLimit ? _self.committeeTermLimit : committeeTermLimit // ignore: cast_nullable_to_non_nullable
as int?,govActionValidityPeriod: freezed == govActionValidityPeriod ? _self.govActionValidityPeriod : govActionValidityPeriod // ignore: cast_nullable_to_non_nullable
as int?,govActionDeposit: freezed == govActionDeposit ? _self.govActionDeposit : govActionDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,drepDeposit: freezed == drepDeposit ? _self.drepDeposit : drepDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,drepInactivityPeriod: freezed == drepInactivityPeriod ? _self.drepInactivityPeriod : drepInactivityPeriod // ignore: cast_nullable_to_non_nullable
as int?,minFeeRefScriptCostPerByte: freezed == minFeeRefScriptCostPerByte ? _self.minFeeRefScriptCostPerByte : minFeeRefScriptCostPerByte // ignore: cast_nullable_to_non_nullable
as RationalNumber?,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,nonStandardKeyOrder: freezed == nonStandardKeyOrder ? _self._nonStandardKeyOrder : nonStandardKeyOrder // ignore: cast_nullable_to_non_nullable
as List<int>?,poolVotingThresholdsLengthType: null == poolVotingThresholdsLengthType ? _self.poolVotingThresholdsLengthType : poolVotingThresholdsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,drepVotingThresholdsLengthType: null == drepVotingThresholdsLengthType ? _self.drepVotingThresholdsLengthType : drepVotingThresholdsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
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
}/// Create a copy of ProtocolParamUpdate
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
}/// Create a copy of ProtocolParamUpdate
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
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res>? get decentralisationConstant {
    if (_self.decentralisationConstant == null) {
    return null;
  }

  return $RationalNumberCopyWith<$Res>(_self.decentralisationConstant!, (value) {
    return _then(_self.copyWith(decentralisationConstant: value));
  });
}/// Create a copy of ProtocolParamUpdate
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
}/// Create a copy of ProtocolParamUpdate
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
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res>? get minFeeRefScriptCostPerByte {
    if (_self.minFeeRefScriptCostPerByte == null) {
    return null;
  }

  return $RationalNumberCopyWith<$Res>(_self.minFeeRefScriptCostPerByte!, (value) {
    return _then(_self.copyWith(minFeeRefScriptCostPerByte: value));
  });
}
}

// dart format on
