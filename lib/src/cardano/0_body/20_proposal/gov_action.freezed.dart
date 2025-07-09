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
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GovAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GovAction()';
  }
}

/// @nodoc
class $GovActionCopyWith<$Res> {
  $GovActionCopyWith(GovAction _, $Res Function(GovAction) __);
}

/// @nodoc

class GovAction_ParameterChange extends GovAction {
  const GovAction_ParameterChange(
      {required this.prevGovActionId,
      required this.protocolParamUpdate,
      required this.policyHash})
      : super._();

  final GovActionId prevGovActionId;
  final ProtocolParamUpdate protocolParamUpdate;
  final Uint8List? policyHash;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GovAction_ParameterChangeCopyWith<GovAction_ParameterChange> get copyWith =>
      _$GovAction_ParameterChangeCopyWithImpl<GovAction_ParameterChange>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GovAction_ParameterChange &&
            (identical(other.prevGovActionId, prevGovActionId) ||
                other.prevGovActionId == prevGovActionId) &&
            (identical(other.protocolParamUpdate, protocolParamUpdate) ||
                other.protocolParamUpdate == protocolParamUpdate) &&
            const DeepCollectionEquality()
                .equals(other.policyHash, policyHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prevGovActionId,
      protocolParamUpdate, const DeepCollectionEquality().hash(policyHash));

  @override
  String toString() {
    return 'GovAction.parameterChange(prevGovActionId: $prevGovActionId, protocolParamUpdate: $protocolParamUpdate, policyHash: $policyHash)';
  }
}

/// @nodoc
abstract mixin class $GovAction_ParameterChangeCopyWith<$Res>
    implements $GovActionCopyWith<$Res> {
  factory $GovAction_ParameterChangeCopyWith(GovAction_ParameterChange value,
          $Res Function(GovAction_ParameterChange) _then) =
      _$GovAction_ParameterChangeCopyWithImpl;
  @useResult
  $Res call(
      {GovActionId prevGovActionId,
      ProtocolParamUpdate protocolParamUpdate,
      Uint8List? policyHash});

  $GovActionIdCopyWith<$Res> get prevGovActionId;
  $ProtocolParamUpdateCopyWith<$Res> get protocolParamUpdate;
}

