// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol_param_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProtocolParamUpdate {

 BigInt? get minFeeA; BigInt? get minFeeB; int? get maxBlockSize; int? get maxTxSize; int? get maxBlockHeaderSize; BigInt? get keyDeposit; BigInt? get poolDeposit; int? get maxEpoch; int? get nOpt; RationalNumber? get poolPledgeInfluence; RationalNumber? get expansionRate; RationalNumber? get treasuryGrowth;@Deprecated("") RationalNumber? get decentralisationConstant;@Deprecated("Removed in Babbage era") Nonce? get extraEntropy; ProtocolVersion? get protocolVersion;@Deprecated("") BigInt? get minUtxo; BigInt? get minPoolCost; BigInt? get adaPerUtxoByte; CborValue? get costmdls; CborValue? get executionCosts; CborValue? get maxTxExUnits; CborValue? get maxBlockExUnits; BigInt? get maxValSize; int? get collateralPercentage; int? get maxCollateralInputs; List<RationalNumber>? get poolVotingThresholds; List<RationalNumber>? get drepVotingThresholds; int? get minCommitteeSize; int? get committeeTermLimit; int? get govActionValidityPeriod; BigInt? get govActionDeposit; BigInt? get drepDeposit; int? get drepInactivityPeriod; RationalNumber? get minFeeRefScriptCostPerByte; CborLengthType get lengthType;/// Map key order as parsed, or null when ascending (the standard order).
 List<int>? get nonStandardKeyOrder; CborLengthType get poolVotingThresholdsLengthType; CborLengthType get drepVotingThresholdsLengthType;
/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProtocolParamUpdateCopyWith<ProtocolParamUpdate> get copyWith => _$ProtocolParamUpdateCopyWithImpl<ProtocolParamUpdate>(this as ProtocolParamUpdate, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProtocolParamUpdate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProtocolParamUpdate&&(identical(other.minFeeA, _this.minFeeA) || other.minFeeA == _this.minFeeA)&&(identical(other.minFeeB, _this.minFeeB) || other.minFeeB == _this.minFeeB)&&(identical(other.maxBlockSize, _this.maxBlockSize) || other.maxBlockSize == _this.maxBlockSize)&&(identical(other.maxTxSize, _this.maxTxSize) || other.maxTxSize == _this.maxTxSize)&&(identical(other.maxBlockHeaderSize, _this.maxBlockHeaderSize) || other.maxBlockHeaderSize == _this.maxBlockHeaderSize)&&(identical(other.keyDeposit, _this.keyDeposit) || other.keyDeposit == _this.keyDeposit)&&(identical(other.poolDeposit, _this.poolDeposit) || other.poolDeposit == _this.poolDeposit)&&(identical(other.maxEpoch, _this.maxEpoch) || other.maxEpoch == _this.maxEpoch)&&(identical(other.nOpt, _this.nOpt) || other.nOpt == _this.nOpt)&&(identical(other.poolPledgeInfluence, _this.poolPledgeInfluence) || other.poolPledgeInfluence == _this.poolPledgeInfluence)&&(identical(other.expansionRate, _this.expansionRate) || other.expansionRate == _this.expansionRate)&&(identical(other.treasuryGrowth, _this.treasuryGrowth) || other.treasuryGrowth == _this.treasuryGrowth)&&(identical(other.decentralisationConstant, _this.decentralisationConstant) || other.decentralisationConstant == _this.decentralisationConstant)&&(identical(other.extraEntropy, _this.extraEntropy) || other.extraEntropy == _this.extraEntropy)&&(identical(other.protocolVersion, _this.protocolVersion) || other.protocolVersion == _this.protocolVersion)&&(identical(other.minUtxo, _this.minUtxo) || other.minUtxo == _this.minUtxo)&&(identical(other.minPoolCost, _this.minPoolCost) || other.minPoolCost == _this.minPoolCost)&&(identical(other.adaPerUtxoByte, _this.adaPerUtxoByte) || other.adaPerUtxoByte == _this.adaPerUtxoByte)&&(identical(other.costmdls, _this.costmdls) || other.costmdls == _this.costmdls)&&(identical(other.executionCosts, _this.executionCosts) || other.executionCosts == _this.executionCosts)&&(identical(other.maxTxExUnits, _this.maxTxExUnits) || other.maxTxExUnits == _this.maxTxExUnits)&&(identical(other.maxBlockExUnits, _this.maxBlockExUnits) || other.maxBlockExUnits == _this.maxBlockExUnits)&&(identical(other.maxValSize, _this.maxValSize) || other.maxValSize == _this.maxValSize)&&(identical(other.collateralPercentage, _this.collateralPercentage) || other.collateralPercentage == _this.collateralPercentage)&&(identical(other.maxCollateralInputs, _this.maxCollateralInputs) || other.maxCollateralInputs == _this.maxCollateralInputs)&&const DeepCollectionEquality().equals(other.poolVotingThresholds, _this.poolVotingThresholds)&&const DeepCollectionEquality().equals(other.drepVotingThresholds, _this.drepVotingThresholds)&&(identical(other.minCommitteeSize, _this.minCommitteeSize) || other.minCommitteeSize == _this.minCommitteeSize)&&(identical(other.committeeTermLimit, _this.committeeTermLimit) || other.committeeTermLimit == _this.committeeTermLimit)&&(identical(other.govActionValidityPeriod, _this.govActionValidityPeriod) || other.govActionValidityPeriod == _this.govActionValidityPeriod)&&(identical(other.govActionDeposit, _this.govActionDeposit) || other.govActionDeposit == _this.govActionDeposit)&&(identical(other.drepDeposit, _this.drepDeposit) || other.drepDeposit == _this.drepDeposit)&&(identical(other.drepInactivityPeriod, _this.drepInactivityPeriod) || other.drepInactivityPeriod == _this.drepInactivityPeriod)&&(identical(other.minFeeRefScriptCostPerByte, _this.minFeeRefScriptCostPerByte) || other.minFeeRefScriptCostPerByte == _this.minFeeRefScriptCostPerByte)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType)&&const DeepCollectionEquality().equals(other.nonStandardKeyOrder, _this.nonStandardKeyOrder)&&(identical(other.poolVotingThresholdsLengthType, _this.poolVotingThresholdsLengthType) || other.poolVotingThresholdsLengthType == _this.poolVotingThresholdsLengthType)&&(identical(other.drepVotingThresholdsLengthType, _this.drepVotingThresholdsLengthType) || other.drepVotingThresholdsLengthType == _this.drepVotingThresholdsLengthType));
}


