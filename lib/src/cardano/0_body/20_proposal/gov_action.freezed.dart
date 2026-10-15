// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gov_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GovAction {

 CborLengthType get lengthType;
/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovActionCopyWith<GovAction> get copyWith => _$GovActionCopyWithImpl<GovAction>(this as GovAction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovAction&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,lengthType);

@override
String toString() {
  return 'GovAction(lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $GovActionCopyWith<$Res>  {
  factory $GovActionCopyWith(GovAction value, $Res Function(GovAction) _then) = _$GovActionCopyWithImpl;
@useResult
$Res call({
 CborLengthType lengthType
});




}
/// @nodoc
class _$GovActionCopyWithImpl<$Res>
    implements $GovActionCopyWith<$Res> {
  _$GovActionCopyWithImpl(this._self, this._then);

  final GovAction _self;
  final $Res Function(GovAction) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lengthType = null,}) {
  return _then(_self.copyWith(
lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class GovAction_ParameterChange extends GovAction {
  const GovAction_ParameterChange({required this.prevGovActionId, required this.protocolParamUpdate, required this.policyHash, this.lengthType = CborLengthType.definite}): super._();
  

 final  GovActionId prevGovActionId;
 final  ProtocolParamUpdate protocolParamUpdate;
 final  Uint8List? policyHash;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovAction_ParameterChangeCopyWith<GovAction_ParameterChange> get copyWith => _$GovAction_ParameterChangeCopyWithImpl<GovAction_ParameterChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovAction_ParameterChange&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&(identical(other.protocolParamUpdate, protocolParamUpdate) || other.protocolParamUpdate == protocolParamUpdate)&&const DeepCollectionEquality().equals(other.policyHash, policyHash)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,protocolParamUpdate,const DeepCollectionEquality().hash(policyHash),lengthType);

@override
String toString() {
  return 'GovAction.parameterChange(prevGovActionId: $prevGovActionId, protocolParamUpdate: $protocolParamUpdate, policyHash: $policyHash, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $GovAction_ParameterChangeCopyWith<$Res> implements $GovActionCopyWith<$Res> {
  factory $GovAction_ParameterChangeCopyWith(GovAction_ParameterChange value, $Res Function(GovAction_ParameterChange) _then) = _$GovAction_ParameterChangeCopyWithImpl;
@override @useResult
$Res call({
 GovActionId prevGovActionId, ProtocolParamUpdate protocolParamUpdate, Uint8List? policyHash, CborLengthType lengthType
});


$GovActionIdCopyWith<$Res> get prevGovActionId;$ProtocolParamUpdateCopyWith<$Res> get protocolParamUpdate;

}
/// @nodoc
class _$GovAction_ParameterChangeCopyWithImpl<$Res>
    implements $GovAction_ParameterChangeCopyWith<$Res> {
  _$GovAction_ParameterChangeCopyWithImpl(this._self, this._then);

  final GovAction_ParameterChange _self;
  final $Res Function(GovAction_ParameterChange) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prevGovActionId = null,Object? protocolParamUpdate = null,Object? policyHash = freezed,Object? lengthType = null,}) {
  return _then(GovAction_ParameterChange(
prevGovActionId: null == prevGovActionId ? _self.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,protocolParamUpdate: null == protocolParamUpdate ? _self.protocolParamUpdate : protocolParamUpdate // ignore: cast_nullable_to_non_nullable
as ProtocolParamUpdate,policyHash: freezed == policyHash ? _self.policyHash : policyHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_self.prevGovActionId, (value) {
    return _then(_self.copyWith(prevGovActionId: value));
  });
}/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProtocolParamUpdateCopyWith<$Res> get protocolParamUpdate {
  
  return $ProtocolParamUpdateCopyWith<$Res>(_self.protocolParamUpdate, (value) {
    return _then(_self.copyWith(protocolParamUpdate: value));
  });
}
}

/// @nodoc


class GovAction_HardForkInitiation extends GovAction {
  const GovAction_HardForkInitiation({required this.prevGovActionId, required this.protocolVersion, this.lengthType = CborLengthType.definite}): super._();
  

 final  GovActionId prevGovActionId;
 final  ProtocolVersion protocolVersion;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovAction_HardForkInitiationCopyWith<GovAction_HardForkInitiation> get copyWith => _$GovAction_HardForkInitiationCopyWithImpl<GovAction_HardForkInitiation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovAction_HardForkInitiation&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&(identical(other.protocolVersion, protocolVersion) || other.protocolVersion == protocolVersion)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,protocolVersion,lengthType);

@override
String toString() {
  return 'GovAction.hardForkInitiation(prevGovActionId: $prevGovActionId, protocolVersion: $protocolVersion, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $GovAction_HardForkInitiationCopyWith<$Res> implements $GovActionCopyWith<$Res> {
  factory $GovAction_HardForkInitiationCopyWith(GovAction_HardForkInitiation value, $Res Function(GovAction_HardForkInitiation) _then) = _$GovAction_HardForkInitiationCopyWithImpl;
@override @useResult
$Res call({
 GovActionId prevGovActionId, ProtocolVersion protocolVersion, CborLengthType lengthType
});


$GovActionIdCopyWith<$Res> get prevGovActionId;$ProtocolVersionCopyWith<$Res> get protocolVersion;

}
/// @nodoc
class _$GovAction_HardForkInitiationCopyWithImpl<$Res>
    implements $GovAction_HardForkInitiationCopyWith<$Res> {
  _$GovAction_HardForkInitiationCopyWithImpl(this._self, this._then);

  final GovAction_HardForkInitiation _self;
  final $Res Function(GovAction_HardForkInitiation) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prevGovActionId = null,Object? protocolVersion = null,Object? lengthType = null,}) {
  return _then(GovAction_HardForkInitiation(
prevGovActionId: null == prevGovActionId ? _self.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,protocolVersion: null == protocolVersion ? _self.protocolVersion : protocolVersion // ignore: cast_nullable_to_non_nullable
as ProtocolVersion,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_self.prevGovActionId, (value) {
    return _then(_self.copyWith(prevGovActionId: value));
  });
}/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProtocolVersionCopyWith<$Res> get protocolVersion {
  
  return $ProtocolVersionCopyWith<$Res>(_self.protocolVersion, (value) {
    return _then(_self.copyWith(protocolVersion: value));
  });
}
}

/// @nodoc


class GovAction_TreasuryWithdrawals extends GovAction {
  const GovAction_TreasuryWithdrawals({required final  List<Withdraw> withdrawals, required this.policyHash, this.lengthType = CborLengthType.definite, this.withdrawalsLengthType = CborLengthType.definite}): _withdrawals = withdrawals,super._();
  

 final  List<Withdraw> _withdrawals;
 List<Withdraw> get withdrawals {
  if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_withdrawals);
}

 final  Uint8List? policyHash;
@override@JsonKey() final  CborLengthType lengthType;
@JsonKey() final  CborLengthType withdrawalsLengthType;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovAction_TreasuryWithdrawalsCopyWith<GovAction_TreasuryWithdrawals> get copyWith => _$GovAction_TreasuryWithdrawalsCopyWithImpl<GovAction_TreasuryWithdrawals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovAction_TreasuryWithdrawals&&const DeepCollectionEquality().equals(other._withdrawals, _withdrawals)&&const DeepCollectionEquality().equals(other.policyHash, policyHash)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&(identical(other.withdrawalsLengthType, withdrawalsLengthType) || other.withdrawalsLengthType == withdrawalsLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_withdrawals),const DeepCollectionEquality().hash(policyHash),lengthType,withdrawalsLengthType);

