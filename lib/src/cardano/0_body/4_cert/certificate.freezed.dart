// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Certificate {
  int get certType;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate &&
            (identical(other.certType, certType) ||
                other.certType == certType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, certType);

  @override
  String toString() {
    return 'Certificate(certType: $certType)';
  }
}

/// @nodoc
class $CertificateCopyWith<$Res> {
  $CertificateCopyWith(Certificate _, $Res Function(Certificate) __);
}

/// @nodoc

class Certificate_StakeRegistrationLegacy extends Certificate {
  Certificate_StakeRegistrationLegacy({required this.stakeCredential})
      : super._();

  final Credential stakeCredential;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_StakeRegistrationLegacyCopyWith<
          Certificate_StakeRegistrationLegacy>
      get copyWith => _$Certificate_StakeRegistrationLegacyCopyWithImpl<
          Certificate_StakeRegistrationLegacy>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_StakeRegistrationLegacy &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential);

  @override
  String toString() {
    return 'Certificate.stakeRegistrationLegacy(stakeCredential: $stakeCredential)';
  }
}

/// @nodoc
abstract mixin class $Certificate_StakeRegistrationLegacyCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_StakeRegistrationLegacyCopyWith(
          Certificate_StakeRegistrationLegacy value,
          $Res Function(Certificate_StakeRegistrationLegacy) _then) =
      _$Certificate_StakeRegistrationLegacyCopyWithImpl;
  @useResult
  $Res call({Credential stakeCredential});

  $CredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$Certificate_StakeRegistrationLegacyCopyWithImpl<$Res>
    implements $Certificate_StakeRegistrationLegacyCopyWith<$Res> {
  _$Certificate_StakeRegistrationLegacyCopyWithImpl(this._self, this._then);

  final Certificate_StakeRegistrationLegacy _self;
  final $Res Function(Certificate_StakeRegistrationLegacy) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
  }) {
    return _then(Certificate_StakeRegistrationLegacy(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class Certificate_StakeDeRegistrationLegacy extends Certificate {
  Certificate_StakeDeRegistrationLegacy({required this.stakeCredential})
      : super._();

  final Credential stakeCredential;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_StakeDeRegistrationLegacyCopyWith<
          Certificate_StakeDeRegistrationLegacy>
      get copyWith => _$Certificate_StakeDeRegistrationLegacyCopyWithImpl<
          Certificate_StakeDeRegistrationLegacy>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_StakeDeRegistrationLegacy &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential);

  @override
  String toString() {
    return 'Certificate.stakeDeRegistrationLegacy(stakeCredential: $stakeCredential)';
  }
}

/// @nodoc
abstract mixin class $Certificate_StakeDeRegistrationLegacyCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_StakeDeRegistrationLegacyCopyWith(
          Certificate_StakeDeRegistrationLegacy value,
          $Res Function(Certificate_StakeDeRegistrationLegacy) _then) =
      _$Certificate_StakeDeRegistrationLegacyCopyWithImpl;
  @useResult
  $Res call({Credential stakeCredential});

  $CredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$Certificate_StakeDeRegistrationLegacyCopyWithImpl<$Res>
    implements $Certificate_StakeDeRegistrationLegacyCopyWith<$Res> {
  _$Certificate_StakeDeRegistrationLegacyCopyWithImpl(this._self, this._then);

  final Certificate_StakeDeRegistrationLegacy _self;
  final $Res Function(Certificate_StakeDeRegistrationLegacy) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
  }) {
    return _then(Certificate_StakeDeRegistrationLegacy(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class Certificate_StakeDelegation extends Certificate {
  Certificate_StakeDelegation(
      {required this.stakeCredential, required this.stakePoolId})
      : super._();

  final Credential stakeCredential;
  final StakePoolId stakePoolId;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_StakeDelegationCopyWith<Certificate_StakeDelegation>
      get copyWith => _$Certificate_StakeDelegationCopyWithImpl<
          Certificate_StakeDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_StakeDelegation &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.stakePoolId, stakePoolId) ||
                other.stakePoolId == stakePoolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, stakePoolId);

  @override
  String toString() {
    return 'Certificate.stakeDelegation(stakeCredential: $stakeCredential, stakePoolId: $stakePoolId)';
  }
}

/// @nodoc
abstract mixin class $Certificate_StakeDelegationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_StakeDelegationCopyWith(
          Certificate_StakeDelegation value,
          $Res Function(Certificate_StakeDelegation) _then) =
      _$Certificate_StakeDelegationCopyWithImpl;
  @useResult
  $Res call({Credential stakeCredential, StakePoolId stakePoolId});

  $CredentialCopyWith<$Res> get stakeCredential;
  $StakePoolIdCopyWith<$Res> get stakePoolId;
}

/// @nodoc
class _$Certificate_StakeDelegationCopyWithImpl<$Res>
    implements $Certificate_StakeDelegationCopyWith<$Res> {
  _$Certificate_StakeDelegationCopyWithImpl(this._self, this._then);

  final Certificate_StakeDelegation _self;
  final $Res Function(Certificate_StakeDelegation) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? stakePoolId = null,
  }) {
    return _then(Certificate_StakeDelegation(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      stakePoolId: null == stakePoolId
          ? _self.stakePoolId
          : stakePoolId // ignore: cast_nullable_to_non_nullable
              as StakePoolId,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StakePoolIdCopyWith<$Res> get stakePoolId {
    return $StakePoolIdCopyWith<$Res>(_self.stakePoolId, (value) {
      return _then(_self.copyWith(stakePoolId: value));
    });
  }
}

/// @nodoc

class Certificate_PoolRegistration extends Certificate {
  Certificate_PoolRegistration(
      {required this.operator,
      required this.vrfKeyHash,
      required this.pledge,
      required this.cost,
      required this.margin,
      required this.rewardAccount,
      required final List<Uint8List> poolOwners,
      required this.relays,
      required this.poolMetadata})
      : assert(pledge.toBigInt() >= BigInt.from(0)),
        assert(cost.toBigInt() >= BigInt.from(0)),
        _poolOwners = poolOwners,
        super._();

  final StakePoolId operator;
// pool key hash 28 bytes
  final Uint8List vrfKeyHash;
// vrf key hash 32 bytes
  final CborInt pledge;
// pledge in lovelace
  final CborInt cost;
// cost in lovelace
  final RationalNumber margin;
// margin
  final Uint8List rewardAccount;
// decoded address bytes (can be encoded to bech32 directly)
  final List<Uint8List> _poolOwners;
// decoded address bytes (can be encoded to bech32 directly)
  List<Uint8List> get poolOwners {
    if (_poolOwners is EqualUnmodifiableListView) return _poolOwners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_poolOwners);
  }

// decoded pool owner address key hash 28
  final CborValue relays;
// relays ; we don't bother to decode this for now
  final PoolMetadata? poolMetadata;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_PoolRegistrationCopyWith<Certificate_PoolRegistration>
      get copyWith => _$Certificate_PoolRegistrationCopyWithImpl<
          Certificate_PoolRegistration>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_PoolRegistration &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality()
                .equals(other.vrfKeyHash, vrfKeyHash) &&
            (identical(other.pledge, pledge) || other.pledge == pledge) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            const DeepCollectionEquality()
                .equals(other.rewardAccount, rewardAccount) &&
            const DeepCollectionEquality()
                .equals(other._poolOwners, _poolOwners) &&
            (identical(other.relays, relays) || other.relays == relays) &&
            (identical(other.poolMetadata, poolMetadata) ||
                other.poolMetadata == poolMetadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      operator,
      const DeepCollectionEquality().hash(vrfKeyHash),
      pledge,
      cost,
      margin,
      const DeepCollectionEquality().hash(rewardAccount),
      const DeepCollectionEquality().hash(_poolOwners),
      relays,
      poolMetadata);

  @override
  String toString() {
    return 'Certificate.poolRegistration(operator: $operator, vrfKeyHash: $vrfKeyHash, pledge: $pledge, cost: $cost, margin: $margin, rewardAccount: $rewardAccount, poolOwners: $poolOwners, relays: $relays, poolMetadata: $poolMetadata)';
  }
}

/// @nodoc
abstract mixin class $Certificate_PoolRegistrationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_PoolRegistrationCopyWith(
          Certificate_PoolRegistration value,
          $Res Function(Certificate_PoolRegistration) _then) =
      _$Certificate_PoolRegistrationCopyWithImpl;
  @useResult
  $Res call(
      {StakePoolId operator,
      Uint8List vrfKeyHash,
      CborInt pledge,
      CborInt cost,
      RationalNumber margin,
      Uint8List rewardAccount,
      List<Uint8List> poolOwners,
      CborValue relays,
      PoolMetadata? poolMetadata});

  $StakePoolIdCopyWith<$Res> get operator;
  $RationalNumberCopyWith<$Res> get margin;
  $PoolMetadataCopyWith<$Res>? get poolMetadata;
}