@override
int get hashCode {
  final _this = this as ProtocolParamUpdate;
  return Object.hashAll([runtimeType,_this.minFeeA,_this.minFeeB,_this.maxBlockSize,_this.maxTxSize,_this.maxBlockHeaderSize,_this.keyDeposit,_this.poolDeposit,_this.maxEpoch,_this.nOpt,_this.poolPledgeInfluence,_this.expansionRate,_this.treasuryGrowth,_this.decentralisationConstant,_this.extraEntropy,_this.protocolVersion,_this.minUtxo,_this.minPoolCost,_this.adaPerUtxoByte,_this.costmdls,_this.executionCosts,_this.maxTxExUnits,_this.maxBlockExUnits,_this.maxValSize,_this.collateralPercentage,_this.maxCollateralInputs,const DeepCollectionEquality().hash(_this.poolVotingThresholds),const DeepCollectionEquality().hash(_this.drepVotingThresholds),_this.minCommitteeSize,_this.committeeTermLimit,_this.govActionValidityPeriod,_this.govActionDeposit,_this.drepDeposit,_this.drepInactivityPeriod,_this.minFeeRefScriptCostPerByte,_this.lengthType,const DeepCollectionEquality().hash(_this.nonStandardKeyOrder),_this.poolVotingThresholdsLengthType,_this.drepVotingThresholdsLengthType]);
}

