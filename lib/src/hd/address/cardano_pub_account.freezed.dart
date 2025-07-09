// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_pub_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CardanoPubAccount {
  Lazy<CardanoDerivedAddress> get stakeDerivation;
  Lazy<DRepDerivation> get dRepDerivation;
  Lazy<ConstitutionalCommiteeCold> get constitutionalCommitteeColdDerivation;
  Lazy<ConstitutionalCommiteeHot> get constitutionalCommitteeHotDerivation;
  Bip32PublicKey get accountKey;
  Bip32PublicKey get paymentRoleKey;
  Bip32PublicKey get changeRoleKey;
  Bip32PublicKey get stakeRoleKey;
  Bip32PublicKey get drepIdRoleKey;
  Bip32PublicKey get constitutionalCommitteeColdRoleKey;
  Bip32PublicKey get constitutionalCommitteeHotRoleKey;
  Bip32PublicKey get stakeKey;
  Bip32PublicKey get drepIdKey;
  Bip32PublicKey get constitutionalCommitteeColdKey;
  Bip32PublicKey get constitutionalCommitteeHotKey;

  /// Create a copy of CardanoPubAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardanoPubAccountCopyWith<CardanoPubAccount> get copyWith =>
      _$CardanoPubAccountCopyWithImpl<CardanoPubAccount>(
          this as CardanoPubAccount, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardanoPubAccount &&
            (identical(other.stakeDerivation, stakeDerivation) ||
                other.stakeDerivation == stakeDerivation) &&
            (identical(other.dRepDerivation, dRepDerivation) ||
                other.dRepDerivation == dRepDerivation) &&
            (identical(other.constitutionalCommitteeColdDerivation,
                    constitutionalCommitteeColdDerivation) ||
                other.constitutionalCommitteeColdDerivation ==
                    constitutionalCommitteeColdDerivation) &&
            (identical(other.constitutionalCommitteeHotDerivation,
                    constitutionalCommitteeHotDerivation) ||
                other.constitutionalCommitteeHotDerivation ==
                    constitutionalCommitteeHotDerivation) &&
            const DeepCollectionEquality()
                .equals(other.accountKey, accountKey) &&
            const DeepCollectionEquality()
                .equals(other.paymentRoleKey, paymentRoleKey) &&
            const DeepCollectionEquality()
                .equals(other.changeRoleKey, changeRoleKey) &&
            const DeepCollectionEquality()
                .equals(other.stakeRoleKey, stakeRoleKey) &&
            const DeepCollectionEquality()
                .equals(other.drepIdRoleKey, drepIdRoleKey) &&
            const DeepCollectionEquality().equals(
                other.constitutionalCommitteeColdRoleKey,
                constitutionalCommitteeColdRoleKey) &&
            const DeepCollectionEquality().equals(
                other.constitutionalCommitteeHotRoleKey,
                constitutionalCommitteeHotRoleKey) &&
            const DeepCollectionEquality().equals(other.stakeKey, stakeKey) &&
            const DeepCollectionEquality().equals(other.drepIdKey, drepIdKey) &&
            const DeepCollectionEquality().equals(
                other.constitutionalCommitteeColdKey,
                constitutionalCommitteeColdKey) &&
            const DeepCollectionEquality().equals(
                other.constitutionalCommitteeHotKey,
                constitutionalCommitteeHotKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stakeDerivation,
      dRepDerivation,
      constitutionalCommitteeColdDerivation,
      constitutionalCommitteeHotDerivation,
      const DeepCollectionEquality().hash(accountKey),
      const DeepCollectionEquality().hash(paymentRoleKey),
      const DeepCollectionEquality().hash(changeRoleKey),
      const DeepCollectionEquality().hash(stakeRoleKey),
      const DeepCollectionEquality().hash(drepIdRoleKey),
      const DeepCollectionEquality().hash(constitutionalCommitteeColdRoleKey),
      const DeepCollectionEquality().hash(constitutionalCommitteeHotRoleKey),
      const DeepCollectionEquality().hash(stakeKey),
      const DeepCollectionEquality().hash(drepIdKey),
      const DeepCollectionEquality().hash(constitutionalCommitteeColdKey),
      const DeepCollectionEquality().hash(constitutionalCommitteeHotKey));

  @override
  String toString() {
    return 'CardanoPubAccount(stakeDerivation: $stakeDerivation, dRepDerivation: $dRepDerivation, constitutionalCommitteeColdDerivation: $constitutionalCommitteeColdDerivation, constitutionalCommitteeHotDerivation: $constitutionalCommitteeHotDerivation, accountKey: $accountKey, paymentRoleKey: $paymentRoleKey, changeRoleKey: $changeRoleKey, stakeRoleKey: $stakeRoleKey, drepIdRoleKey: $drepIdRoleKey, constitutionalCommitteeColdRoleKey: $constitutionalCommitteeColdRoleKey, constitutionalCommitteeHotRoleKey: $constitutionalCommitteeHotRoleKey, stakeKey: $stakeKey, drepIdKey: $drepIdKey, constitutionalCommitteeColdKey: $constitutionalCommitteeColdKey, constitutionalCommitteeHotKey: $constitutionalCommitteeHotKey)';
  }
}

