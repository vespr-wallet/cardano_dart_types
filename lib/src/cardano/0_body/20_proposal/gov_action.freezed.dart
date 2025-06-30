// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gov_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GovAction {










}

/// @nodoc
abstract class $GovActionCopyWith<$Res>  {
  factory $GovActionCopyWith(GovAction value, $Res Function(GovAction) then) = _$GovActionCopyWithImpl<$Res, GovAction>;



}

/// @nodoc
class _$GovActionCopyWithImpl<$Res,$Val extends GovAction> implements $GovActionCopyWith<$Res> {
  _$GovActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$GovAction_ParameterChangeImplCopyWith<$Res>  {
  factory _$$GovAction_ParameterChangeImplCopyWith(_$GovAction_ParameterChangeImpl value, $Res Function(_$GovAction_ParameterChangeImpl) then) = __$$GovAction_ParameterChangeImplCopyWithImpl<$Res>;
@useResult
$Res call({
 GovActionId prevGovActionId, ProtocolParamUpdate protocolParamUpdate, Uint8List? policyHash
});


$GovActionIdCopyWith<$Res> get prevGovActionId;$ProtocolParamUpdateCopyWith<$Res> get protocolParamUpdate;
}

/// @nodoc
class __$$GovAction_ParameterChangeImplCopyWithImpl<$Res> extends _$GovActionCopyWithImpl<$Res, _$GovAction_ParameterChangeImpl> implements _$$GovAction_ParameterChangeImplCopyWith<$Res> {
  __$$GovAction_ParameterChangeImplCopyWithImpl(_$GovAction_ParameterChangeImpl _value, $Res Function(_$GovAction_ParameterChangeImpl) _then)
      : super(_value, _then);


/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prevGovActionId = null,Object? protocolParamUpdate = null,Object? policyHash = freezed,}) {
  return _then(_$GovAction_ParameterChangeImpl(
prevGovActionId: null == prevGovActionId ? _value.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,protocolParamUpdate: null == protocolParamUpdate ? _value.protocolParamUpdate : protocolParamUpdate // ignore: cast_nullable_to_non_nullable
as ProtocolParamUpdate,policyHash: freezed == policyHash ? _value.policyHash : policyHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_value.prevGovActionId, (value) {
    return _then(_value.copyWith(prevGovActionId: value) );
  });
}/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProtocolParamUpdateCopyWith<$Res> get protocolParamUpdate {
  
  return $ProtocolParamUpdateCopyWith<$Res>(_value.protocolParamUpdate, (value) {
    return _then(_value.copyWith(protocolParamUpdate: value) );
  });
}
}

/// @nodoc


class _$GovAction_ParameterChangeImpl extends GovAction_ParameterChange  {
  const _$GovAction_ParameterChangeImpl({required this.prevGovActionId, required this.protocolParamUpdate, required this.policyHash}): super._();

  

@override final  GovActionId prevGovActionId;
@override final  ProtocolParamUpdate protocolParamUpdate;
@override final  Uint8List? policyHash;

@override
String toString() {
  return 'GovAction.parameterChange(prevGovActionId: $prevGovActionId, protocolParamUpdate: $protocolParamUpdate, policyHash: $policyHash)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GovAction_ParameterChangeImpl&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&(identical(other.protocolParamUpdate, protocolParamUpdate) || other.protocolParamUpdate == protocolParamUpdate)&&const DeepCollectionEquality().equals(other.policyHash, policyHash));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,protocolParamUpdate,const DeepCollectionEquality().hash(policyHash));

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GovAction_ParameterChangeImplCopyWith<_$GovAction_ParameterChangeImpl> get copyWith => __$$GovAction_ParameterChangeImplCopyWithImpl<_$GovAction_ParameterChangeImpl>(this, _$identity);








}


abstract class GovAction_ParameterChange extends GovAction {
  const factory GovAction_ParameterChange({required final  GovActionId prevGovActionId, required final  ProtocolParamUpdate protocolParamUpdate, required final  Uint8List? policyHash}) = _$GovAction_ParameterChangeImpl;
  const GovAction_ParameterChange._(): super._();

  