@override
String toString() {
  return 'GovAction.treasuryWithdrawals(withdrawals: $withdrawals, policyHash: $policyHash, lengthType: $lengthType, withdrawalsLengthType: $withdrawalsLengthType)';
}


}

/// @nodoc
abstract mixin class $GovAction_TreasuryWithdrawalsCopyWith<$Res> implements $GovActionCopyWith<$Res> {
  factory $GovAction_TreasuryWithdrawalsCopyWith(GovAction_TreasuryWithdrawals value, $Res Function(GovAction_TreasuryWithdrawals) _then) = _$GovAction_TreasuryWithdrawalsCopyWithImpl;
@override @useResult
$Res call({
 List<Withdraw> withdrawals, Uint8List? policyHash, CborLengthType lengthType, CborLengthType withdrawalsLengthType
});




}
/// @nodoc
class _$GovAction_TreasuryWithdrawalsCopyWithImpl<$Res>
    implements $GovAction_TreasuryWithdrawalsCopyWith<$Res> {
  _$GovAction_TreasuryWithdrawalsCopyWithImpl(this._self, this._then);

  final GovAction_TreasuryWithdrawals _self;
  final $Res Function(GovAction_TreasuryWithdrawals) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? withdrawals = null,Object? policyHash = freezed,Object? lengthType = null,Object? withdrawalsLengthType = null,}) {
  return _then(GovAction_TreasuryWithdrawals(
withdrawals: null == withdrawals ? _self._withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<Withdraw>,policyHash: freezed == policyHash ? _self.policyHash : policyHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,withdrawalsLengthType: null == withdrawalsLengthType ? _self.withdrawalsLengthType : withdrawalsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class GovAction_NoConfidence extends GovAction {
  const GovAction_NoConfidence({required this.prevGovActionId, this.lengthType = CborLengthType.definite}): super._();
  

 final  GovActionId prevGovActionId;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovAction_NoConfidenceCopyWith<GovAction_NoConfidence> get copyWith => _$GovAction_NoConfidenceCopyWithImpl<GovAction_NoConfidence>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovAction_NoConfidence&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,lengthType);

@override
String toString() {
  return 'GovAction.noConfidence(prevGovActionId: $prevGovActionId, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $GovAction_NoConfidenceCopyWith<$Res> implements $GovActionCopyWith<$Res> {
  factory $GovAction_NoConfidenceCopyWith(GovAction_NoConfidence value, $Res Function(GovAction_NoConfidence) _then) = _$GovAction_NoConfidenceCopyWithImpl;
@override @useResult
$Res call({
 GovActionId prevGovActionId, CborLengthType lengthType
});


$GovActionIdCopyWith<$Res> get prevGovActionId;

}
/// @nodoc
class _$GovAction_NoConfidenceCopyWithImpl<$Res>
    implements $GovAction_NoConfidenceCopyWith<$Res> {
  _$GovAction_NoConfidenceCopyWithImpl(this._self, this._then);

  final GovAction_NoConfidence _self;
  final $Res Function(GovAction_NoConfidence) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prevGovActionId = null,Object? lengthType = null,}) {
  return _then(GovAction_NoConfidence(
prevGovActionId: null == prevGovActionId ? _self.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_self.prevGovActionId, (value) {
    return _then(_self.copyWith(prevGovActionId: value));
  });
}
}

/// @nodoc


class GovAction_UpdateCommittee extends GovAction {
  const GovAction_UpdateCommittee({required this.prevGovActionId, required final  Set<Credential> membersForRemoval, required final  Map<Credential, int> newMembersAndTerms, required this.quorumThreshold, this.lengthType = CborLengthType.definite, this.membersForRemovalLengthType = CborLengthType.definite, final  List<int> membersForRemovalTags = const <int>[], this.newMembersAndTermsLengthType = CborLengthType.definite}): _membersForRemoval = membersForRemoval,_newMembersAndTerms = newMembersAndTerms,_membersForRemovalTags = membersForRemovalTags,super._();
  

 final  GovActionId prevGovActionId;
 final  Set<Credential> _membersForRemoval;
 Set<Credential> get membersForRemoval {
  if (_membersForRemoval is EqualUnmodifiableSetView) return _membersForRemoval;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_membersForRemoval);
}

 final  Map<Credential, int> _newMembersAndTerms;
 Map<Credential, int> get newMembersAndTerms {
  if (_newMembersAndTerms is EqualUnmodifiableMapView) return _newMembersAndTerms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_newMembersAndTerms);
}

 final  RationalNumber quorumThreshold;
@override@JsonKey() final  CborLengthType lengthType;
@JsonKey() final  CborLengthType membersForRemovalLengthType;
 final  List<int> _membersForRemovalTags;
@JsonKey() List<int> get membersForRemovalTags {
  if (_membersForRemovalTags is EqualUnmodifiableListView) return _membersForRemovalTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_membersForRemovalTags);
}