/// @nodoc
abstract mixin class $CardanoPubAccountCopyWith<$Res> {
  factory $CardanoPubAccountCopyWith(
          CardanoPubAccount value, $Res Function(CardanoPubAccount) _then) =
      _$CardanoPubAccountCopyWithImpl;
  @useResult
  $Res call(
      {Bip32PublicKey accountKey,
      Bip32PublicKey paymentRoleKey,
      Bip32PublicKey changeRoleKey,
      Bip32PublicKey stakeRoleKey,
      Bip32PublicKey drepIdRoleKey,
      Bip32PublicKey constitutionalCommitteeColdRoleKey,
      Bip32PublicKey constitutionalCommitteeHotRoleKey,
      Bip32PublicKey stakeKey,
      Bip32PublicKey drepIdKey,
      Bip32PublicKey constitutionalCommitteeColdKey,
      Bip32PublicKey constitutionalCommitteeHotKey});
}

/// @nodoc
class _$CardanoPubAccountCopyWithImpl<$Res>
    implements $CardanoPubAccountCopyWith<$Res> {
  _$CardanoPubAccountCopyWithImpl(this._self, this._then);

  final CardanoPubAccount _self;
  final $Res Function(CardanoPubAccount) _then;

  /// Create a copy of CardanoPubAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountKey = null,
    Object? paymentRoleKey = null,
    Object? changeRoleKey = null,
    Object? stakeRoleKey = null,
    Object? drepIdRoleKey = null,
    Object? constitutionalCommitteeColdRoleKey = null,
    Object? constitutionalCommitteeHotRoleKey = null,
    Object? stakeKey = null,
    Object? drepIdKey = null,
    Object? constitutionalCommitteeColdKey = null,
    Object? constitutionalCommitteeHotKey = null,
  }) {
    return _then(_self.copyWith(
      accountKey: null == accountKey
          ? _self.accountKey
          : accountKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      paymentRoleKey: null == paymentRoleKey
          ? _self.paymentRoleKey
          : paymentRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      changeRoleKey: null == changeRoleKey
          ? _self.changeRoleKey
          : changeRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      stakeRoleKey: null == stakeRoleKey
          ? _self.stakeRoleKey
          : stakeRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      drepIdRoleKey: null == drepIdRoleKey
          ? _self.drepIdRoleKey
          : drepIdRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      constitutionalCommitteeColdRoleKey: null ==
              constitutionalCommitteeColdRoleKey
          ? _self.constitutionalCommitteeColdRoleKey
          : constitutionalCommitteeColdRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      constitutionalCommitteeHotRoleKey: null ==
              constitutionalCommitteeHotRoleKey
          ? _self.constitutionalCommitteeHotRoleKey
          : constitutionalCommitteeHotRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      stakeKey: null == stakeKey
          ? _self.stakeKey
          : stakeKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      drepIdKey: null == drepIdKey
          ? _self.drepIdKey
          : drepIdKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      constitutionalCommitteeColdKey: null == constitutionalCommitteeColdKey
          ? _self.constitutionalCommitteeColdKey
          : constitutionalCommitteeColdKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      constitutionalCommitteeHotKey: null == constitutionalCommitteeHotKey
          ? _self.constitutionalCommitteeHotKey
          : constitutionalCommitteeHotKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
    ));
  }
}

