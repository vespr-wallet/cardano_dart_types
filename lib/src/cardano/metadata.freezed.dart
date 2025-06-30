// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CBORMetadata {
  CborValue get value;

  /// Create a copy of CBORMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CBORMetadataCopyWith<CBORMetadata> get copyWith =>
      _$CBORMetadataCopyWithImpl<CBORMetadata>(
          this as CBORMetadata, _$identity);

  @override
  String toString() {
    return 'CBORMetadata(value: $value)';
  }
}

/// @nodoc
abstract mixin class $CBORMetadataCopyWith<$Res> {
  factory $CBORMetadataCopyWith(
          CBORMetadata value, $Res Function(CBORMetadata) _then) =
      _$CBORMetadataCopyWithImpl;
  @useResult
  $Res call({CborValue value});
}

/// @nodoc
class _$CBORMetadataCopyWithImpl<$Res> implements $CBORMetadataCopyWith<$Res> {
  _$CBORMetadataCopyWithImpl(this._self, this._then);

  final CBORMetadata _self;
  final $Res Function(CBORMetadata) _then;

  /// Create a copy of CBORMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as CborValue,
    ));
  }
}

/// @nodoc

class _CBORMetadata extends CBORMetadata {
  _CBORMetadata({required this.value}) : super._();

  @override
  final CborValue value;

  /// Create a copy of CBORMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CBORMetadataCopyWith<_CBORMetadata> get copyWith =>
      __$CBORMetadataCopyWithImpl<_CBORMetadata>(this, _$identity);

  @override
  String toString() {
    return 'CBORMetadata(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$CBORMetadataCopyWith<$Res>
    implements $CBORMetadataCopyWith<$Res> {
  factory _$CBORMetadataCopyWith(
          _CBORMetadata value, $Res Function(_CBORMetadata) _then) =
      __$CBORMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({CborValue value});
}

/// @nodoc
class __$CBORMetadataCopyWithImpl<$Res>
    implements _$CBORMetadataCopyWith<$Res> {
  __$CBORMetadataCopyWithImpl(this._self, this._then);

  final _CBORMetadata _self;
  final $Res Function(_CBORMetadata) _then;

  /// Create a copy of CBORMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_CBORMetadata(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as CborValue,
    ));
  }
}

// dart format on