@JsonKey() final  CborLengthType newMembersAndTermsLengthType;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovAction_UpdateCommitteeCopyWith<GovAction_UpdateCommittee> get copyWith => _$GovAction_UpdateCommitteeCopyWithImpl<GovAction_UpdateCommittee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovAction_UpdateCommittee&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&const DeepCollectionEquality().equals(other._membersForRemoval, _membersForRemoval)&&const DeepCollectionEquality().equals(other._newMembersAndTerms, _newMembersAndTerms)&&(identical(other.quorumThreshold, quorumThreshold) || other.quorumThreshold == quorumThreshold)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&(identical(other.membersForRemovalLengthType, membersForRemovalLengthType) || other.membersForRemovalLengthType == membersForRemovalLengthType)&&const DeepCollectionEquality().equals(other._membersForRemovalTags, _membersForRemovalTags)&&(identical(other.newMembersAndTermsLengthType, newMembersAndTermsLengthType) || other.newMembersAndTermsLengthType == newMembersAndTermsLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,const DeepCollectionEquality().hash(_membersForRemoval),const DeepCollectionEquality().hash(_newMembersAndTerms),quorumThreshold,lengthType,membersForRemovalLengthType,const DeepCollectionEquality().hash(_membersForRemovalTags),newMembersAndTermsLengthType);

