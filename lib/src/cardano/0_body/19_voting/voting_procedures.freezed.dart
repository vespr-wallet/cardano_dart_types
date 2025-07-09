// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voting_procedures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VotingProcedures {
  Map<Voter, Map<GovActionId, VotingProcedure>> get voting;

  /// Create a copy of VotingProcedures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VotingProceduresCopyWith<VotingProcedures> get copyWith =>
      _$VotingProceduresCopyWithImpl<VotingProcedures>(
          this as VotingProcedures, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VotingProcedures &&
            const DeepCollectionEquality().equals(other.voting, voting));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(voting));

  @override
  String toString() {
    return 'VotingProcedures(voting: $voting)';
  }
}

/// @nodoc
abstract mixin class $VotingProceduresCopyWith<$Res> {
  factory $VotingProceduresCopyWith(
          VotingProcedures value, $Res Function(VotingProcedures) _then) =
      _$VotingProceduresCopyWithImpl;
  @useResult
  $Res call({Map<Voter, Map<GovActionId, VotingProcedure>> voting});
}

/// @nodoc
class _$VotingProceduresCopyWithImpl<$Res>
    implements $VotingProceduresCopyWith<$Res> {
  _$VotingProceduresCopyWithImpl(this._self, this._then);

  final VotingProcedures _self;
  final $Res Function(VotingProcedures) _then;

  /// Create a copy of VotingProcedures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voting = null,
  }) {
    return _then(_self.copyWith(
      voting: null == voting
          ? _self.voting
          : voting // ignore: cast_nullable_to_non_nullable
              as Map<Voter, Map<GovActionId, VotingProcedure>>,
    ));
  }
}

/// @nodoc

class _VotingProcedures extends VotingProcedures {
  const _VotingProcedures(
      {required final Map<Voter, Map<GovActionId, VotingProcedure>> voting})
      : _voting = voting,
        super._();

  final Map<Voter, Map<GovActionId, VotingProcedure>> _voting;
  @override
  Map<Voter, Map<GovActionId, VotingProcedure>> get voting {
    if (_voting is EqualUnmodifiableMapView) return _voting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_voting);
  }

  /// Create a copy of VotingProcedures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VotingProceduresCopyWith<_VotingProcedures> get copyWith =>
      __$VotingProceduresCopyWithImpl<_VotingProcedures>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VotingProcedures &&
            const DeepCollectionEquality().equals(other._voting, _voting));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_voting));

  @override
  String toString() {
    return 'VotingProcedures(voting: $voting)';
  }
}

/// @nodoc
abstract mixin class _$VotingProceduresCopyWith<$Res>
    implements $VotingProceduresCopyWith<$Res> {
  factory _$VotingProceduresCopyWith(
          _VotingProcedures value, $Res Function(_VotingProcedures) _then) =
      __$VotingProceduresCopyWithImpl;
  @override
  @useResult
  $Res call({Map<Voter, Map<GovActionId, VotingProcedure>> voting});
}

/// @nodoc
class __$VotingProceduresCopyWithImpl<$Res>
    implements _$VotingProceduresCopyWith<$Res> {
  __$VotingProceduresCopyWithImpl(this._self, this._then);

  final _VotingProcedures _self;
  final $Res Function(_VotingProcedures) _then;

  /// Create a copy of VotingProcedures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? voting = null,
  }) {
    return _then(_VotingProcedures(
      voting: null == voting
          ? _self._voting
          : voting // ignore: cast_nullable_to_non_nullable
              as Map<Voter, Map<GovActionId, VotingProcedure>>,
    ));
  }
}

// dart format on
