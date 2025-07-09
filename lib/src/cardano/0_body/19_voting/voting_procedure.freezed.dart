// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voting_procedure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VotingProcedure {
  Vote get vote;
  Anchor? get anchor;

  /// Create a copy of VotingProcedure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VotingProcedureCopyWith<VotingProcedure> get copyWith =>
      _$VotingProcedureCopyWithImpl<VotingProcedure>(
          this as VotingProcedure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VotingProcedure &&
            (identical(other.vote, vote) || other.vote == vote) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vote, anchor);

  @override
  String toString() {
    return 'VotingProcedure(vote: $vote, anchor: $anchor)';
  }
}

/// @nodoc
abstract mixin class $VotingProcedureCopyWith<$Res> {
  factory $VotingProcedureCopyWith(
          VotingProcedure value, $Res Function(VotingProcedure) _then) =
      _$VotingProcedureCopyWithImpl;
  @useResult
  $Res call({Vote vote, Anchor? anchor});

  $AnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$VotingProcedureCopyWithImpl<$Res>
    implements $VotingProcedureCopyWith<$Res> {
  _$VotingProcedureCopyWithImpl(this._self, this._then);

  final VotingProcedure _self;
  final $Res Function(VotingProcedure) _then;

  /// Create a copy of VotingProcedure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vote = null,
    Object? anchor = freezed,
  }) {
    return _then(_self.copyWith(
      vote: null == vote
          ? _self.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as Vote,
      anchor: freezed == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor?,
    ));
  }

  /// Create a copy of VotingProcedure
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

class _VotingProcedure extends VotingProcedure {
  const _VotingProcedure({required this.vote, required this.anchor})
      : super._();

  @override
  final Vote vote;
  @override
  final Anchor? anchor;

  /// Create a copy of VotingProcedure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VotingProcedureCopyWith<_VotingProcedure> get copyWith =>
      __$VotingProcedureCopyWithImpl<_VotingProcedure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VotingProcedure &&
            (identical(other.vote, vote) || other.vote == vote) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vote, anchor);

  @override
  String toString() {
    return 'VotingProcedure(vote: $vote, anchor: $anchor)';
  }
}

/// @nodoc
abstract mixin class _$VotingProcedureCopyWith<$Res>
    implements $VotingProcedureCopyWith<$Res> {
  factory _$VotingProcedureCopyWith(
          _VotingProcedure value, $Res Function(_VotingProcedure) _then) =
      __$VotingProcedureCopyWithImpl;
  @override
  @useResult
  $Res call({Vote vote, Anchor? anchor});

  @override
  $AnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$VotingProcedureCopyWithImpl<$Res>
    implements _$VotingProcedureCopyWith<$Res> {
  __$VotingProcedureCopyWithImpl(this._self, this._then);

  final _VotingProcedure _self;
  final $Res Function(_VotingProcedure) _then;

  /// Create a copy of VotingProcedure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? vote = null,
    Object? anchor = freezed,
  }) {
    return _then(_VotingProcedure(
      vote: null == vote
          ? _self.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as Vote,
      anchor: freezed == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor?,
    ));
  }

  /// Create a copy of VotingProcedure
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