@override
String toString() {
  return 'GovAction.updateCommittee(prevGovActionId: $prevGovActionId, membersForRemoval: $membersForRemoval, newMembersAndTerms: $newMembersAndTerms, quorumThreshold: $quorumThreshold, lengthType: $lengthType, membersForRemovalLengthType: $membersForRemovalLengthType, membersForRemovalTags: $membersForRemovalTags, newMembersAndTermsLengthType: $newMembersAndTermsLengthType)';
}


}

/// @nodoc
abstract mixin class $GovAction_UpdateCommitteeCopyWith<$Res> implements $GovActionCopyWith<$Res> {
  factory $GovAction_UpdateCommitteeCopyWith(GovAction_UpdateCommittee value, $Res Function(GovAction_UpdateCommittee) _then) = _$GovAction_UpdateCommitteeCopyWithImpl;
@override @useResult
$Res call({
 GovActionId prevGovActionId, Set<Credential> membersForRemoval, Map<Credential, int> newMembersAndTerms, RationalNumber quorumThreshold, CborLengthType lengthType, CborLengthType membersForRemovalLengthType, List<int> membersForRemovalTags, CborLengthType newMembersAndTermsLengthType
});


$GovActionIdCopyWith<$Res> get prevGovActionId;$RationalNumberCopyWith<$Res> get quorumThreshold;

}
/// @nodoc
class _$GovAction_UpdateCommitteeCopyWithImpl<$Res>
    implements $GovAction_UpdateCommitteeCopyWith<$Res> {
  _$GovAction_UpdateCommitteeCopyWithImpl(this._self, this._then);

  final GovAction_UpdateCommittee _self;
  final $Res Function(GovAction_UpdateCommittee) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prevGovActionId = null,Object? membersForRemoval = null,Object? newMembersAndTerms = null,Object? quorumThreshold = null,Object? lengthType = null,Object? membersForRemovalLengthType = null,Object? membersForRemovalTags = null,Object? newMembersAndTermsLengthType = null,}) {
  return _then(GovAction_UpdateCommittee(
prevGovActionId: null == prevGovActionId ? _self.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,membersForRemoval: null == membersForRemoval ? _self._membersForRemoval : membersForRemoval // ignore: cast_nullable_to_non_nullable
as Set<Credential>,newMembersAndTerms: null == newMembersAndTerms ? _self._newMembersAndTerms : newMembersAndTerms // ignore: cast_nullable_to_non_nullable
as Map<Credential, int>,quorumThreshold: null == quorumThreshold ? _self.quorumThreshold : quorumThreshold // ignore: cast_nullable_to_non_nullable
as RationalNumber,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,membersForRemovalLengthType: null == membersForRemovalLengthType ? _self.membersForRemovalLengthType : membersForRemovalLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,membersForRemovalTags: null == membersForRemovalTags ? _self._membersForRemovalTags : membersForRemovalTags // ignore: cast_nullable_to_non_nullable
as List<int>,newMembersAndTermsLengthType: null == newMembersAndTermsLengthType ? _self.newMembersAndTermsLengthType : newMembersAndTermsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_self.prevGovActionId, (value) {
    return _then(_self.copyWith(prevGovActionId: value));
  });
}/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RationalNumberCopyWith<$Res> get quorumThreshold {
  
  return $RationalNumberCopyWith<$Res>(_self.quorumThreshold, (value) {
    return _then(_self.copyWith(quorumThreshold: value));
  });
}
}