/// @nodoc
class _$GovAction_ParameterChangeCopyWithImpl<$Res>
    implements $GovAction_ParameterChangeCopyWith<$Res> {
  _$GovAction_ParameterChangeCopyWithImpl(this._self, this._then);

  final GovAction_ParameterChange _self;
  final $Res Function(GovAction_ParameterChange) _then;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prevGovActionId = null,
    Object? protocolParamUpdate = null,
    Object? policyHash = freezed,
  }) {
    return _then(GovAction_ParameterChange(
      prevGovActionId: null == prevGovActionId
          ? _self.prevGovActionId
          : prevGovActionId // ignore: cast_nullable_to_non_nullable
              as GovActionId,
      protocolParamUpdate: null == protocolParamUpdate
          ? _self.protocolParamUpdate
          : protocolParamUpdate // ignore: cast_nullable_to_non_nullable
              as ProtocolParamUpdate,
      policyHash: freezed == policyHash
          ? _self.policyHash
          : policyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProtocolParamUpdateCopyWith<$Res> get protocolParamUpdate {
    return $ProtocolParamUpdateCopyWith<$Res>(_self.protocolParamUpdate,
        (value) {
      return _then(_self.copyWith(protocolParamUpdate: value));
    });
  }
}

/// @nodoc

class GovAction_HardForkInitiation extends GovAction {
  const GovAction_HardForkInitiation(
      {required this.prevGovActionId, required this.protocolVersion})
      : super._();

  final GovActionId prevGovActionId;
  final ProtocolVersion protocolVersion;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GovAction_HardForkInitiationCopyWith<GovAction_HardForkInitiation>
      get copyWith => _$GovAction_HardForkInitiationCopyWithImpl<
          GovAction_HardForkInitiation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GovAction_HardForkInitiation &&
            (identical(other.prevGovActionId, prevGovActionId) ||
                other.prevGovActionId == prevGovActionId) &&
            (identical(other.protocolVersion, protocolVersion) ||
                other.protocolVersion == protocolVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, prevGovActionId, protocolVersion);

  @override
  String toString() {
    return 'GovAction.hardForkInitiation(prevGovActionId: $prevGovActionId, protocolVersion: $protocolVersion)';
  }
}

/// @nodoc
abstract mixin class $GovAction_HardForkInitiationCopyWith<$Res>
    implements $GovActionCopyWith<$Res> {
  factory $GovAction_HardForkInitiationCopyWith(
          GovAction_HardForkInitiation value,
          $Res Function(GovAction_HardForkInitiation) _then) =
      _$GovAction_HardForkInitiationCopyWithImpl;
  @useResult
  $Res call({GovActionId prevGovActionId, ProtocolVersion protocolVersion});

  $GovActionIdCopyWith<$Res> get prevGovActionId;
  $ProtocolVersionCopyWith<$Res> get protocolVersion;
}

/// @nodoc
class _$GovAction_HardForkInitiationCopyWithImpl<$Res>
    implements $GovAction_HardForkInitiationCopyWith<$Res> {
  _$GovAction_HardForkInitiationCopyWithImpl(this._self, this._then);

  final GovAction_HardForkInitiation _self;
  final $Res Function(GovAction_HardForkInitiation) _then;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prevGovActionId = null,
    Object? protocolVersion = null,
  }) {
    return _then(GovAction_HardForkInitiation(
      prevGovActionId: null == prevGovActionId
          ? _self.prevGovActionId
          : prevGovActionId // ignore: cast_nullable_to_non_nullable
              as GovActionId,
      protocolVersion: null == protocolVersion
          ? _self.protocolVersion
          : protocolVersion // ignore: cast_nullable_to_non_nullable
              as ProtocolVersion,
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

  /// Create a copy of GovAction
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
  const GovAction_TreasuryWithdrawals(
      {required final List<Withdraw> withdrawals, required this.policyHash})
      : _withdrawals = withdrawals,
        super._();

  final List<Withdraw> _withdrawals;
  List<Withdraw> get withdrawals {
    if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_withdrawals);
  }

  final Uint8List? policyHash;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GovAction_TreasuryWithdrawalsCopyWith<GovAction_TreasuryWithdrawals>
      get copyWith => _$GovAction_TreasuryWithdrawalsCopyWithImpl<
          GovAction_TreasuryWithdrawals>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GovAction_TreasuryWithdrawals &&
            const DeepCollectionEquality()
                .equals(other._withdrawals, _withdrawals) &&
            const DeepCollectionEquality()
                .equals(other.policyHash, policyHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_withdrawals),
      const DeepCollectionEquality().hash(policyHash));

  @override
  String toString() {
    return 'GovAction.treasuryWithdrawals(withdrawals: $withdrawals, policyHash: $policyHash)';
  }
}

/// @nodoc
abstract mixin class $GovAction_TreasuryWithdrawalsCopyWith<$Res>
    implements $GovActionCopyWith<$Res> {
  factory $GovAction_TreasuryWithdrawalsCopyWith(
          GovAction_TreasuryWithdrawals value,
          $Res Function(GovAction_TreasuryWithdrawals) _then) =
      _$GovAction_TreasuryWithdrawalsCopyWithImpl;
  @useResult
  $Res call({List<Withdraw> withdrawals, Uint8List? policyHash});
}

/// @nodoc
class _$GovAction_TreasuryWithdrawalsCopyWithImpl<$Res>
    implements $GovAction_TreasuryWithdrawalsCopyWith<$Res> {
  _$GovAction_TreasuryWithdrawalsCopyWithImpl(this._self, this._then);

  final GovAction_TreasuryWithdrawals _self;
  final $Res Function(GovAction_TreasuryWithdrawals) _then;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? withdrawals = null,
    Object? policyHash = freezed,
  }) {
    return _then(GovAction_TreasuryWithdrawals(
      withdrawals: null == withdrawals
          ? _self._withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<Withdraw>,
      policyHash: freezed == policyHash
          ? _self.policyHash
          : policyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class GovAction_NoConfidence extends GovAction {
  const GovAction_NoConfidence({required this.prevGovActionId}) : super._();

  final GovActionId prevGovActionId;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GovAction_NoConfidenceCopyWith<GovAction_NoConfidence> get copyWith =>
      _$GovAction_NoConfidenceCopyWithImpl<GovAction_NoConfidence>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GovAction_NoConfidence &&
            (identical(other.prevGovActionId, prevGovActionId) ||
                other.prevGovActionId == prevGovActionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prevGovActionId);

  @override
  String toString() {
    return 'GovAction.noConfidence(prevGovActionId: $prevGovActionId)';
  }
}

/// @nodoc
abstract mixin class $GovAction_NoConfidenceCopyWith<$Res>
    implements $GovActionCopyWith<$Res> {
  factory $GovAction_NoConfidenceCopyWith(GovAction_NoConfidence value,
          $Res Function(GovAction_NoConfidence) _then) =
      _$GovAction_NoConfidenceCopyWithImpl;
  @useResult
  $Res call({GovActionId prevGovActionId});

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
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prevGovActionId = null,
  }) {
    return _then(GovAction_NoConfidence(
      prevGovActionId: null == prevGovActionId
          ? _self.prevGovActionId
          : prevGovActionId // ignore: cast_nullable_to_non_nullable
              as GovActionId,
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
  const GovAction_UpdateCommittee(
      {required this.prevGovActionId,
      required final Set<Credential> membersForRemoval,
      required final Map<Credential, int> newMembersAndTerms,
      required this.quorumThreshold})
      : _membersForRemoval = membersForRemoval,
        _newMembersAndTerms = newMembersAndTerms,
        super._();

  final GovActionId prevGovActionId;
  final Set<Credential> _membersForRemoval;
  Set<Credential> get membersForRemoval {
    if (_membersForRemoval is EqualUnmodifiableSetView)
      return _membersForRemoval;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_membersForRemoval);
  }

  final Map<Credential, int> _newMembersAndTerms;
  Map<Credential, int> get newMembersAndTerms {
    if (_newMembersAndTerms is EqualUnmodifiableMapView)
      return _newMembersAndTerms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_newMembersAndTerms);
  }

  final RationalNumber quorumThreshold;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GovAction_UpdateCommitteeCopyWith<GovAction_UpdateCommittee> get copyWith =>
      _$GovAction_UpdateCommitteeCopyWithImpl<GovAction_UpdateCommittee>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GovAction_UpdateCommittee &&
            (identical(other.prevGovActionId, prevGovActionId) ||
                other.prevGovActionId == prevGovActionId) &&
            const DeepCollectionEquality()
                .equals(other._membersForRemoval, _membersForRemoval) &&
            const DeepCollectionEquality()
                .equals(other._newMembersAndTerms, _newMembersAndTerms) &&
            (identical(other.quorumThreshold, quorumThreshold) ||
                other.quorumThreshold == quorumThreshold));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      prevGovActionId,
      const DeepCollectionEquality().hash(_membersForRemoval),
      const DeepCollectionEquality().hash(_newMembersAndTerms),
      quorumThreshold);

  @override
  String toString() {
    return 'GovAction.updateCommittee(prevGovActionId: $prevGovActionId, membersForRemoval: $membersForRemoval, newMembersAndTerms: $newMembersAndTerms, quorumThreshold: $quorumThreshold)';
  }
}