/// @nodoc

class _CardanoPubAccount extends CardanoPubAccount {
  _CardanoPubAccount(
      {required this.accountKey,
      required this.paymentRoleKey,
      required this.changeRoleKey,
      required this.stakeRoleKey,
      required this.drepIdRoleKey,
      required this.constitutionalCommitteeColdRoleKey,
      required this.constitutionalCommitteeHotRoleKey,
      required this.stakeKey,
      required this.drepIdKey,
      required this.constitutionalCommitteeColdKey,
      required this.constitutionalCommitteeHotKey})
      : super._();

  @override
  final Bip32PublicKey accountKey;
  @override
  final Bip32PublicKey paymentRoleKey;
  @override
  final Bip32PublicKey changeRoleKey;
  @override
  final Bip32PublicKey stakeRoleKey;
  @override
  final Bip32PublicKey drepIdRoleKey;
  @override
  final Bip32PublicKey constitutionalCommitteeColdRoleKey;
  @override
  final Bip32PublicKey constitutionalCommitteeHotRoleKey;
  @override
  final Bip32PublicKey stakeKey;
  @override
  final Bip32PublicKey drepIdKey;
  @override
  final Bip32PublicKey constitutionalCommitteeColdKey;
  @override
  final Bip32PublicKey constitutionalCommitteeHotKey;

  /// Create a copy of CardanoPubAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CardanoPubAccountCopyWith<_CardanoPubAccount> get copyWith =>
      __$CardanoPubAccountCopyWithImpl<_CardanoPubAccount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardanoPubAccount &&
            const DeepCollectionEquality()
                .equals(other.accountKey, accountKey) &&
            const DeepCollectionEquality()
                .equals(other.paymentRoleKey, paymentRoleKey) &&
            const DeepCollectionEquality()
                .equals(other.changeRoleKey, changeRoleKey) &&
            const DeepCollectionEquality()
                .equals(other.stakeRoleKey, stakeRoleKey) &&
            const DeepCollectionEquality()
                .equals(other.drepIdRoleKey, drepIdRoleKey) &&
            const DeepCollectionEquality().equals(
                other.constitutionalCommitteeColdRoleKey,
                constitutionalCommitteeColdRoleKey) &&
            const DeepCollectionEquality().equals(
                other.constitutionalCommitteeHotRoleKey,
                constitutionalCommitteeHotRoleKey) &&
            const DeepCollectionEquality().equals(other.stakeKey, stakeKey) &&
            const DeepCollectionEquality().equals(other.drepIdKey, drepIdKey) &&
            const DeepCollectionEquality().equals(
                other.constitutionalCommitteeColdKey,
                constitutionalCommitteeColdKey) &&
            const DeepCollectionEquality().equals(
                other.constitutionalCommitteeHotKey,
                constitutionalCommitteeHotKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountKey),
      const DeepCollectionEquality().hash(paymentRoleKey),
      const DeepCollectionEquality().hash(changeRoleKey),
      const DeepCollectionEquality().hash(stakeRoleKey),
      const DeepCollectionEquality().hash(drepIdRoleKey),
      const DeepCollectionEquality().hash(constitutionalCommitteeColdRoleKey),
      const DeepCollectionEquality().hash(constitutionalCommitteeHotRoleKey),
      const DeepCollectionEquality().hash(stakeKey),
      const DeepCollectionEquality().hash(drepIdKey),
      const DeepCollectionEquality().hash(constitutionalCommitteeColdKey),
      const DeepCollectionEquality().hash(constitutionalCommitteeHotKey));

  @override
  String toString() {
    return 'CardanoPubAccount._private(accountKey: $accountKey, paymentRoleKey: $paymentRoleKey, changeRoleKey: $changeRoleKey, stakeRoleKey: $stakeRoleKey, drepIdRoleKey: $drepIdRoleKey, constitutionalCommitteeColdRoleKey: $constitutionalCommitteeColdRoleKey, constitutionalCommitteeHotRoleKey: $constitutionalCommitteeHotRoleKey, stakeKey: $stakeKey, drepIdKey: $drepIdKey, constitutionalCommitteeColdKey: $constitutionalCommitteeColdKey, constitutionalCommitteeHotKey: $constitutionalCommitteeHotKey)';
  }
}

