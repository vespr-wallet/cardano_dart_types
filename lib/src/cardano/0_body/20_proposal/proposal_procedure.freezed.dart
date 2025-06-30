// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_procedure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProposalProcedure {
  CborInt get deposit;
  Uint8List get rewardAccount;
  GovAction get govAction;
  Anchor get anchor;
  CborLengthType get cborLengthType;

  /// Create a copy of ProposalProcedure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProposalProcedureCopyWith<ProposalProcedure> get copyWith =>
      _$ProposalProcedureCopyWithImpl<ProposalProcedure>(
          this as ProposalProcedure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProposalProcedure &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            const DeepCollectionEquality()
                .equals(other.rewardAccount, rewardAccount) &&
            (identical(other.govAction, govAction) ||
                other.govAction == govAction) &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.cborLengthType, cborLengthType) ||
                other.cborLengthType == cborLengthType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      deposit,
      const DeepCollectionEquality().hash(rewardAccount),
      govAction,
      anchor,
      cborLengthType);

  @override
  String toString() {
    return 'ProposalProcedure(deposit: $deposit, rewardAccount: $rewardAccount, govAction: $govAction, anchor: $anchor, cborLengthType: $cborLengthType)';
  }
}

/// @nodoc
abstract mixin class $ProposalProcedureCopyWith<$Res> {
  factory $ProposalProcedureCopyWith(
          ProposalProcedure value, $Res Function(ProposalProcedure) _then) =
      _$ProposalProcedureCopyWithImpl;
  @useResult
  $Res call(
      {CborInt deposit,
      Uint8List rewardAccount,
      GovAction govAction,
      Anchor anchor,
      CborLengthType cborLengthType});

  $GovActionCopyWith<$Res> get govAction;
  $AnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class _$ProposalProcedureCopyWithImpl<$Res>
    implements $ProposalProcedureCopyWith<$Res> {
  _$ProposalProcedureCopyWithImpl(this._self, this._then);

  final ProposalProcedure _self;
  final $Res Function(ProposalProcedure) _then;

  /// Create a copy of ProposalProcedure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deposit = null,
    Object? rewardAccount = null,
    Object? govAction = null,
    Object? anchor = null,
    Object? cborLengthType = null,
  }) {
    return _then(_self.copyWith(
      deposit: null == deposit
          ? _self.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as CborInt,
      rewardAccount: null == rewardAccount
          ? _self.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      govAction: null == govAction
          ? _self.govAction
          : govAction // ignore: cast_nullable_to_non_nullable
              as GovAction,
      anchor: null == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor,
      cborLengthType: null == cborLengthType
          ? _self.cborLengthType
          : cborLengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }

  /// Create a copy of ProposalProcedure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GovActionCopyWith<$Res> get govAction {
    return $GovActionCopyWith<$Res>(_self.govAction, (value) {
      return _then(_self.copyWith(govAction: value));
    });
  }

  /// Create a copy of ProposalProcedure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnchorCopyWith<$Res> get anchor {
    return $AnchorCopyWith<$Res>(_self.anchor, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class _ProposalProcedure extends ProposalProcedure {
  const _ProposalProcedure(
      {required this.deposit,
      required this.rewardAccount,
      required this.govAction,
      required this.anchor,
      this.cborLengthType = CborLengthType.auto})
      : super._();

  @override
  final CborInt deposit;
  @override
  final Uint8List rewardAccount;
  @override
  final GovAction govAction;
  @override
  final Anchor anchor;
  @override
  @JsonKey()
  final CborLengthType cborLengthType;

  /// Create a copy of ProposalProcedure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProposalProcedureCopyWith<_ProposalProcedure> get copyWith =>
      __$ProposalProcedureCopyWithImpl<_ProposalProcedure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProposalProcedure &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            const DeepCollectionEquality()
                .equals(other.rewardAccount, rewardAccount) &&
            (identical(other.govAction, govAction) ||
                other.govAction == govAction) &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.cborLengthType, cborLengthType) ||
                other.cborLengthType == cborLengthType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      deposit,
      const DeepCollectionEquality().hash(rewardAccount),
      govAction,
      anchor,
      cborLengthType);

  @override
  String toString() {
    return 'ProposalProcedure(deposit: $deposit, rewardAccount: $rewardAccount, govAction: $govAction, anchor: $anchor, cborLengthType: $cborLengthType)';
  }
}

/// @nodoc
abstract mixin class _$ProposalProcedureCopyWith<$Res>
    implements $ProposalProcedureCopyWith<$Res> {
  factory _$ProposalProcedureCopyWith(
          _ProposalProcedure value, $Res Function(_ProposalProcedure) _then) =
      __$ProposalProcedureCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CborInt deposit,
      Uint8List rewardAccount,
      GovAction govAction,
      Anchor anchor,
      CborLengthType cborLengthType});

  @override
  $GovActionCopyWith<$Res> get govAction;
  @override
  $AnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class __$ProposalProcedureCopyWithImpl<$Res>
    implements _$ProposalProcedureCopyWith<$Res> {
  __$ProposalProcedureCopyWithImpl(this._self, this._then);

  final _ProposalProcedure _self;
  final $Res Function(_ProposalProcedure) _then;

  /// Create a copy of ProposalProcedure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deposit = null,
    Object? rewardAccount = null,
    Object? govAction = null,
    Object? anchor = null,
    Object? cborLengthType = null,
  }) {
    return _then(_ProposalProcedure(
      deposit: null == deposit
          ? _self.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as CborInt,
      rewardAccount: null == rewardAccount
          ? _self.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      govAction: null == govAction
          ? _self.govAction
          : govAction // ignore: cast_nullable_to_non_nullable
              as GovAction,
      anchor: null == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor,
      cborLengthType: null == cborLengthType
          ? _self.cborLengthType
          : cborLengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }

  /// Create a copy of ProposalProcedure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GovActionCopyWith<$Res> get govAction {
    return $GovActionCopyWith<$Res>(_self.govAction, (value) {
      return _then(_self.copyWith(govAction: value));
    });
  }

  /// Create a copy of ProposalProcedure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnchorCopyWith<$Res> get anchor {
    return $AnchorCopyWith<$Res>(_self.anchor, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

// dart format on
