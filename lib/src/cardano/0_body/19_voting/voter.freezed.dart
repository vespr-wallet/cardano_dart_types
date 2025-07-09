// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Voter {
  VoterType get voterType;
  Uint8List get vKeyHash;

  /// Create a copy of Voter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VoterCopyWith<Voter> get copyWith =>
      _$VoterCopyWithImpl<Voter>(this as Voter, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Voter &&
            (identical(other.voterType, voterType) ||
                other.voterType == voterType) &&
            const DeepCollectionEquality().equals(other.vKeyHash, vKeyHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, voterType, const DeepCollectionEquality().hash(vKeyHash));

  @override
  String toString() {
    return 'Voter(voterType: $voterType, vKeyHash: $vKeyHash)';
  }
}

/// @nodoc
abstract mixin class $VoterCopyWith<$Res> {
  factory $VoterCopyWith(Voter value, $Res Function(Voter) _then) =
      _$VoterCopyWithImpl;
  @useResult
  $Res call({VoterType voterType, Uint8List vKeyHash});
}

/// @nodoc
class _$VoterCopyWithImpl<$Res> implements $VoterCopyWith<$Res> {
  _$VoterCopyWithImpl(this._self, this._then);

  final Voter _self;
  final $Res Function(Voter) _then;

  /// Create a copy of Voter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voterType = null,
    Object? vKeyHash = null,
  }) {
    return _then(_self.copyWith(
      voterType: null == voterType
          ? _self.voterType
          : voterType // ignore: cast_nullable_to_non_nullable
              as VoterType,
      vKeyHash: null == vKeyHash
          ? _self.vKeyHash
          : vKeyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _Voter extends Voter {
  const _Voter({required this.voterType, required this.vKeyHash}) : super._();

  @override
  final VoterType voterType;
  @override
  final Uint8List vKeyHash;

  /// Create a copy of Voter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VoterCopyWith<_Voter> get copyWith =>
      __$VoterCopyWithImpl<_Voter>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Voter &&
            (identical(other.voterType, voterType) ||
                other.voterType == voterType) &&
            const DeepCollectionEquality().equals(other.vKeyHash, vKeyHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, voterType, const DeepCollectionEquality().hash(vKeyHash));

  @override
  String toString() {
    return 'Voter(voterType: $voterType, vKeyHash: $vKeyHash)';
  }
}

/// @nodoc
abstract mixin class _$VoterCopyWith<$Res> implements $VoterCopyWith<$Res> {
  factory _$VoterCopyWith(_Voter value, $Res Function(_Voter) _then) =
      __$VoterCopyWithImpl;
  @override
  @useResult
  $Res call({VoterType voterType, Uint8List vKeyHash});
}

/// @nodoc
class __$VoterCopyWithImpl<$Res> implements _$VoterCopyWith<$Res> {
  __$VoterCopyWithImpl(this._self, this._then);

  final _Voter _self;
  final $Res Function(_Voter) _then;

  /// Create a copy of Voter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? voterType = null,
    Object? vKeyHash = null,
  }) {
    return _then(_Voter(
      voterType: null == voterType
          ? _self.voterType
          : voterType // ignore: cast_nullable_to_non_nullable
              as VoterType,
      vKeyHash: null == vKeyHash
          ? _self.vKeyHash
          : vKeyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

// dart format on