/// @nodoc
class _$Certificate_PoolRegistrationCopyWithImpl<$Res>
    implements $Certificate_PoolRegistrationCopyWith<$Res> {
  _$Certificate_PoolRegistrationCopyWithImpl(this._self, this._then);

  final Certificate_PoolRegistration _self;
  final $Res Function(Certificate_PoolRegistration) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? operator = null,
    Object? vrfKeyHash = null,
    Object? pledge = null,
    Object? cost = null,
    Object? margin = null,
    Object? rewardAccount = null,
    Object? poolOwners = null,
    Object? relays = null,
    Object? poolMetadata = freezed,
  }) {
    return _then(Certificate_PoolRegistration(
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as StakePoolId,
      vrfKeyHash: null == vrfKeyHash
          ? _self.vrfKeyHash
          : vrfKeyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      pledge: null == pledge
          ? _self.pledge
          : pledge // ignore: cast_nullable_to_non_nullable
              as CborInt,
      cost: null == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as CborInt,
      margin: null == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as RationalNumber,
      rewardAccount: null == rewardAccount
          ? _self.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      poolOwners: null == poolOwners
          ? _self._poolOwners
          : poolOwners // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      relays: null == relays
          ? _self.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as CborValue,
      poolMetadata: freezed == poolMetadata
          ? _self.poolMetadata
          : poolMetadata // ignore: cast_nullable_to_non_nullable
              as PoolMetadata?,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StakePoolIdCopyWith<$Res> get operator {
    return $StakePoolIdCopyWith<$Res>(_self.operator, (value) {
      return _then(_self.copyWith(operator: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<$Res> get margin {
    return $RationalNumberCopyWith<$Res>(_self.margin, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PoolMetadataCopyWith<$Res>? get poolMetadata {
    if (_self.poolMetadata == null) {
      return null;
    }

    return $PoolMetadataCopyWith<$Res>(_self.poolMetadata!, (value) {
      return _then(_self.copyWith(poolMetadata: value));
    });
  }
}

/// @nodoc

class Certificate_PoolRetirement extends Certificate {
  Certificate_PoolRetirement({required this.operator, required this.epoch})
      : assert(epoch.toBigInt() >= BigInt.from(0)),
        super._();

  final StakePoolId operator;
// pool key hash 28 bytes
  final CborInt epoch;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_PoolRetirementCopyWith<Certificate_PoolRetirement>
      get copyWith =>
          _$Certificate_PoolRetirementCopyWithImpl<Certificate_PoolRetirement>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_PoolRetirement &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.epoch, epoch) || other.epoch == epoch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operator, epoch);

  @override
  String toString() {
    return 'Certificate.poolRetirement(operator: $operator, epoch: $epoch)';
  }
}

/// @nodoc
abstract mixin class $Certificate_PoolRetirementCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_PoolRetirementCopyWith(Certificate_PoolRetirement value,
          $Res Function(Certificate_PoolRetirement) _then) =
      _$Certificate_PoolRetirementCopyWithImpl;
  @useResult
  $Res call({StakePoolId operator, CborInt epoch});

  $StakePoolIdCopyWith<$Res> get operator;
}

/// @nodoc
class _$Certificate_PoolRetirementCopyWithImpl<$Res>
    implements $Certificate_PoolRetirementCopyWith<$Res> {
  _$Certificate_PoolRetirementCopyWithImpl(this._self, this._then);

  final Certificate_PoolRetirement _self;
  final $Res Function(Certificate_PoolRetirement) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? operator = null,
    Object? epoch = null,
  }) {
    return _then(Certificate_PoolRetirement(
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as StakePoolId,
      epoch: null == epoch
          ? _self.epoch
          : epoch // ignore: cast_nullable_to_non_nullable
              as CborInt,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StakePoolIdCopyWith<$Res> get operator {
    return $StakePoolIdCopyWith<$Res>(_self.operator, (value) {
      return _then(_self.copyWith(operator: value));
    });
  }
}

/// @nodoc

class Certificate_StakeRegistration extends Certificate {
  Certificate_StakeRegistration(
      {required this.stakeCredential, required this.coin})
      : assert(coin.toBigInt() >= BigInt.from(0)),
        super._();

  final Credential stakeCredential;
  final CborInt coin;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_StakeRegistrationCopyWith<Certificate_StakeRegistration>
      get copyWith => _$Certificate_StakeRegistrationCopyWithImpl<
          Certificate_StakeRegistration>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_StakeRegistration &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, coin);

  @override
  String toString() {
    return 'Certificate.stakeRegistration(stakeCredential: $stakeCredential, coin: $coin)';
  }
}

/// @nodoc
abstract mixin class $Certificate_StakeRegistrationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_StakeRegistrationCopyWith(
          Certificate_StakeRegistration value,
          $Res Function(Certificate_StakeRegistration) _then) =
      _$Certificate_StakeRegistrationCopyWithImpl;
  @useResult
  $Res call({Credential stakeCredential, CborInt coin});

  $CredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$Certificate_StakeRegistrationCopyWithImpl<$Res>
    implements $Certificate_StakeRegistrationCopyWith<$Res> {
  _$Certificate_StakeRegistrationCopyWithImpl(this._self, this._then);

  final Certificate_StakeRegistration _self;
  final $Res Function(Certificate_StakeRegistration) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? coin = null,
  }) {
    return _then(Certificate_StakeRegistration(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CborInt,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class Certificate_StakeDeRegistration extends Certificate {
  Certificate_StakeDeRegistration(
      {required this.stakeCredential, required this.coin})
      : assert(coin.toBigInt() >= BigInt.from(0)),
        super._();

  final Credential stakeCredential;
  final CborInt coin;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_StakeDeRegistrationCopyWith<Certificate_StakeDeRegistration>
      get copyWith => _$Certificate_StakeDeRegistrationCopyWithImpl<
          Certificate_StakeDeRegistration>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_StakeDeRegistration &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, coin);

  @override
  String toString() {
    return 'Certificate.stakeDeRegistration(stakeCredential: $stakeCredential, coin: $coin)';
  }
}

/// @nodoc
abstract mixin class $Certificate_StakeDeRegistrationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_StakeDeRegistrationCopyWith(
          Certificate_StakeDeRegistration value,
          $Res Function(Certificate_StakeDeRegistration) _then) =
      _$Certificate_StakeDeRegistrationCopyWithImpl;
  @useResult
  $Res call({Credential stakeCredential, CborInt coin});

  $CredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$Certificate_StakeDeRegistrationCopyWithImpl<$Res>
    implements $Certificate_StakeDeRegistrationCopyWith<$Res> {
  _$Certificate_StakeDeRegistrationCopyWithImpl(this._self, this._then);

  final Certificate_StakeDeRegistration _self;
  final $Res Function(Certificate_StakeDeRegistration) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? coin = null,
  }) {
    return _then(Certificate_StakeDeRegistration(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CborInt,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class Certificate_VoteDelegation extends Certificate {
  Certificate_VoteDelegation(
      {required this.stakeCredential, required this.dRep})
      : super._();

  final Credential stakeCredential;
  final Drep dRep;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_VoteDelegationCopyWith<Certificate_VoteDelegation>
      get copyWith =>
          _$Certificate_VoteDelegationCopyWithImpl<Certificate_VoteDelegation>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_VoteDelegation &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.dRep, dRep) || other.dRep == dRep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, dRep);

  @override
  String toString() {
    return 'Certificate.voteDelegation(stakeCredential: $stakeCredential, dRep: $dRep)';
  }
}

/// @nodoc
abstract mixin class $Certificate_VoteDelegationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_VoteDelegationCopyWith(Certificate_VoteDelegation value,
          $Res Function(Certificate_VoteDelegation) _then) =
      _$Certificate_VoteDelegationCopyWithImpl;
  @useResult
  $Res call({Credential stakeCredential, Drep dRep});

  $CredentialCopyWith<$Res> get stakeCredential;
  $DrepCopyWith<$Res> get dRep;
}

/// @nodoc
class _$Certificate_VoteDelegationCopyWithImpl<$Res>
    implements $Certificate_VoteDelegationCopyWith<$Res> {
  _$Certificate_VoteDelegationCopyWithImpl(this._self, this._then);

  final Certificate_VoteDelegation _self;
  final $Res Function(Certificate_VoteDelegation) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? dRep = null,
  }) {
    return _then(Certificate_VoteDelegation(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      dRep: null == dRep
          ? _self.dRep
          : dRep // ignore: cast_nullable_to_non_nullable
              as Drep,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DrepCopyWith<$Res> get dRep {
    return $DrepCopyWith<$Res>(_self.dRep, (value) {
      return _then(_self.copyWith(dRep: value));
    });
  }
}

/// @nodoc

class Certificate_StakeVoteDelegation extends Certificate {
  Certificate_StakeVoteDelegation(
      {required this.stakeCredential,
      required this.stakePoolId,
      required this.dRep})
      : super._();

  final Credential stakeCredential;
  final StakePoolId stakePoolId;
  final Drep dRep;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_StakeVoteDelegationCopyWith<Certificate_StakeVoteDelegation>
      get copyWith => _$Certificate_StakeVoteDelegationCopyWithImpl<
          Certificate_StakeVoteDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_StakeVoteDelegation &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.stakePoolId, stakePoolId) ||
                other.stakePoolId == stakePoolId) &&
            (identical(other.dRep, dRep) || other.dRep == dRep));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stakeCredential, stakePoolId, dRep);

  @override
  String toString() {
    return 'Certificate.stakeVoteDelegation(stakeCredential: $stakeCredential, stakePoolId: $stakePoolId, dRep: $dRep)';
  }
}

/// @nodoc
abstract mixin class $Certificate_StakeVoteDelegationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_StakeVoteDelegationCopyWith(
          Certificate_StakeVoteDelegation value,
          $Res Function(Certificate_StakeVoteDelegation) _then) =
      _$Certificate_StakeVoteDelegationCopyWithImpl;
  @useResult
  $Res call({Credential stakeCredential, StakePoolId stakePoolId, Drep dRep});

  $CredentialCopyWith<$Res> get stakeCredential;
  $StakePoolIdCopyWith<$Res> get stakePoolId;
  $DrepCopyWith<$Res> get dRep;
}

/// @nodoc
class _$Certificate_StakeVoteDelegationCopyWithImpl<$Res>
    implements $Certificate_StakeVoteDelegationCopyWith<$Res> {
  _$Certificate_StakeVoteDelegationCopyWithImpl(this._self, this._then);

  final Certificate_StakeVoteDelegation _self;
  final $Res Function(Certificate_StakeVoteDelegation) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? stakePoolId = null,
    Object? dRep = null,
  }) {
    return _then(Certificate_StakeVoteDelegation(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      stakePoolId: null == stakePoolId
          ? _self.stakePoolId
          : stakePoolId // ignore: cast_nullable_to_non_nullable
              as StakePoolId,
      dRep: null == dRep
          ? _self.dRep
          : dRep // ignore: cast_nullable_to_non_nullable
              as Drep,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StakePoolIdCopyWith<$Res> get stakePoolId {
    return $StakePoolIdCopyWith<$Res>(_self.stakePoolId, (value) {
      return _then(_self.copyWith(stakePoolId: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DrepCopyWith<$Res> get dRep {
    return $DrepCopyWith<$Res>(_self.dRep, (value) {
      return _then(_self.copyWith(dRep: value));
    });
  }
}

/// @nodoc

class Certificate_StakeRegistrationDelegation extends Certificate {
  Certificate_StakeRegistrationDelegation(
      {required this.stakeCredential,
      required this.stakePoolId,
      required this.coin})
      : assert(coin.toBigInt() >= BigInt.from(0)),
        super._();

  final Credential stakeCredential;
  final StakePoolId stakePoolId;
  final CborInt coin;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_StakeRegistrationDelegationCopyWith<
          Certificate_StakeRegistrationDelegation>
      get copyWith => _$Certificate_StakeRegistrationDelegationCopyWithImpl<
          Certificate_StakeRegistrationDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_StakeRegistrationDelegation &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.stakePoolId, stakePoolId) ||
                other.stakePoolId == stakePoolId) &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stakeCredential, stakePoolId, coin);

  @override
  String toString() {
    return 'Certificate.stakeRegistrationDelegation(stakeCredential: $stakeCredential, stakePoolId: $stakePoolId, coin: $coin)';
  }
}

/// @nodoc
abstract mixin class $Certificate_StakeRegistrationDelegationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_StakeRegistrationDelegationCopyWith(
          Certificate_StakeRegistrationDelegation value,
          $Res Function(Certificate_StakeRegistrationDelegation) _then) =
      _$Certificate_StakeRegistrationDelegationCopyWithImpl;
  @useResult
  $Res call(
      {Credential stakeCredential, StakePoolId stakePoolId, CborInt coin});

  $CredentialCopyWith<$Res> get stakeCredential;
  $StakePoolIdCopyWith<$Res> get stakePoolId;
}

/// @nodoc
class _$Certificate_StakeRegistrationDelegationCopyWithImpl<$Res>
    implements $Certificate_StakeRegistrationDelegationCopyWith<$Res> {
  _$Certificate_StakeRegistrationDelegationCopyWithImpl(this._self, this._then);

  final Certificate_StakeRegistrationDelegation _self;
  final $Res Function(Certificate_StakeRegistrationDelegation) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? stakePoolId = null,
    Object? coin = null,
  }) {
    return _then(Certificate_StakeRegistrationDelegation(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      stakePoolId: null == stakePoolId
          ? _self.stakePoolId
          : stakePoolId // ignore: cast_nullable_to_non_nullable
              as StakePoolId,
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CborInt,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StakePoolIdCopyWith<$Res> get stakePoolId {
    return $StakePoolIdCopyWith<$Res>(_self.stakePoolId, (value) {
      return _then(_self.copyWith(stakePoolId: value));
    });
  }
}

/// @nodoc

class Certificate_VoteRegistrationDelegation extends Certificate {
  Certificate_VoteRegistrationDelegation(
      {required this.stakeCredential, required this.dRep, required this.coin})
      : assert(coin.toBigInt() >= BigInt.from(0)),
        super._();

  final Credential stakeCredential;
  final Drep dRep;
  final CborInt coin;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_VoteRegistrationDelegationCopyWith<
          Certificate_VoteRegistrationDelegation>
      get copyWith => _$Certificate_VoteRegistrationDelegationCopyWithImpl<
          Certificate_VoteRegistrationDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_VoteRegistrationDelegation &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.dRep, dRep) || other.dRep == dRep) &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, dRep, coin);

  @override
  String toString() {
    return 'Certificate.voteRegistrationDelegation(stakeCredential: $stakeCredential, dRep: $dRep, coin: $coin)';
  }
}

/// @nodoc
abstract mixin class $Certificate_VoteRegistrationDelegationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_VoteRegistrationDelegationCopyWith(
          Certificate_VoteRegistrationDelegation value,
          $Res Function(Certificate_VoteRegistrationDelegation) _then) =
      _$Certificate_VoteRegistrationDelegationCopyWithImpl;
  @useResult
  $Res call({Credential stakeCredential, Drep dRep, CborInt coin});

  $CredentialCopyWith<$Res> get stakeCredential;
  $DrepCopyWith<$Res> get dRep;
}

/// @nodoc
class _$Certificate_VoteRegistrationDelegationCopyWithImpl<$Res>
    implements $Certificate_VoteRegistrationDelegationCopyWith<$Res> {
  _$Certificate_VoteRegistrationDelegationCopyWithImpl(this._self, this._then);

  final Certificate_VoteRegistrationDelegation _self;
  final $Res Function(Certificate_VoteRegistrationDelegation) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? dRep = null,
    Object? coin = null,
  }) {
    return _then(Certificate_VoteRegistrationDelegation(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      dRep: null == dRep
          ? _self.dRep
          : dRep // ignore: cast_nullable_to_non_nullable
              as Drep,
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CborInt,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DrepCopyWith<$Res> get dRep {
    return $DrepCopyWith<$Res>(_self.dRep, (value) {
      return _then(_self.copyWith(dRep: value));
    });
  }
}

/// @nodoc

class Certificate_StakeVoteRegistrationDelegation extends Certificate {
  Certificate_StakeVoteRegistrationDelegation(
      {required this.stakeCredential,
      required this.stakePoolId,
      required this.dRep,
      required this.coin})
      : assert(coin.toBigInt() >= BigInt.from(0)),
        super._();

  final Credential stakeCredential;
  final StakePoolId stakePoolId;
  final Drep dRep;
  final CborInt coin;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_StakeVoteRegistrationDelegationCopyWith<
          Certificate_StakeVoteRegistrationDelegation>
      get copyWith => _$Certificate_StakeVoteRegistrationDelegationCopyWithImpl<
          Certificate_StakeVoteRegistrationDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_StakeVoteRegistrationDelegation &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.stakePoolId, stakePoolId) ||
                other.stakePoolId == stakePoolId) &&
            (identical(other.dRep, dRep) || other.dRep == dRep) &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stakeCredential, stakePoolId, dRep, coin);

  @override
  String toString() {
    return 'Certificate.stakeVoteRegistrationDelegation(stakeCredential: $stakeCredential, stakePoolId: $stakePoolId, dRep: $dRep, coin: $coin)';
  }
}