/// @nodoc
abstract mixin class $GovAction_UpdateCommitteeCopyWith<$Res>
    implements $GovActionCopyWith<$Res> {
  factory $GovAction_UpdateCommitteeCopyWith(GovAction_UpdateCommittee value,
          $Res Function(GovAction_UpdateCommittee) _then) =
      _$GovAction_UpdateCommitteeCopyWithImpl;
  @useResult
  $Res call(
      {GovActionId prevGovActionId,
      Set<Credential> membersForRemoval,
      Map<Credential, int> newMembersAndTerms,
      RationalNumber quorumThreshold});

  $GovActionIdCopyWith<$Res> get prevGovActionId;
  $RationalNumberCopyWith<$Res> get quorumThreshold;
}

/// @nodoc
class _$GovAction_UpdateCommitteeCopyWithImpl<$Res>
    implements $GovAction_UpdateCommitteeCopyWith<$Res> {
  _$GovAction_UpdateCommitteeCopyWithImpl(this._self, this._then);

  final GovAction_UpdateCommittee _self;
  final $Res Function(GovAction_UpdateCommittee) _then;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prevGovActionId = null,
    Object? membersForRemoval = null,
    Object? newMembersAndTerms = null,
    Object? quorumThreshold = null,
  }) {
    return _then(GovAction_UpdateCommittee(
      prevGovActionId: null == prevGovActionId
          ? _self.prevGovActionId
          : prevGovActionId // ignore: cast_nullable_to_non_nullable
              as GovActionId,
      membersForRemoval: null == membersForRemoval
          ? _self._membersForRemoval
          : membersForRemoval // ignore: cast_nullable_to_non_nullable
              as Set<Credential>,
      newMembersAndTerms: null == newMembersAndTerms
          ? _self._newMembersAndTerms
          : newMembersAndTerms // ignore: cast_nullable_to_non_nullable
              as Map<Credential, int>,
      quorumThreshold: null == quorumThreshold
          ? _self.quorumThreshold
          : quorumThreshold // ignore: cast_nullable_to_non_nullable
              as RationalNumber,
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

  /// Create a copy of GovAction
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
  const GovAction_NewConstitution(
      {required this.prevGovActionId, required this.constitution})
      : super._();

  final GovActionId prevGovActionId;
  final Constitution constitution;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GovAction_NewConstitutionCopyWith<GovAction_NewConstitution> get copyWith =>
      _$GovAction_NewConstitutionCopyWithImpl<GovAction_NewConstitution>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GovAction_NewConstitution &&
            (identical(other.prevGovActionId, prevGovActionId) ||
                other.prevGovActionId == prevGovActionId) &&
            (identical(other.constitution, constitution) ||
                other.constitution == constitution));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prevGovActionId, constitution);

  @override
  String toString() {
    return 'GovAction.newConstitution(prevGovActionId: $prevGovActionId, constitution: $constitution)';
  }
}