/// @nodoc


class GovAction_NewConstitution extends GovAction {
  const GovAction_NewConstitution({required this.prevGovActionId, required this.constitution, this.lengthType = CborLengthType.definite}): super._();
  

 final  GovActionId prevGovActionId;
 final  Constitution constitution;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovAction_NewConstitutionCopyWith<GovAction_NewConstitution> get copyWith => _$GovAction_NewConstitutionCopyWithImpl<GovAction_NewConstitution>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovAction_NewConstitution&&(identical(other.prevGovActionId, prevGovActionId) || other.prevGovActionId == prevGovActionId)&&(identical(other.constitution, constitution) || other.constitution == constitution)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,prevGovActionId,constitution,lengthType);

@override
String toString() {
  return 'GovAction.newConstitution(prevGovActionId: $prevGovActionId, constitution: $constitution, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $GovAction_NewConstitutionCopyWith<$Res> implements $GovActionCopyWith<$Res> {
  factory $GovAction_NewConstitutionCopyWith(GovAction_NewConstitution value, $Res Function(GovAction_NewConstitution) _then) = _$GovAction_NewConstitutionCopyWithImpl;
@override @useResult
$Res call({
 GovActionId prevGovActionId, Constitution constitution, CborLengthType lengthType
});


$GovActionIdCopyWith<$Res> get prevGovActionId;$ConstitutionCopyWith<$Res> get constitution;

}
/// @nodoc
class _$GovAction_NewConstitutionCopyWithImpl<$Res>
    implements $GovAction_NewConstitutionCopyWith<$Res> {
  _$GovAction_NewConstitutionCopyWithImpl(this._self, this._then);

  final GovAction_NewConstitution _self;
  final $Res Function(GovAction_NewConstitution) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prevGovActionId = null,Object? constitution = null,Object? lengthType = null,}) {
  return _then(GovAction_NewConstitution(
prevGovActionId: null == prevGovActionId ? _self.prevGovActionId : prevGovActionId // ignore: cast_nullable_to_non_nullable
as GovActionId,constitution: null == constitution ? _self.constitution : constitution // ignore: cast_nullable_to_non_nullable
as Constitution,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get prevGovActionId {
  
  return $GovActionIdCopyWith<$Res>(_self.prevGovActionId, (value) {
    return _then(_self.copyWith(prevGovActionId: value));
  });
}/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConstitutionCopyWith<$Res> get constitution {
  
  return $ConstitutionCopyWith<$Res>(_self.constitution, (value) {
    return _then(_self.copyWith(constitution: value));
  });
}
}

/// @nodoc


class GovAction_InfoAction extends GovAction {
  const GovAction_InfoAction({this.lengthType = CborLengthType.definite}): super._();
  

@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovAction_InfoActionCopyWith<GovAction_InfoAction> get copyWith => _$GovAction_InfoActionCopyWithImpl<GovAction_InfoAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovAction_InfoAction&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,lengthType);

@override
String toString() {
  return 'GovAction.infoAction(lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $GovAction_InfoActionCopyWith<$Res> implements $GovActionCopyWith<$Res> {
  factory $GovAction_InfoActionCopyWith(GovAction_InfoAction value, $Res Function(GovAction_InfoAction) _then) = _$GovAction_InfoActionCopyWithImpl;
@override @useResult
$Res call({
 CborLengthType lengthType
});




}
/// @nodoc
class _$GovAction_InfoActionCopyWithImpl<$Res>
    implements $GovAction_InfoActionCopyWith<$Res> {
  _$GovAction_InfoActionCopyWithImpl(this._self, this._then);

  final GovAction_InfoAction _self;
  final $Res Function(GovAction_InfoAction) _then;

/// Create a copy of GovAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lengthType = null,}) {
  return _then(GovAction_InfoAction(
lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