 GovActionId get prevGovActionId; ProtocolParamUpdate get protocolParamUpdate; Uint8List? get policyHash;
/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$GovAction_ParameterChangeImplCopyWith<_$GovAction_ParameterChangeImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$GovAction_HardForkInitiationImplCopyWith<$Res>  {
  factory _$$GovAction_HardForkInitiationImplCopyWith(_$GovAction_HardForkInitiationImpl value, $Res Function(_$GovAction_HardForkInitiationImpl) then) = __$$GovAction_HardForkInitiationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 GovActionId prevGovActionId, ProtocolVersion protocolVersion
});


$GovActionIdCopyWith<$Res> get prevGovActionId;$ProtocolVersionCopyWith<$Res> get protocolVersion;
}

/// @nodoc
class __$$GovAction_HardForkInitiationImplCopyWithImpl<$Res> extends _$GovActionCopyWithImpl<$Res, _$GovAction_HardForkInitiationImpl> implements _$$GovAction_HardForkInitiationImplCopyWith<$Res> {
  __$$GovAction_HardForkInitiationImplCopyWithImpl(_$GovAction_HardForkInitiationImpl _value, $Res Function(_$GovAction_HardForkInitiationImpl) _then)
      : super(_value, _then);


/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prevGovActionId = null,Object? protocolVersion = null,}) {
  return _then(_$GovAction_HardForkInitiationImpl(
prevGovActionId: null == prevGovActionId ? _value.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,protocolVersion: null == protocolVersion ? _value.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as ProtocolVersion,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_value.prevGovActionId, (value) {
    return _then(_value.copyWith(prevGovActionId: value) );
  });
}/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProtocolVersionCopyWith<$Res> get protocolVersion {
  
  return $ProtocolVersionCopyWith<$Res>(_value.protocolVersion, (value) {
    return _then(_value.copyWith(protocolVersion: value) );
  });
}
}

/// @nodoc


class _$GovAction_HardForkInitiationImpl extends GovAction_HardForkInitiation  {
  const _$GovAction_HardForkInitiationImpl({required this.prevGovActionId, required this.protocolVersion}): super._();

  

@override final  GovActionId prevGovActionId;
@override final  ProtocolVersion protocolVersion;

@override
String toString() {
  return 'GovAction.hardForkInitiation(prevGovActionId: $prevGovActionId, protocolVersion: $protocolVersion)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GovAction_HardForkInitiationImpl&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,protocolVersion);

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GovAction_HardForkInitiationImplCopyWith<_$GovAction_HardForkInitiationImpl> get copyWith => __$$GovAction_HardForkInitiationImplCopyWithImpl<_$GovAction_HardForkInitiationImpl>(this, _$identity);








}


abstract class GovAction_HardForkInitiation extends GovAction {
  const factory GovAction_HardForkInitiation({required final  GovActionId prevGovActionId, required final  ProtocolVersion protocolVersion}) = _$GovAction_HardForkInitiationImpl;
  const GovAction_HardForkInitiation._(): super._();

  

 GovActionId get prevGovActionId; ProtocolVersion get protocolVersion;
/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$GovAction_HardForkInitiationImplCopyWith<_$GovAction_HardForkInitiationImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$GovAction_TreasuryWithdrawalsImplCopyWith<$Res>  {
  factory _$$GovAction_TreasuryWithdrawalsImplCopyWith(_$GovAction_TreasuryWithdrawalsImpl value, $Res Function(_$GovAction_TreasuryWithdrawalsImpl) then) = __$$GovAction_TreasuryWithdrawalsImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<Withdraw> withdrawals, Uint8List? policyHash
});



}

