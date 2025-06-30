// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stake_pool_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StakePoolId {
  Uint8List get poolKeyHash;

  /// Create a copy of StakePoolId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakePoolIdCopyWith<StakePoolId> get copyWith =>
      _$StakePoolIdCopyWithImpl<StakePoolId>(this as StakePoolId, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakePoolId &&
            const DeepCollectionEquality()
                .equals(other.poolKeyHash, poolKeyHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(poolKeyHash));

  @override
  String toString() {
    return 'StakePoolId(poolKeyHash: $poolKeyHash)';
  }
}

/// @nodoc
abstract mixin class $StakePoolIdCopyWith<$Res> {
  factory $StakePoolIdCopyWith(
          StakePoolId value, $Res Function(StakePoolId) _then) =
      _$StakePoolIdCopyWithImpl;
  @useResult
  $Res call({Uint8List poolKeyHash});
}

/// @nodoc
class _$StakePoolIdCopyWithImpl<$Res> implements $StakePoolIdCopyWith<$Res> {
  _$StakePoolIdCopyWithImpl(this._self, this._then);

  final StakePoolId _self;
  final $Res Function(StakePoolId) _then;

  /// Create a copy of StakePoolId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolKeyHash = null,
  }) {
    return _then(_self.copyWith(
      poolKeyHash: null == poolKeyHash
          ? _self.poolKeyHash
          : poolKeyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _StakePoolId extends StakePoolId {
  const _StakePoolId(this.poolKeyHash) : super._();

  @override
  final Uint8List poolKeyHash;

  /// Create a copy of StakePoolId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StakePoolIdCopyWith<_StakePoolId> get copyWith =>
      __$StakePoolIdCopyWithImpl<_StakePoolId>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StakePoolId &&
            const DeepCollectionEquality()
                .equals(other.poolKeyHash, poolKeyHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(poolKeyHash));

  @override
  String toString() {
    return 'StakePoolId(poolKeyHash: $poolKeyHash)';
  }
}

/// @nodoc
abstract mixin class _$StakePoolIdCopyWith<$Res>
    implements $StakePoolIdCopyWith<$Res> {
  factory _$StakePoolIdCopyWith(
          _StakePoolId value, $Res Function(_StakePoolId) _then) =
      __$StakePoolIdCopyWithImpl;
  @override
  @useResult
  $Res call({Uint8List poolKeyHash});
}

/// @nodoc
class __$StakePoolIdCopyWithImpl<$Res> implements _$StakePoolIdCopyWith<$Res> {
  __$StakePoolIdCopyWithImpl(this._self, this._then);

  final _StakePoolId _self;
  final $Res Function(_StakePoolId) _then;

  /// Create a copy of StakePoolId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? poolKeyHash = null,
  }) {
    return _then(_StakePoolId(
      null == poolKeyHash
          ? _self.poolKeyHash
          : poolKeyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

// dart format on
