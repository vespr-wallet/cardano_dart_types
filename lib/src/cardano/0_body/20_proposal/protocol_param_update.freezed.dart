// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol_param_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProtocolParamUpdate {

 BigInt? get minFeeA => throw _privateConstructorUsedError;// 0
 BigInt? get minFeeB => throw _privateConstructorUsedError;// 1
 int? get maxBlockSize => throw _privateConstructorUsedError;// 2
 int? get maxTxSize => throw _privateConstructorUsedError;// 3
 int? get maxBlockHeaderSize => throw _privateConstructorUsedError;// 4
 BigInt? get keyDeposit => throw _privateConstructorUsedError;// 5
 BigInt? get poolDeposit => throw _privateConstructorUsedError;// 6
 int? get maxEpoch => throw _privateConstructorUsedError;// 7
 int? get nOpt => throw _privateConstructorUsedError;// 8
 RationalNumber? get poolPledgeInfluence => throw _privateConstructorUsedError;// 9
 RationalNumber? get expansionRate => throw _privateConstructorUsedError;// 10
 RationalNumber? get treasuryGrowth => throw _privateConstructorUsedError;// 11
@Deprecated("") RationalNumber? get decentralisationConstant => throw _privateConstructorUsedError;// 12
@Deprecated("Removed in Babbage era") Nonce? get extraEntropy => throw _privateConstructorUsedError;// 13
 ProtocolVersion? get protocolVersion => throw _privateConstructorUsedError;// 14
@Deprecated("") BigInt? get minUtxo => throw _privateConstructorUsedError;// 15
 BigInt? get minPoolCost => throw _privateConstructorUsedError;// 16
 BigInt? get adaPerUtxoByte => throw _privateConstructorUsedError;// 17
// Alonzo changes
 CborValue? get costmdls => throw _privateConstructorUsedError;// 18
 CborValue? get executionCosts => throw _privateConstructorUsedError;// 19
 CborValue? get maxTxExUnits => throw _privateConstructorUsedError;// 20
 CborValue? get maxBlockExUnits => throw _privateConstructorUsedError;// 21
 BigInt? get maxValSize => throw _privateConstructorUsedError;// 22
 int? get collateralPercentage => throw _privateConstructorUsedError;// 23
 int? get maxCollateralInputs => throw _privateConstructorUsedError;







/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ProtocolParamUpdateCopyWith<ProtocolParamUpdate> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ProtocolParamUpdateCopyWith<$Res>  {
  factory $ProtocolParamUpdateCopyWith(ProtocolParamUpdate value, $Res Function(ProtocolParamUpdate) then) = _$ProtocolParamUpdateCopyWithImpl<$Res, ProtocolParamUpdate>;
@useResult
$Res call({
 BigInt? minFeeA, BigInt? minFeeB, int? maxBlockSize, int? maxTxSize, int? maxBlockHeaderSize, BigInt? keyDeposit, BigInt? poolDeposit, int? maxEpoch, int? nOpt, RationalNumber? poolPledgeInfluence, RationalNumber? expansionRate, RationalNumber? treasuryGrowth,@Deprecated("") RationalNumber? decentralisationConstant,@Deprecated("Removed in Babbage era") Nonce? extraEntropy, ProtocolVersion? protocolVersion,@Deprecated("") BigInt? minUtxo, BigInt? minPoolCost, BigInt? adaPerUtxoByte, CborValue? costmdls, CborValue? executionCosts, CborValue? maxTxExUnits, CborValue? maxBlockExUnits, BigInt? maxValSize, int? collateralPercentage, int? maxCollateralInputs
});


$RationalNumberCopyWith<$Res>? get poolPledgeInfluence;$RationalNumberCopyWith<$Res>? get expansionRate;$RationalNumberCopyWith<$Res>? get treasuryGrowth;$RationalNumberCopyWith<$Res>? get decentralisationConstant;$NonceCopyWith<$Res>? get extraEntropy;$ProtocolVersionCopyWith<$Res>? get protocolVersion;
}

