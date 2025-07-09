// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gov_action_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GovActionId {
  Lazy<String> get bech32;
  String get transactionId;
  int get govActionIndex;

  /// Create a copy of GovActionId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GovActionIdCopyWith<GovActionId> get copyWith =>
      _$GovActionIdCopyWithImpl<GovActionId>(this as GovActionId, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GovActionId &&
            (identical(other.bech32, bech32) || other.bech32 == bech32) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.govActionIndex, govActionIndex) ||
                other.govActionIndex == govActionIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bech32, transactionId, govActionIndex);

  @override
  String toString() {
    return 'GovActionId(bech32: $bech32, transactionId: $transactionId, govActionIndex: $govActionIndex)';
  }
}

/// @nodoc
abstract mixin class $GovActionIdCopyWith<$Res> {
  factory $GovActionIdCopyWith(
          GovActionId value, $Res Function(GovActionId) _then) =
      _$GovActionIdCopyWithImpl;
  @useResult
  $Res call({String transactionId, int govActionIndex});
}

/// @nodoc
class _$GovActionIdCopyWithImpl<$Res> implements $GovActionIdCopyWith<$Res> {
  _$GovActionIdCopyWithImpl(this._self, this._then);

  final GovActionId _self;
  final $Res Function(GovActionId) _then;

  /// Create a copy of GovActionId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? govActionIndex = null,
  }) {
    return _then(_self.copyWith(
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      govActionIndex: null == govActionIndex
          ? _self.govActionIndex
          : govActionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _GovActionId extends GovActionId {
  _GovActionId({required this.transactionId, required this.govActionIndex})
      : super._();

  @override
  final String transactionId;
  @override
  final int govActionIndex;

  /// Create a copy of GovActionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GovActionIdCopyWith<_GovActionId> get copyWith =>
      __$GovActionIdCopyWithImpl<_GovActionId>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GovActionId &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.govActionIndex, govActionIndex) ||
                other.govActionIndex == govActionIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId, govActionIndex);

  @override
  String toString() {
    return 'GovActionId(transactionId: $transactionId, govActionIndex: $govActionIndex)';
  }
}

/// @nodoc
abstract mixin class _$GovActionIdCopyWith<$Res>
    implements $GovActionIdCopyWith<$Res> {
  factory _$GovActionIdCopyWith(
          _GovActionId value, $Res Function(_GovActionId) _then) =
      __$GovActionIdCopyWithImpl;
  @override
  @useResult
  $Res call({String transactionId, int govActionIndex});
}

/// @nodoc
class __$GovActionIdCopyWithImpl<$Res> implements _$GovActionIdCopyWith<$Res> {
  __$GovActionIdCopyWithImpl(this._self, this._then);

  final _GovActionId _self;
  final $Res Function(_GovActionId) _then;

  /// Create a copy of GovActionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transactionId = null,
    Object? govActionIndex = null,
  }) {
    return _then(_GovActionId(
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      govActionIndex: null == govActionIndex
          ? _self.govActionIndex
          : govActionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