/// @nodoc
abstract mixin class _$CardanoPubAccountCopyWith<$Res>
    implements $CardanoPubAccountCopyWith<$Res> {
  factory _$CardanoPubAccountCopyWith(
          _CardanoPubAccount value, $Res Function(_CardanoPubAccount) _then) =
      __$CardanoPubAccountCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Bip32PublicKey accountKey,
      Bip32PublicKey paymentRoleKey,
      Bip32PublicKey changeRoleKey,
      Bip32PublicKey stakeRoleKey,
      Bip32PublicKey drepIdRoleKey,
      Bip32PublicKey constitutionalCommitteeColdRoleKey,
      Bip32PublicKey constitutionalCommitteeHotRoleKey,
      Bip32PublicKey stakeKey,
      Bip32PublicKey drepIdKey,
      Bip32PublicKey constitutionalCommitteeColdKey,
      Bip32PublicKey constitutionalCommitteeHotKey});
}

/// @nodoc
class __$CardanoPubAccountCopyWithImpl<$Res>
    implements _$CardanoPubAccountCopyWith<$Res> {
  __$CardanoPubAccountCopyWithImpl(this._self, this._then);

  final _CardanoPubAccount _self;
  final $Res Function(_CardanoPubAccount) _then;

  /// Create a copy of CardanoPubAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accountKey = null,
    Object? paymentRoleKey = null,
    Object? changeRoleKey = null,
    Object? stakeRoleKey = null,
    Object? drepIdRoleKey = null,
    Object? constitutionalCommitteeColdRoleKey = null,
    Object? constitutionalCommitteeHotRoleKey = null,
    Object? stakeKey = null,
    Object? drepIdKey = null,
    Object? constitutionalCommitteeColdKey = null,
    Object? constitutionalCommitteeHotKey = null,
  }) {
    return _then(_CardanoPubAccount(
      accountKey: null == accountKey
          ? _self.accountKey
          : accountKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      paymentRoleKey: null == paymentRoleKey
          ? _self.paymentRoleKey
          : paymentRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      changeRoleKey: null == changeRoleKey
          ? _self.changeRoleKey
          : changeRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      stakeRoleKey: null == stakeRoleKey
          ? _self.stakeRoleKey
          : stakeRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      drepIdRoleKey: null == drepIdRoleKey
          ? _self.drepIdRoleKey
          : drepIdRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      constitutionalCommitteeColdRoleKey: null ==
              constitutionalCommitteeColdRoleKey
          ? _self.constitutionalCommitteeColdRoleKey
          : constitutionalCommitteeColdRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      constitutionalCommitteeHotRoleKey: null ==
              constitutionalCommitteeHotRoleKey
          ? _self.constitutionalCommitteeHotRoleKey
          : constitutionalCommitteeHotRoleKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      stakeKey: null == stakeKey
          ? _self.stakeKey
          : stakeKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      drepIdKey: null == drepIdKey
          ? _self.drepIdKey
          : drepIdKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      constitutionalCommitteeColdKey: null == constitutionalCommitteeColdKey
          ? _self.constitutionalCommitteeColdKey
          : constitutionalCommitteeColdKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
      constitutionalCommitteeHotKey: null == constitutionalCommitteeHotKey
          ? _self.constitutionalCommitteeHotKey
          : constitutionalCommitteeHotKey // ignore: cast_nullable_to_non_nullable
              as Bip32PublicKey,
    ));
  }
}

// dart format on