/// @nodoc
abstract mixin class $Certificate_StakeVoteRegistrationDelegationCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_StakeVoteRegistrationDelegationCopyWith(
          Certificate_StakeVoteRegistrationDelegation value,
          $Res Function(Certificate_StakeVoteRegistrationDelegation) _then) =
      _$Certificate_StakeVoteRegistrationDelegationCopyWithImpl;
  @useResult
  $Res call(
      {Credential stakeCredential,
      StakePoolId stakePoolId,
      Drep dRep,
      CborInt coin});

  $CredentialCopyWith<$Res> get stakeCredential;
  $StakePoolIdCopyWith<$Res> get stakePoolId;
  $DrepCopyWith<$Res> get dRep;
}

/// @nodoc
class _$Certificate_StakeVoteRegistrationDelegationCopyWithImpl<$Res>
    implements $Certificate_StakeVoteRegistrationDelegationCopyWith<$Res> {
  _$Certificate_StakeVoteRegistrationDelegationCopyWithImpl(
      this._self, this._then);

  final Certificate_StakeVoteRegistrationDelegation _self;
  final $Res Function(Certificate_StakeVoteRegistrationDelegation) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? stakePoolId = null,
    Object? dRep = null,
    Object? coin = null,
  }) {
    return _then(Certificate_StakeVoteRegistrationDelegation(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      stakePoolId: null == stakePoolId
          ? _self.stakePoolId
          : stakePoolId // ignore: cast_nullable_to_non_nullable
              as StakePoolId,
      dRep: null == dRep
          ? _self.dRep
          : dRep // ignore: cast_nullable_to_non_nullable
              as Drep,
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CborInt,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get stakeCredential {
    return $CredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StakePoolIdCopyWith<$Res> get stakePoolId {
    return $StakePoolIdCopyWith<$Res>(_self.stakePoolId, (value) {
      return _then(_self.copyWith(stakePoolId: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DrepCopyWith<$Res> get dRep {
    return $DrepCopyWith<$Res>(_self.dRep, (value) {
      return _then(_self.copyWith(dRep: value));
    });
  }
}

/// @nodoc

class Certificate_AuthorizeCommitteeHot extends Certificate {
  Certificate_AuthorizeCommitteeHot(
      {required this.committeeColdCredential,
      required this.committeeHotCredential})
      : super._();

  final Credential committeeColdCredential;
  final Credential committeeHotCredential;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_AuthorizeCommitteeHotCopyWith<Certificate_AuthorizeCommitteeHot>
      get copyWith => _$Certificate_AuthorizeCommitteeHotCopyWithImpl<
          Certificate_AuthorizeCommitteeHot>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_AuthorizeCommitteeHot &&
            (identical(
                    other.committeeColdCredential, committeeColdCredential) ||
                other.committeeColdCredential == committeeColdCredential) &&
            (identical(other.committeeHotCredential, committeeHotCredential) ||
                other.committeeHotCredential == committeeHotCredential));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, committeeColdCredential, committeeHotCredential);

  @override
  String toString() {
    return 'Certificate.authorizeCommitteeHot(committeeColdCredential: $committeeColdCredential, committeeHotCredential: $committeeHotCredential)';
  }
}

/// @nodoc
abstract mixin class $Certificate_AuthorizeCommitteeHotCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_AuthorizeCommitteeHotCopyWith(
          Certificate_AuthorizeCommitteeHot value,
          $Res Function(Certificate_AuthorizeCommitteeHot) _then) =
      _$Certificate_AuthorizeCommitteeHotCopyWithImpl;
  @useResult
  $Res call(
      {Credential committeeColdCredential, Credential committeeHotCredential});

  $CredentialCopyWith<$Res> get committeeColdCredential;
  $CredentialCopyWith<$Res> get committeeHotCredential;
}

/// @nodoc
class _$Certificate_AuthorizeCommitteeHotCopyWithImpl<$Res>
    implements $Certificate_AuthorizeCommitteeHotCopyWith<$Res> {
  _$Certificate_AuthorizeCommitteeHotCopyWithImpl(this._self, this._then);

  final Certificate_AuthorizeCommitteeHot _self;
  final $Res Function(Certificate_AuthorizeCommitteeHot) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? committeeColdCredential = null,
    Object? committeeHotCredential = null,
  }) {
    return _then(Certificate_AuthorizeCommitteeHot(
      committeeColdCredential: null == committeeColdCredential
          ? _self.committeeColdCredential
          : committeeColdCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      committeeHotCredential: null == committeeHotCredential
          ? _self.committeeHotCredential
          : committeeHotCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get committeeColdCredential {
    return $CredentialCopyWith<$Res>(_self.committeeColdCredential, (value) {
      return _then(_self.copyWith(committeeColdCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get committeeHotCredential {
    return $CredentialCopyWith<$Res>(_self.committeeHotCredential, (value) {
      return _then(_self.copyWith(committeeHotCredential: value));
    });
  }
}

/// @nodoc

class Certificate_ResignCommitteeCold extends Certificate {
  Certificate_ResignCommitteeCold(
      {required this.committeeColdCredential, required this.anchor})
      : super._();

  final Credential committeeColdCredential;
  final Anchor? anchor;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_ResignCommitteeColdCopyWith<Certificate_ResignCommitteeCold>
      get copyWith => _$Certificate_ResignCommitteeColdCopyWithImpl<
          Certificate_ResignCommitteeCold>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_ResignCommitteeCold &&
            (identical(
                    other.committeeColdCredential, committeeColdCredential) ||
                other.committeeColdCredential == committeeColdCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, committeeColdCredential, anchor);

  @override
  String toString() {
    return 'Certificate.resignCommitteeCold(committeeColdCredential: $committeeColdCredential, anchor: $anchor)';
  }
}

/// @nodoc
abstract mixin class $Certificate_ResignCommitteeColdCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_ResignCommitteeColdCopyWith(
          Certificate_ResignCommitteeCold value,
          $Res Function(Certificate_ResignCommitteeCold) _then) =
      _$Certificate_ResignCommitteeColdCopyWithImpl;
  @useResult
  $Res call({Credential committeeColdCredential, Anchor? anchor});

  $CredentialCopyWith<$Res> get committeeColdCredential;
  $AnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$Certificate_ResignCommitteeColdCopyWithImpl<$Res>
    implements $Certificate_ResignCommitteeColdCopyWith<$Res> {
  _$Certificate_ResignCommitteeColdCopyWithImpl(this._self, this._then);

  final Certificate_ResignCommitteeCold _self;
  final $Res Function(Certificate_ResignCommitteeCold) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? committeeColdCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(Certificate_ResignCommitteeCold(
      committeeColdCredential: null == committeeColdCredential
          ? _self.committeeColdCredential
          : committeeColdCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      anchor: freezed == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor?,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get committeeColdCredential {
    return $CredentialCopyWith<$Res>(_self.committeeColdCredential, (value) {
      return _then(_self.copyWith(committeeColdCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnchorCopyWith<$Res>? get anchor {
    if (_self.anchor == null) {
      return null;
    }

    return $AnchorCopyWith<$Res>(_self.anchor!, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class Certificate_RegisterDRep extends Certificate {
  Certificate_RegisterDRep(
      {required this.dRepCredential, required this.coin, required this.anchor})
      : assert(coin.toBigInt() >= BigInt.from(0)),
        super._();

  final Credential dRepCredential;
  final CborInt coin;
  final Anchor? anchor;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_RegisterDRepCopyWith<Certificate_RegisterDRep> get copyWith =>
      _$Certificate_RegisterDRepCopyWithImpl<Certificate_RegisterDRep>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_RegisterDRep &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, coin, anchor);

  @override
  String toString() {
    return 'Certificate.registerDRep(dRepCredential: $dRepCredential, coin: $coin, anchor: $anchor)';
  }
}

/// @nodoc
abstract mixin class $Certificate_RegisterDRepCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_RegisterDRepCopyWith(Certificate_RegisterDRep value,
          $Res Function(Certificate_RegisterDRep) _then) =
      _$Certificate_RegisterDRepCopyWithImpl;
  @useResult
  $Res call({Credential dRepCredential, CborInt coin, Anchor? anchor});

  $CredentialCopyWith<$Res> get dRepCredential;
  $AnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$Certificate_RegisterDRepCopyWithImpl<$Res>
    implements $Certificate_RegisterDRepCopyWith<$Res> {
  _$Certificate_RegisterDRepCopyWithImpl(this._self, this._then);

  final Certificate_RegisterDRep _self;
  final $Res Function(Certificate_RegisterDRep) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dRepCredential = null,
    Object? coin = null,
    Object? anchor = freezed,
  }) {
    return _then(Certificate_RegisterDRep(
      dRepCredential: null == dRepCredential
          ? _self.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CborInt,
      anchor: freezed == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor?,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get dRepCredential {
    return $CredentialCopyWith<$Res>(_self.dRepCredential, (value) {
      return _then(_self.copyWith(dRepCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnchorCopyWith<$Res>? get anchor {
    if (_self.anchor == null) {
      return null;
    }

    return $AnchorCopyWith<$Res>(_self.anchor!, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class Certificate_UnregisterDRep extends Certificate {
  Certificate_UnregisterDRep({required this.dRepCredential, required this.coin})
      : assert(coin.toBigInt() >= BigInt.from(0)),
        super._();

  final Credential dRepCredential;
  final CborInt coin;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_UnregisterDRepCopyWith<Certificate_UnregisterDRep>
      get copyWith =>
          _$Certificate_UnregisterDRepCopyWithImpl<Certificate_UnregisterDRep>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_UnregisterDRep &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, coin);

  @override
  String toString() {
    return 'Certificate.unregisterDRep(dRepCredential: $dRepCredential, coin: $coin)';
  }
}

/// @nodoc
abstract mixin class $Certificate_UnregisterDRepCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_UnregisterDRepCopyWith(Certificate_UnregisterDRep value,
          $Res Function(Certificate_UnregisterDRep) _then) =
      _$Certificate_UnregisterDRepCopyWithImpl;
  @useResult
  $Res call({Credential dRepCredential, CborInt coin});

  $CredentialCopyWith<$Res> get dRepCredential;
}

/// @nodoc
class _$Certificate_UnregisterDRepCopyWithImpl<$Res>
    implements $Certificate_UnregisterDRepCopyWith<$Res> {
  _$Certificate_UnregisterDRepCopyWithImpl(this._self, this._then);

  final Certificate_UnregisterDRep _self;
  final $Res Function(Certificate_UnregisterDRep) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dRepCredential = null,
    Object? coin = null,
  }) {
    return _then(Certificate_UnregisterDRep(
      dRepCredential: null == dRepCredential
          ? _self.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CborInt,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get dRepCredential {
    return $CredentialCopyWith<$Res>(_self.dRepCredential, (value) {
      return _then(_self.copyWith(dRepCredential: value));
    });
  }
}

/// @nodoc

class Certificate_UpdateDRep extends Certificate {
  Certificate_UpdateDRep({required this.dRepCredential, required this.anchor})
      : super._();

  final Credential dRepCredential;
  final Anchor? anchor;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Certificate_UpdateDRepCopyWith<Certificate_UpdateDRep> get copyWith =>
      _$Certificate_UpdateDRepCopyWithImpl<Certificate_UpdateDRep>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Certificate_UpdateDRep &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, anchor);

  @override
  String toString() {
    return 'Certificate.updateDRep(dRepCredential: $dRepCredential, anchor: $anchor)';
  }
}

/// @nodoc
abstract mixin class $Certificate_UpdateDRepCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory $Certificate_UpdateDRepCopyWith(Certificate_UpdateDRep value,
          $Res Function(Certificate_UpdateDRep) _then) =
      _$Certificate_UpdateDRepCopyWithImpl;
  @useResult
  $Res call({Credential dRepCredential, Anchor? anchor});

  $CredentialCopyWith<$Res> get dRepCredential;
  $AnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$Certificate_UpdateDRepCopyWithImpl<$Res>
    implements $Certificate_UpdateDRepCopyWith<$Res> {
  _$Certificate_UpdateDRepCopyWithImpl(this._self, this._then);

  final Certificate_UpdateDRep _self;
  final $Res Function(Certificate_UpdateDRep) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dRepCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(Certificate_UpdateDRep(
      dRepCredential: null == dRepCredential
          ? _self.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as Credential,
      anchor: freezed == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor?,
    ));
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get dRepCredential {
    return $CredentialCopyWith<$Res>(_self.dRepCredential, (value) {
      return _then(_self.copyWith(dRepCredential: value));
    });
  }

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnchorCopyWith<$Res>? get anchor {
    if (_self.anchor == null) {
      return null;
    }

    return $AnchorCopyWith<$Res>(_self.anchor!, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

// dart format on