@override
String toString() {
  final _this = this as ProtocolParamUpdate;
  return 'ProtocolParamUpdate(minFeeA: ${_this.minFeeA}, minFeeB: ${_this.minFeeB}, maxBlockSize: ${_this.maxBlockSize}, maxTxSize: ${_this.maxTxSize}, maxBlockHeaderSize: ${_this.maxBlockHeaderSize}, keyDeposit: ${_this.keyDeposit}, poolDeposit: ${_this.poolDeposit}, maxEpoch: ${_this.maxEpoch}, nOpt: ${_this.nOpt}, poolPledgeInfluence: ${_this.poolPledgeInfluence}, expansionRate: ${_this.expansionRate}, treasuryGrowth: ${_this.treasuryGrowth}, decentralisationConstant: ${_this.decentralisationConstant}, extraEntropy: ${_this.extraEntropy}, protocolVersion: ${_this.protocolVersion}, minUtxo: ${_this.minUtxo}, minPoolCost: ${_this.minPoolCost}, adaPerUtxoByte: ${_this.adaPerUtxoByte}, costmdls: ${_this.costmdls}, executionCosts: ${_this.executionCosts}, maxTxExUnits: ${_this.maxTxExUnits}, maxBlockExUnits: ${_this.maxBlockExUnits}, maxValSize: ${_this.maxValSize}, collateralPercentage: ${_this.collateralPercentage}, maxCollateralInputs: ${_this.maxCollateralInputs}, poolVotingThresholds: ${_this.poolVotingThresholds}, drepVotingThresholds: ${_this.drepVotingThresholds}, minCommitteeSize: ${_this.minCommitteeSize}, committeeTermLimit: ${_this.committeeTermLimit}, govActionValidityPeriod: ${_this.govActionValidityPeriod}, govActionDeposit: ${_this.govActionDeposit}, drepDeposit: ${_this.drepDeposit}, drepInactivityPeriod: ${_this.drepInactivityPeriod}, minFeeRefScriptCostPerByte: ${_this.minFeeRefScriptCostPerByte}, lengthType: ${_this.lengthType}, nonStandardKeyOrder: ${_this.nonStandardKeyOrder}, poolVotingThresholdsLengthType: ${_this.poolVotingThresholdsLengthType}, drepVotingThresholdsLengthType: ${_this.drepVotingThresholdsLengthType})';
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
  return _then(ProtocolParamUpdate(
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
  const _ProtocolParamUpdate({required this.minFeeA, required this.minFeeB, required this.maxBlockSize, required this.maxTxSize, required this.maxBlockHeaderSize, required this.keyDeposit, required this.poolDeposit, required this.maxEpoch, required this.nOpt, required this.poolPledgeInfluence, required this.expansionRate, required this.treasuryGrowth, @Deprecated("") required this.decentralisationConstant, @Deprecated("Removed in Babbage era") required this.extraEntropy, required this.protocolVersion, @Deprecated("") required this.minUtxo, required this.minPoolCost, required this.adaPerUtxoByte, required this.costmdls, required this.executionCosts, required this.maxTxExUnits, required this.maxBlockExUnits, required this.maxValSize, required this.collateralPercentage, required this.maxCollateralInputs,  List<RationalNumber>? poolVotingThresholds,  List<RationalNumber>? drepVotingThresholds, this.minCommitteeSize, this.committeeTermLimit, this.govActionValidityPeriod, this.govActionDeposit, this.drepDeposit, this.drepInactivityPeriod, this.minFeeRefScriptCostPerByte, this.lengthType = CborLengthType.definite,  List<int>? nonStandardKeyOrder, this.poolVotingThresholdsLengthType = CborLengthType.definite, this.drepVotingThresholdsLengthType = CborLengthType.definite}): _poolVotingThresholds = poolVotingThresholds,_drepVotingThresholds = drepVotingThresholds,_nonStandardKeyOrder = nonStandardKeyOrder,super._();
  

@override final  BigInt? minFeeA;
@override final  BigInt? minFeeB;
@override final  int? maxBlockSize;
@override final  int? maxTxSize;
@override final  int? maxBlockHeaderSize;
@override final  BigInt? keyDeposit;
@override final  BigInt? poolDeposit;
@override final  int? maxEpoch;
@override final  int? nOpt;
@override final  RationalNumber? poolPledgeInfluence;
@override final  RationalNumber? expansionRate;
@override final  RationalNumber? treasuryGrowth;
@override@Deprecated("") final  RationalNumber? decentralisationConstant;
@override@Deprecated("Removed in Babbage era") final  Nonce? extraEntropy;
@override final  ProtocolVersion? protocolVersion;
@override@Deprecated("") final  BigInt? minUtxo;
@override final  BigInt? minPoolCost;
@override final  BigInt? adaPerUtxoByte;
@override final  CborValue? costmdls;
@override final  CborValue? executionCosts;
@override final  CborValue? maxTxExUnits;
@override final  CborValue? maxBlockExUnits;
@override final  BigInt? maxValSize;
@override final  int? collateralPercentage;
@override final  int? maxCollateralInputs;
 final  List<RationalNumber>? _poolVotingThresholds;
@override List<RationalNumber>? get poolVotingThresholds {
  final value = _poolVotingThresholds;
  if (value == null) return null;
  if (_poolVotingThresholds is EqualUnmodifiableListView) return _poolVotingThresholds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RationalNumber>? _drepVotingThresholds;
@override List<RationalNumber>? get drepVotingThresholds {
  final value = _drepVotingThresholds;
  if (value == null) return null;
  if (_drepVotingThresholds is EqualUnmodifiableListView) return _drepVotingThresholds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? minCommitteeSize;
@override final  int? committeeTermLimit;
@override final  int? govActionValidityPeriod;
@override final  BigInt? govActionDeposit;
@override final  BigInt? drepDeposit;
@override final  int? drepInactivityPeriod;
@override final  RationalNumber? minFeeRefScriptCostPerByte;
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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProtocolParamUpdate&&(identical(other.minFeeA, minFeeA) || other.minFeeA == minFeeA)&&(identical(other.minFeeB, minFeeB) || other.minFeeB == minFeeB)&&(identical(other.maxBlockSize, maxBlockSize) || other.maxBlockSize == maxBlockSize)&&(identical(other.maxTxSize, maxTxSize) || other.maxTxSize == maxTxSize)&&(identical(other.maxBlockHeaderSize, maxBlockHeaderSize) || other.maxBlockHeaderSize == maxBlockHeaderSize)&&(identical(other.keyDeposit, keyDeposit) || other.keyDeposit == keyDeposit)&&(identical(other.poolDeposit, poolDeposit) || other.poolDeposit == poolDeposit)&&(identical(other.maxEpoch, maxEpoch) || other.maxEpoch == maxEpoch)&&(identical(other.nOpt, nOpt) || other.nOpt == nOpt)&&(identical(other.poolPledgeInfluence, poolPledgeInfluence) || other.poolPledgeInfluence == poolPledgeInfluence)&&(identical(other.expansionRate, expansionRate) || other.expansionRate == expansionRate)&&(identical(other.treasuryGrowth, treasuryGrowth) || other.treasuryGrowth == treasuryGrowth)&&(identical(other.decentralisationConstant, decentralisationConstant) || other.decentralisationConstant == decentralisationConstant)&&(identical(other.extraEntropy, extraEntropy) || other.extraEntropy == extraEntropy)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.minUtxo, minUtxo) || other.minUtxo == minUtxo)&&(identical(other.minPoolCost, minPoolCost) || other.minPoolCost == minPoolCost)&&(identical(other.adaPerUtxoByte, adaPerUtxoByte) || other.adaPerUtxoByte == adaPerUtxoByte)&&(identical(other.costmdls, costmdls) || other.costmdls == costmdls)&&(identical(other.executionCosts, executionCosts) || other.executionCosts == executionCosts)&&(identical(other.maxTxExUnits, maxTxExUnits) || other.maxTxExUnits == maxTxExUnits)&&(identical(other.maxBlockExUnits, maxBlockExUnits) || other.maxBlockExUnits == maxBlockExUnits)&&(identical(other.maxValSize, maxValSize) || other.maxValSize == maxValSize)&&(identical(other.collateralPercentage, collateralPercentage) || other.collateralPercentage == collateralPercentage)&&(identical(other.maxCollateralInputs, maxCollateralInputs) || other.maxCollateralInputs == maxCollateralInputs)&&const DeepCollectionEquality().equals(other.poolVotingThresholds, _poolVotingThresholds)&&const DeepCollectionEquality().equals(other.drepVotingThresholds, _drepVotingThresholds)&&(identical(other.minCommitteeSize, minCommitteeSize) || other.minCommitteeSize == minCommitteeSize)&&(identical(other.committeeTermLimit, committeeTermLimit) || other.committeeTermLimit == committeeTermLimit)&&(identical(other.govActionValidityPeriod, govActionValidityPeriod) || other.govActionValidityPeriod == govActionValidityPeriod)&&(identical(other.govActionDeposit, govActionDeposit) || other.govActionDeposit == govActionDeposit)&&(identical(other.drepDeposit, drepDeposit) || other.drepDeposit == drepDeposit)&&(identical(other.drepInactivityPeriod, drepInactivityPeriod) || other.drepInactivityPeriod == drepInactivityPeriod)&&(identical(other.minFeeRefScriptCostPerByte, minFeeRefScriptCostPerByte) || other.minFeeRefScriptCostPerByte == minFeeRefScriptCostPerByte)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other.nonStandardKeyOrder, _nonStandardKeyOrder)&&(identical(other.poolVotingThresholdsLengthType, poolVotingThresholdsLengthType) || other.poolVotingThresholdsLengthType == poolVotingThresholdsLengthType)&&(identical(other.drepVotingThresholdsLengthType, drepVotingThresholdsLengthType) || other.drepVotingThresholdsLengthType == drepVotingThresholdsLengthType));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,minFeeA,minFeeB,maxBlockSize,maxTxSize,maxBlockHeaderSize,keyDeposit,poolDeposit,maxEpoch,nOpt,poolPledgeInfluence,expansionRate,treasuryGrowth,decentralisationConstant,extraEntropy,protocolVersion,minUtxo,minPoolCost,adaPerUtxoByte,costmdls,executionCosts,maxTxExUnits,maxBlockExUnits,maxValSize,collateralPercentage,maxCollateralInputs,const DeepCollectionEquality().hash(_poolVotingThresholds),const DeepCollectionEquality().hash(_drepVotingThresholds),minCommitteeSize,committeeTermLimit,govActionValidityPeriod,govActionDeposit,drepDeposit,drepInactivityPeriod,minFeeRefScriptCostPerByte,lengthType,const DeepCollectionEquality().hash(_nonStandardKeyOrder),poolVotingThresholdsLengthType,drepVotingThresholdsLengthType]);
}

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