/// @nodoc
abstract mixin class $GovAction_NewConstitutionCopyWith<$Res>
    implements $GovActionCopyWith<$Res> {
  factory $GovAction_NewConstitutionCopyWith(GovAction_NewConstitution value,
          $Res Function(GovAction_NewConstitution) _then) =
      _$GovAction_NewConstitutionCopyWithImpl;
  @useResult
  $Res call({GovActionId prevGovActionId, Constitution constitution});

  $GovActionIdCopyWith<$Res> get prevGovActionId;
  $ConstitutionCopyWith<$Res> get constitution;
}

/// @nodoc
class _$GovAction_NewConstitutionCopyWithImpl<$Res>
    implements $GovAction_NewConstitutionCopyWith<$Res> {
  _$GovAction_NewConstitutionCopyWithImpl(this._self, this._then);

  final GovAction_NewConstitution _self;
  final $Res Function(GovAction_NewConstitution) _then;

  /// Create a copy of GovAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prevGovActionId = null,
    Object? constitution = null,
  }) {
    return _then(GovAction_NewConstitution(
      prevGovActionId: null == prevGovActionId
          ? _self.prevGovActionId
          : prevGovActionId // ignore: cast_nullable_to_non_nullable
              as GovActionId,
      constitution: null == constitution
          ? _self.constitution
          : constitution // ignore: cast_nullable_to_non_nullable
              as Constitution,
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

  /// Create a copy of GovAction
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
  const GovAction_InfoAction() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GovAction_InfoAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GovAction.infoAction()';
  }
}

// dart format on