/// @nodoc
class _$ProtocolParamUpdateCopyWithImpl<$Res,$Val extends ProtocolParamUpdate> implements $ProtocolParamUpdateCopyWith<$Res> {
  _$ProtocolParamUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minFeeA = freezed,Object? minFeeB = freezed,Object? maxBlockSize = freezed,Object? maxTxSize = freezed,Object? maxBlockHeaderSize = freezed,Object? keyDeposit = freezed,Object? poolDeposit = freezed,Object? maxEpoch = freezed,Object? nOpt = freezed,Object? poolPledgeInfluence = freezed,Object? expansionRate = freezed,Object? treasuryGrowth = freezed,Object? decentralisationConstant = freezed,Object? extraEntropy = freezed,Object? protocolVersion = freezed,Object? minUtxo = freezed,Object? minPoolCost = freezed,Object? adaPerUtxoByte = freezed,Object? costmdls = freezed,Object? executionCosts = freezed,Object? maxTxExUnits = freezed,Object? maxBlockExUnits = freezed,Object? maxValSize = freezed,Object? collateralPercentage = freezed,Object? maxCollateralInputs = freezed,}) {
  return _then(_value.copyWith(
minFeeA: freezed == minFeeA ? _value.minFeeA : minFeeA // ignore: cast_nullable_to_non_nullable
as BigInt?,minFeeB: freezed == minFeeB ? _value.minFeeB : minFeeB // ignore: cast_nullable_to_non_nullable
as BigInt?,maxBlockSize: freezed == maxBlockSize ? _value.maxBlockSize : maxBlockSize // ignore: cast_nullable_to_non_nullable
as int?,maxTxSize: freezed == maxTxSize ? _value.maxTxSize : maxTxSize // ignore: cast_nullable_to_non_nullable
as int?,maxBlockHeaderSize: freezed == maxBlockHeaderSize ? _value.maxBlockHeaderSize : maxBlockHeaderSize // ignore: cast_nullable_to_non_nullable
as int?,keyDeposit: freezed == keyDeposit ? _value.keyDeposit : keyDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,poolDeposit: freezed == poolDeposit ? _value.poolDeposit : poolDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,maxEpoch: freezed == maxEpoch ? _value.maxEpoch : maxEpoch // ignore: cast_nullable_to_non_nullable
as int?,nOpt: freezed == nOpt ? _value.nOpt : nOpt // ignore: cast_nullable_to_non_nullable
as int?,poolPledgeInfluence: freezed == poolPledgeInfluence ? _value.poolPledgeInfluence : poolPledgeInfluence // ignore: cast_nullable_to_non_nullable
as RationalNumber?,expansionRate: freezed == expansionRate ? _value.expansionRate : expansionRate // ignore: cast_nullable_to_non_nullable
as RationalNumber?,treasuryGrowth: freezed == treasuryGrowth ? _value.treasuryGrowth : treasuryGrowth // ignore: cast_nullable_to_non_nullable
as RationalNumber?,decentralisationConstant: freezed == decentralisationConstant ? _value.decentralisationConstant : decentralisationConstant // ignore: cast_nullable_to_non_nullable
as RationalNumber?,extraEntropy: freezed == extraEntropy ? _value.extraEntropy : extraEntropy // ignore: cast_nullable_to_non_nullable
as Nonce?,protocolVersion: freezed == protocolVersion ? _value.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as ProtocolVersion?,minUtxo: freezed == minUtxo ? _value.minUtxo : minUtxo // ignore: cast_nullable_to_non_nullable
as BigInt?,minPoolCost: freezed == minPoolCost ? _value.minPoolCost : minPoolCost // ignore: cast_nullable_to_non_nullable
as BigInt?,adaPerUtxoByte: freezed == adaPerUtxoByte ? _value.adaPerUtxoByte : adaPerUtxoByte // ignore: cast_nullable_to_non_nullable
as BigInt?,costmdls: freezed == costmdls ? _value.costmdls : costmdls // ignore: cast_nullable_to_non_nullable
as CborValue?,executionCosts: freezed == executionCosts ? _value.executionCosts : executionCosts // ignore: cast_nullable_to_non_nullable
as CborValue?,maxTxExUnits: freezed == maxTxExUnits ? _value.maxTxExUnits : maxTxExUnits // ignore: cast_nullable_to_non_nullable
as CborValue?,maxBlockExUnits: freezed == maxBlockExUnits ? _value.maxBlockExUnits : maxBlockExUnits // ignore: cast_nullable_to_non_nullable
as CborValue?,maxValSize: freezed == maxValSize ? _value.maxValSize : maxValSize // ignore: cast_nullable_to_non_nullable
as BigInt?,collateralPercentage: freezed == collateralPercentage ? _value.collateralPercentage : collateralPercentage // ignore: cast_nullable_to_non_nullable
as int?,maxCollateralInputs: freezed == maxCollateralInputs ? _value.maxCollateralInputs : maxCollateralInputs // ignore: cast_nullable_to_non_nullable
as int?,
  )as $Val);
}
/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res>? get poolPledgeInfluence {
    if (_value.poolPledgeInfluence == null) {
    return null;
  }

  return $RationalNumberCopyWith<$Res>(_value.poolPledgeInfluence!, (value) {
    return _then(_value.copyWith(poolPledgeInfluence: value) as $Val);
  });
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res>? get expansionRate {
    if (_value.expansionRate == null) {
    return null;
  }

  return $RationalNumberCopyWith<$Res>(_value.expansionRate!, (value) {
    return _then(_value.copyWith(expansionRate: value) as $Val);
  });
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res>? get treasuryGrowth {
    if (_value.treasuryGrowth == null) {
    return null;
  }

  return $RationalNumberCopyWith<$Res>(_value.treasuryGrowth!, (value) {
    return _then(_value.copyWith(treasuryGrowth: value) as $Val);
  });
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res>? get decentralisationConstant {
    if (_value.decentralisationConstant == null) {
    return null;
  }

  return $RationalNumberCopyWith<$Res>(_value.decentralisationConstant!, (value) {
    return _then(_value.copyWith(decentralisationConstant: value) as $Val);
  });
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NonceCopyWith<$Res>? get extraEntropy {
    if (_value.extraEntropy == null) {
    return null;
  }

  return $NonceCopyWith<$Res>(_value.extraEntropy!, (value) {
    return _then(_value.copyWith(extraEntropy: value) as $Val);
  });
}/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProtocolVersionCopyWith<$Res>? get protocolVersion {
    if (_value.protocolVersion == null) {
    return null;
  }

  return $ProtocolVersionCopyWith<$Res>(_value.protocolVersion!, (value) {
    return _then(_value.copyWith(protocolVersion: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ProtocolParamUpdateImplCopyWith<$Res> implements $ProtocolParamUpdateCopyWith<$Res> {
  factory _$$ProtocolParamUpdateImplCopyWith(_$ProtocolParamUpdateImpl value, $Res Function(_$ProtocolParamUpdateImpl) then) = __$$ProtocolParamUpdateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 BigInt? minFeeA, BigInt? minFeeB, int? maxBlockSize, int? maxTxSize, int? maxBlockHeaderSize, BigInt? keyDeposit, BigInt? poolDeposit, int? maxEpoch, int? nOpt, RationalNumber? poolPledgeInfluence, RationalNumber? expansionRate, RationalNumber? treasuryGrowth,@Deprecated("") RationalNumber? decentralisationConstant,@Deprecated("Removed in Babbage era") Nonce? extraEntropy, ProtocolVersion? protocolVersion,@Deprecated("") BigInt? minUtxo, BigInt? minPoolCost, BigInt? adaPerUtxoByte, CborValue? costmdls, CborValue? executionCosts, CborValue? maxTxExUnits, CborValue? maxBlockExUnits, BigInt? maxValSize, int? collateralPercentage, int? maxCollateralInputs
});


@override $RationalNumberCopyWith<$Res>? get poolPledgeInfluence;@override $RationalNumberCopyWith<$Res>? get expansionRate;@override $RationalNumberCopyWith<$Res>? get treasuryGrowth;@override $RationalNumberCopyWith<$Res>? get decentralisationConstant;@override $NonceCopyWith<$Res>? get extraEntropy;@override $ProtocolVersionCopyWith<$Res>? get protocolVersion;
}

/// @nodoc
class __$$ProtocolParamUpdateImplCopyWithImpl<$Res> extends _$ProtocolParamUpdateCopyWithImpl<$Res, _$ProtocolParamUpdateImpl> implements _$$ProtocolParamUpdateImplCopyWith<$Res> {
  __$$ProtocolParamUpdateImplCopyWithImpl(_$ProtocolParamUpdateImpl _value, $Res Function(_$ProtocolParamUpdateImpl) _then)
      : super(_value, _then);


/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minFeeA = freezed,Object? minFeeB = freezed,Object? maxBlockSize = freezed,Object? maxTxSize = freezed,Object? maxBlockHeaderSize = freezed,Object? keyDeposit = freezed,Object? poolDeposit = freezed,Object? maxEpoch = freezed,Object? nOpt = freezed,Object? poolPledgeInfluence = freezed,Object? expansionRate = freezed,Object? treasuryGrowth = freezed,Object? decentralisationConstant = freezed,Object? extraEntropy = freezed,Object? protocolVersion = freezed,Object? minUtxo = freezed,Object? minPoolCost = freezed,Object? adaPerUtxoByte = freezed,Object? costmdls = freezed,Object? executionCosts = freezed,Object? maxTxExUnits = freezed,Object? maxBlockExUnits = freezed,Object? maxValSize = freezed,Object? collateralPercentage = freezed,Object? maxCollateralInputs = freezed,}) {
  return _then(_$ProtocolParamUpdateImpl(
minFeeA: freezed == minFeeA ? _value.minFeeA : minFeeA // ignore: cast_nullable_to_non_nullable
as BigInt?,minFeeB: freezed == minFeeB ? _value.minFeeB : minFeeB // ignore: cast_nullable_to_non_nullable
as BigInt?,maxBlockSize: freezed == maxBlockSize ? _value.maxBlockSize : maxBlockSize // ignore: cast_nullable_to_non_nullable
as int?,maxTxSize: freezed == maxTxSize ? _value.maxTxSize : maxTxSize // ignore: cast_nullable_to_non_nullable
as int?,maxBlockHeaderSize: freezed == maxBlockHeaderSize ? _value.maxBlockHeaderSize : maxBlockHeaderSize // ignore: cast_nullable_to_non_nullable
as int?,keyDeposit: freezed == keyDeposit ? _value.keyDeposit : keyDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,poolDeposit: freezed == poolDeposit ? _value.poolDeposit : poolDeposit // ignore: cast_nullable_to_non_nullable
as BigInt?,maxEpoch: freezed == maxEpoch ? _value.maxEpoch : maxEpoch // ignore: cast_nullable_to_non_nullable
as int?,nOpt: freezed == nOpt ? _value.nOpt : nOpt // ignore: cast_nullable_to_non_nullable
as int?,poolPledgeInfluence: freezed == poolPledgeInfluence ? _value.poolPledgeInfluence : poolPledgeInfluence // ignore: cast_nullable_to_non_nullable
as RationalNumber?,expansionRate: freezed == expansionRate ? _value.expansionRate : expansionRate // ignore: cast_nullable_to_non_nullable
as RationalNumber?,treasuryGrowth: freezed == treasuryGrowth ? _value.treasuryGrowth : treasuryGrowth // ignore: cast_nullable_to_non_nullable
as RationalNumber?,decentralisationConstant: freezed == decentralisationConstant ? _value.decentralisationConstant : decentralisationConstant // ignore: cast_nullable_to_non_nullable
as RationalNumber?,extraEntropy: freezed == extraEntropy ? _value.extraEntropy : extraEntropy // ignore: cast_nullable_to_non_nullable
as Nonce?,protocolVersion: freezed == protocolVersion ? _value.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as ProtocolVersion?,minUtxo: freezed == minUtxo ? _value.minUtxo : minUtxo // ignore: cast_nullable_to_non_nullable
as BigInt?,minPoolCost: freezed == minPoolCost ? _value.minPoolCost : minPoolCost // ignore: cast_nullable_to_non_nullable
as BigInt?,adaPerUtxoByte: freezed == adaPerUtxoByte ? _value.adaPerUtxoByte : adaPerUtxoByte // ignore: cast_nullable_to_non_nullable
as BigInt?,costmdls: freezed == costmdls ? _value.costmdls : costmdls // ignore: cast_nullable_to_non_nullable
as CborValue?,executionCosts: freezed == executionCosts ? _value.executionCosts : executionCosts // ignore: cast_nullable_to_non_nullable
as CborValue?,maxTxExUnits: freezed == maxTxExUnits ? _value.maxTxExUnits : maxTxExUnits // ignore: cast_nullable_to_non_nullable
as CborValue?,maxBlockExUnits: freezed == maxBlockExUnits ? _value.maxBlockExUnits : maxBlockExUnits // ignore: cast_nullable_to_non_nullable
as CborValue?,maxValSize: freezed == maxValSize ? _value.maxValSize : maxValSize // ignore: cast_nullable_to_non_nullable
as BigInt?,collateralPercentage: freezed == collateralPercentage ? _value.collateralPercentage : collateralPercentage // ignore: cast_nullable_to_non_nullable
as int?,maxCollateralInputs: freezed == maxCollateralInputs ? _value.maxCollateralInputs : maxCollateralInputs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _$ProtocolParamUpdateImpl extends _ProtocolParamUpdate  {
  const _$ProtocolParamUpdateImpl({required this.minFeeA, required this.minFeeB, required this.maxBlockSize, required this.maxTxSize, required this.maxBlockHeaderSize, required this.keyDeposit, required this.poolDeposit, required this.maxEpoch, required this.nOpt, required this.poolPledgeInfluence, required this.expansionRate, required this.treasuryGrowth, @Deprecated("") required this.decentralisationConstant, @Deprecated("Removed in Babbage era") required this.extraEntropy, required this.protocolVersion, @Deprecated("") required this.minUtxo, required this.minPoolCost, required this.adaPerUtxoByte, required this.costmdls, required this.executionCosts, required this.maxTxExUnits, required this.maxBlockExUnits, required this.maxValSize, required this.collateralPercentage, required this.maxCollateralInputs}): super._();

  

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

@override
String toString() {
  return 'ProtocolParamUpdate(minFeeA: $minFeeA, minFeeB: $minFeeB, maxBlockSize: $maxBlockSize, maxTxSize: $maxTxSize, maxBlockHeaderSize: $maxBlockHeaderSize, keyDeposit: $keyDeposit, poolDeposit: $poolDeposit, maxEpoch: $maxEpoch, nOpt: $nOpt, poolPledgeInfluence: $poolPledgeInfluence, expansionRate: $expansionRate, treasuryGrowth: $treasuryGrowth, decentralisationConstant: $decentralisationConstant, extraEntropy: $extraEntropy, protocolVersion: $protocolVersion, minUtxo: $minUtxo, minPoolCost: $minPoolCost, adaPerUtxoByte: $adaPerUtxoByte, costmdls: $costmdls, executionCosts: $executionCosts, maxTxExUnits: $maxTxExUnits, maxBlockExUnits: $maxBlockExUnits, maxValSize: $maxValSize, collateralPercentage: $collateralPercentage, maxCollateralInputs: $maxCollateralInputs)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ProtocolParamUpdateImpl&&(identical(other.minFeeA, minFeeA) || other.minFeeA == minFeeA)&&(identical(other.minFeeB, minFeeB) || other.minFeeB == minFeeB)&&(identical(other.maxBlockSize, maxBlockSize) || other.maxBlockSize == maxBlockSize)&&(identical(other.maxTxSize, maxTxSize) || other.maxTxSize == maxTxSize)&&(identical(other.maxBlockHeaderSize, maxBlockHeaderSize) || other.maxBlockHeaderSize == maxBlockHeaderSize)&&(identical(other.keyDeposit, keyDeposit) || other.keyDeposit == keyDeposit)&&(identical(other.poolDeposit, poolDeposit) || other.poolDeposit == poolDeposit)&&(identical(other.maxEpoch, maxEpoch) || other.maxEpoch == maxEpoch)&&(identical(other.nOpt, nOpt) || other.nOpt == nOpt)&&(identical(other.poolPledgeInfluence, poolPledgeInfluence) || other.poolPledgeInfluence == poolPledgeInfluence)&&(identical(other.expansionRate, expansionRate) || other.expansionRate == expansionRate)&&(identical(other.treasuryGrowth, treasuryGrowth) || other.treasuryGrowth == treasuryGrowth)&&(identical(other.decentralisationConstant, decentralisationConstant) || other.decentralisationConstant == decentralisationConstant)&&(identical(other.extraEntropy, extraEntropy) || other.extraEntropy == extraEntropy)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.minUtxo, minUtxo) || other.minUtxo == minUtxo)&&(identical(other.minPoolCost, minPoolCost) || other.minPoolCost == minPoolCost)&&(identical(other.adaPerUtxoByte, adaPerUtxoByte) || other.adaPerUtxoByte == adaPerUtxoByte)&&(identical(other.costmdls, costmdls) || other.costmdls == costmdls)&&(identical(other.executionCosts, executionCosts) || other.executionCosts == executionCosts)&&(identical(other.maxTxExUnits, maxTxExUnits) || other.maxTxExUnits == maxTxExUnits)&&(identical(other.maxBlockExUnits, maxBlockExUnits) || other.maxBlockExUnits == maxBlockExUnits)&&(identical(other.maxValSize, maxValSize) || other.maxValSize == maxValSize)&&(identical(other.collateralPercentage, collateralPercentage) || other.collateralPercentage == collateralPercentage)&&(identical(other.maxCollateralInputs, maxCollateralInputs) || other.maxCollateralInputs == maxCollateralInputs));
}


@override
int get hashCode => Object.hashAll([runtimeType,minFeeA,minFeeB,maxBlockSize,maxTxSize,maxBlockHeaderSize,keyDeposit,poolDeposit,maxEpoch,nOpt,poolPledgeInfluence,expansionRate,treasuryGrowth,decentralisationConstant,extraEntropy,protocolVersion,minUtxo,minPoolCost,adaPerUtxoByte,costmdls,executionCosts,maxTxExUnits,maxBlockExUnits,maxValSize,collateralPercentage,maxCollateralInputs]);

/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ProtocolParamUpdateImplCopyWith<_$ProtocolParamUpdateImpl> get copyWith => __$$ProtocolParamUpdateImplCopyWithImpl<_$ProtocolParamUpdateImpl>(this, _$identity);








}


abstract class _ProtocolParamUpdate extends ProtocolParamUpdate {
  const factory _ProtocolParamUpdate({required final  BigInt? minFeeA, required final  BigInt? minFeeB, required final  int? maxBlockSize, required final  int? maxTxSize, required final  int? maxBlockHeaderSize, required final  BigInt? keyDeposit, required final  BigInt? poolDeposit, required final  int? maxEpoch, required final  int? nOpt, required final  RationalNumber? poolPledgeInfluence, required final  RationalNumber? expansionRate, required final  RationalNumber? treasuryGrowth, @Deprecated("") required final  RationalNumber? decentralisationConstant, @Deprecated("Removed in Babbage era") required final  Nonce? extraEntropy, required final  ProtocolVersion? protocolVersion, @Deprecated("") required final  BigInt? minUtxo, required final  BigInt? minPoolCost, required final  BigInt? adaPerUtxoByte, required final  CborValue? costmdls, required final  CborValue? executionCosts, required final  CborValue? maxTxExUnits, required final  CborValue? maxBlockExUnits, required final  BigInt? maxValSize, required final  int? collateralPercentage, required final  int? maxCollateralInputs}) = _$ProtocolParamUpdateImpl;
  const _ProtocolParamUpdate._(): super._();

  

@override BigInt? get minFeeA;// 0
@override BigInt? get minFeeB;// 1
@override int? get maxBlockSize;// 2
@override int? get maxTxSize;// 3
@override int? get maxBlockHeaderSize;// 4
@override BigInt? get keyDeposit;// 5
@override BigInt? get poolDeposit;// 6
@override int? get maxEpoch;// 7
@override int? get nOpt;// 8
@override RationalNumber? get poolPledgeInfluence;// 9
@override RationalNumber? get expansionRate;// 10
@override RationalNumber? get treasuryGrowth;// 11
@override@Deprecated("") RationalNumber? get decentralisationConstant;// 12
@override@Deprecated("Removed in Babbage era") Nonce? get extraEntropy;// 13
@override ProtocolVersion? get protocolVersion;// 14
@override@Deprecated("") BigInt? get minUtxo;// 15
@override BigInt? get minPoolCost;// 16
@override BigInt? get adaPerUtxoByte;// 17
// Alonzo changes
@override CborValue? get costmdls;// 18
@override CborValue? get executionCosts;// 19
@override CborValue? get maxTxExUnits;// 20
@override CborValue? get maxBlockExUnits;// 21
@override BigInt? get maxValSize;// 22
@override int? get collateralPercentage;// 23
@override int? get maxCollateralInputs;
/// Create a copy of ProtocolParamUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ProtocolParamUpdateImplCopyWith<_$ProtocolParamUpdateImpl> get copyWith => throw _privateConstructorUsedError;

}