/// @nodoc
class __$$GovAction_TreasuryWithdrawalsImplCopyWithImpl<$Res> extends _$GovActionCopyWithImpl<$Res, _$GovAction_TreasuryWithdrawalsImpl> implements _$$GovAction_TreasuryWithdrawalsImplCopyWith<$Res> {
  __$$GovAction_TreasuryWithdrawalsImplCopyWithImpl(_$GovAction_TreasuryWithdrawalsImpl _value, $Res Function(_$GovAction_TreasuryWithdrawalsImpl) _then)
      : super(_value, _then);


/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? withdrawals = null,Object? policyHash = freezed,}) {
  return _then(_$GovAction_TreasuryWithdrawalsImpl(
withdrawals: null == withdrawals ? _value._withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<Withdraw>,policyHash: freezed == policyHash ? _value.policyHash : policyHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}


}

/// @nodoc


class _$GovAction_TreasuryWithdrawalsImpl extends GovAction_TreasuryWithdrawals  {
  const _$GovAction_TreasuryWithdrawalsImpl({required final  List<Withdraw> withdrawals, required this.policyHash}): _withdrawals = withdrawals,super._();

  

 final  List<Withdraw> _withdrawals;
@override List<Withdraw> get withdrawals {
  if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_withdrawals);
}

@override final  Uint8List? policyHash;

@override
String toString() {
  return 'GovAction.treasuryWithdrawals(withdrawals: $withdrawals, policyHash: $policyHash)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GovAction_TreasuryWithdrawalsImpl&&const DeepCollectionEquality().equals(other._withdrawals, _withdrawals)&&const DeepCollectionEquality().equals(other.policyHash, policyHash));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_withdrawals),const DeepCollectionEquality().hash(policyHash));

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GovAction_TreasuryWithdrawalsImplCopyWith<_$GovAction_TreasuryWithdrawalsImpl> get copyWith => __$$GovAction_TreasuryWithdrawalsImplCopyWithImpl<_$GovAction_TreasuryWithdrawalsImpl>(this, _$identity);








}


abstract class GovAction_TreasuryWithdrawals extends GovAction {
  const factory GovAction_TreasuryWithdrawals({required final  List<Withdraw> withdrawals, required final  Uint8List? policyHash}) = _$GovAction_TreasuryWithdrawalsImpl;
  const GovAction_TreasuryWithdrawals._(): super._();

  

 List<Withdraw> get withdrawals; Uint8List? get policyHash;
/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$GovAction_TreasuryWithdrawalsImplCopyWith<_$GovAction_TreasuryWithdrawalsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$GovAction_NoConfidenceImplCopyWith<$Res>  {
  factory _$$GovAction_NoConfidenceImplCopyWith(_$GovAction_NoConfidenceImpl value, $Res Function(_$GovAction_NoConfidenceImpl) then) = __$$GovAction_NoConfidenceImplCopyWithImpl<$Res>;
@useResult
$Res call({
 GovActionId prevGovActionId
});


$GovActionIdCopyWith<$Res> get prevGovActionId;
}

/// @nodoc
class __$$GovAction_NoConfidenceImplCopyWithImpl<$Res> extends _$GovActionCopyWithImpl<$Res, _$GovAction_NoConfidenceImpl> implements _$$GovAction_NoConfidenceImplCopyWith<$Res> {
  __$$GovAction_NoConfidenceImplCopyWithImpl(_$GovAction_NoConfidenceImpl _value, $Res Function(_$GovAction_NoConfidenceImpl) _then)
      : super(_value, _then);


/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prevGovActionId = null,}) {
  return _then(_$GovAction_NoConfidenceImpl(
prevGovActionId: null == prevGovActionId ? _value.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_value.prevGovActionId, (value) {
    return _then(_value.copyWith(prevGovActionId: value) );
  });
}
}

/// @nodoc


class _$GovAction_NoConfidenceImpl extends GovAction_NoConfidence  {
  const _$GovAction_NoConfidenceImpl({required this.prevGovActionId}): super._();

  

@override final  GovActionId prevGovActionId;

@override
String toString() {
  return 'GovAction.noConfidence(prevGovActionId: $prevGovActionId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GovAction_NoConfidenceImpl&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId);

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GovAction_NoConfidenceImplCopyWith<_$GovAction_NoConfidenceImpl> get copyWith => __$$GovAction_NoConfidenceImplCopyWithImpl<_$GovAction_NoConfidenceImpl>(this, _$identity);








}


abstract class GovAction_NoConfidence extends GovAction {
  const factory GovAction_NoConfidence({required final  GovActionId prevGovActionId}) = _$GovAction_NoConfidenceImpl;
  const GovAction_NoConfidence._(): super._();

  

 GovActionId get prevGovActionId;
/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$GovAction_NoConfidenceImplCopyWith<_$GovAction_NoConfidenceImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$GovAction_UpdateCommitteeImplCopyWith<$Res>  {
  factory _$$GovAction_UpdateCommitteeImplCopyWith(_$GovAction_UpdateCommitteeImpl value, $Res Function(_$GovAction_UpdateCommitteeImpl) then) = __$$GovAction_UpdateCommitteeImplCopyWithImpl<$Res>;
@useResult
$Res call({
 GovActionId prevGovActionId, Set<Credential> membersForRemoval, Map<Credential, int> newMembersAndTerms, RationalNumber quorumThreshold
});


$GovActionIdCopyWith<$Res> get prevGovActionId;$RationalNumberCopyWith<$Res> get quorumThreshold;
}

/// @nodoc
class __$$GovAction_UpdateCommitteeImplCopyWithImpl<$Res> extends _$GovActionCopyWithImpl<$Res, _$GovAction_UpdateCommitteeImpl> implements _$$GovAction_UpdateCommitteeImplCopyWith<$Res> {
  __$$GovAction_UpdateCommitteeImplCopyWithImpl(_$GovAction_UpdateCommitteeImpl _value, $Res Function(_$GovAction_UpdateCommitteeImpl) _then)
      : super(_value, _then);


/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prevGovActionId = null,Object? membersForRemoval = null,Object? newMembersAndTerms = null,Object? quorumThreshold = null,}) {
  return _then(_$GovAction_UpdateCommitteeImpl(
prevGovActionId: null == prevGovActionId ? _value.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,membersForRemoval: null == membersForRemoval ? _value._membersForRemoval : membersForRemoval // ignore: cast_nullable_to_non_nullable
as Set<Credential>,newMembersAndTerms: null == newMembersAndTerms ? _value._newMembersAndTerms : newMembersAndTerms // ignore: cast_nullable_to_non_nullable
as Map<Credential, int>,quorumThreshold: null == quorumThreshold ? _value.quorumThreshold : quorumThreshold // ignore: cast_nullable_to_non_nullable
as RationalNumber,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_value.prevGovActionId, (value) {
    return _then(_value.copyWith(prevGovActionId: value) );
  });
}/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res> get quorumThreshold {
  
  return $RationalNumberCopyWith<$Res>(_value.quorumThreshold, (value) {
    return _then(_value.copyWith(quorumThreshold: value) );
  });
}
}

/// @nodoc


class _$GovAction_UpdateCommitteeImpl extends GovAction_UpdateCommittee  {
  const _$GovAction_UpdateCommitteeImpl({required this.prevGovActionId, required final  Set<Credential> membersForRemoval, required final  Map<Credential, int> newMembersAndTerms, required this.quorumThreshold}): _membersForRemoval = membersForRemoval,_newMembersAndTerms = newMembersAndTerms,super._();

  

@override final  GovActionId prevGovActionId;
 final  Set<Credential> _membersForRemoval;
@override Set<Credential> get membersForRemoval {
  if (_membersForRemoval is EqualUnmodifiableSetView) return _membersForRemoval;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_membersForRemoval);
}

 final  Map<Credential, int> _newMembersAndTerms;
@override Map<Credential, int> get newMembersAndTerms {
  if (_newMembersAndTerms is EqualUnmodifiableMapView) return _newMembersAndTerms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_newMembersAndTerms);
}

@override final  RationalNumber quorumThreshold;

@override
String toString() {
  return 'GovAction.updateCommittee(prevGovActionId: $prevGovActionId, membersForRemoval: $membersForRemoval, newMembersAndTerms: $newMembersAndTerms, quorumThreshold: $quorumThreshold)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GovAction_UpdateCommitteeImpl&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&const DeepCollectionEquality().equals(other._membersForRemoval, _membersForRemoval)&&const DeepCollectionEquality().equals(other._newMembersAndTerms, _newMembersAndTerms)&&(identical(other.quorumThreshold, quorumThreshold) || other.quorumThreshold == quorumThreshold));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,const DeepCollectionEquality().hash(_membersForRemoval),const DeepCollectionEquality().hash(_newMembersAndTerms),quorumThreshold);

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GovAction_UpdateCommitteeImplCopyWith<_$GovAction_UpdateCommitteeImpl> get copyWith => __$$GovAction_UpdateCommitteeImplCopyWithImpl<_$GovAction_UpdateCommitteeImpl>(this, _$identity);








}


abstract class GovAction_UpdateCommittee extends GovAction {
  const factory GovAction_UpdateCommittee({required final  GovActionId prevGovActionId, required final  Set<Credential> membersForRemoval, required final  Map<Credential, int> newMembersAndTerms, required final  RationalNumber quorumThreshold}) = _$GovAction_UpdateCommitteeImpl;
  const GovAction_UpdateCommittee._(): super._();

  

 GovActionId get prevGovActionId; Set<Credential> get membersForRemoval; Map<Credential, int> get newMembersAndTerms; RationalNumber get quorumThreshold;
/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$GovAction_UpdateCommitteeImplCopyWith<_$GovAction_UpdateCommitteeImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$GovAction_NewConstitutionImplCopyWith<$Res>  {
  factory _$$GovAction_NewConstitutionImplCopyWith(_$GovAction_NewConstitutionImpl value, $Res Function(_$GovAction_NewConstitutionImpl) then) = __$$GovAction_NewConstitutionImplCopyWithImpl<$Res>;
@useResult
$Res call({
 GovActionId prevGovActionId, Constitution constitution
});


$GovActionIdCopyWith<$Res> get prevGovActionId;$ConstitutionCopyWith<$Res> get constitution;
}

/// @nodoc
class __$$GovAction_NewConstitutionImplCopyWithImpl<$Res> extends _$GovActionCopyWithImpl<$Res, _$GovAction_NewConstitutionImpl> implements _$$GovAction_NewConstitutionImplCopyWith<$Res> {
  __$$GovAction_NewConstitutionImplCopyWithImpl(_$GovAction_NewConstitutionImpl _value, $Res Function(_$GovAction_NewConstitutionImpl) _then)
      : super(_value, _then);


/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prevGovActionId = null,Object? constitution = null,}) {
  return _then(_$GovAction_NewConstitutionImpl(
prevGovActionId: null == prevGovActionId ? _value.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,constitution: null == constitution ? _value.constitution : constitution // ignore: cast_nullable_to_non_nullable
as Constitution,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_value.prevGovActionId, (value) {
    return _then(_value.copyWith(prevGovActionId: value) );
  });
}/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConstitutionCopyWith<$Res> get constitution {
  
  return $ConstitutionCopyWith<$Res>(_value.constitution, (value) {
    return _then(_value.copyWith(constitution: value) );
  });
}
}

/// @nodoc


class _$GovAction_NewConstitutionImpl extends GovAction_NewConstitution  {
  const _$GovAction_NewConstitutionImpl({required this.prevGovActionId, required this.constitution}): super._();

  

@override final  GovActionId prevGovActionId;
@override final  Constitution constitution;

@override
String toString() {
  return 'GovAction.newConstitution(prevGovActionId: $prevGovActionId, constitution: $constitution)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GovAction_NewConstitutionImpl&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&(identical(other.constitution, constitution) || other.constitution == constitution));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,constitution);

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GovAction_NewConstitutionImplCopyWith<_$GovAction_NewConstitutionImpl> get copyWith => __$$GovAction_NewConstitutionImplCopyWithImpl<_$GovAction_NewConstitutionImpl>(this, _$identity);








}


abstract class GovAction_NewConstitution extends GovAction {
  const factory GovAction_NewConstitution({required final  GovActionId prevGovActionId, required final  Constitution constitution}) = _$GovAction_NewConstitutionImpl;
  const GovAction_NewConstitution._(): super._();

  

 GovActionId get prevGovActionId; Constitution get constitution;
/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$GovAction_NewConstitutionImplCopyWith<_$GovAction_NewConstitutionImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$GovAction_InfoActionImplCopyWith<$Res>  {
  factory _$$GovAction_InfoActionImplCopyWith(_$GovAction_InfoActionImpl value, $Res Function(_$GovAction_InfoActionImpl) then) = __$$GovAction_InfoActionImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$GovAction_InfoActionImplCopyWithImpl<$Res> extends _$GovActionCopyWithImpl<$Res, _$GovAction_InfoActionImpl> implements _$$GovAction_InfoActionImplCopyWith<$Res> {
  __$$GovAction_InfoActionImplCopyWithImpl(_$GovAction_InfoActionImpl _value, $Res Function(_$GovAction_InfoActionImpl) _then)
      : super(_value, _then);


/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$GovAction_InfoActionImpl extends GovAction_InfoAction  {
  const _$GovAction_InfoActionImpl(): super._();

  



@override
String toString() {
  return 'GovAction.infoAction()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GovAction_InfoActionImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class GovAction_InfoAction extends GovAction {
  const factory GovAction_InfoAction() = _$GovAction_InfoActionImpl;
  const GovAction_InfoAction._(): super._();

  



}
