// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_protected_header_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoseProtectedHeaderMap {
  Uint8List get bytes;

  /// Create a copy of CoseProtectedHeaderMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoseProtectedHeaderMapCopyWith<CoseProtectedHeaderMap> get copyWith =>
      _$CoseProtectedHeaderMapCopyWithImpl<CoseProtectedHeaderMap>(
          this as CoseProtectedHeaderMap, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoseProtectedHeaderMap &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'CoseProtectedHeaderMap(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class $CoseProtectedHeaderMapCopyWith<$Res> {
  factory $CoseProtectedHeaderMapCopyWith(CoseProtectedHeaderMap value,
          $Res Function(CoseProtectedHeaderMap) _then) =
      _$CoseProtectedHeaderMapCopyWithImpl;
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class _$CoseProtectedHeaderMapCopyWithImpl<$Res>
    implements $CoseProtectedHeaderMapCopyWith<$Res> {
  _$CoseProtectedHeaderMapCopyWithImpl(this._self, this._then);

  final CoseProtectedHeaderMap _self;
  final $Res Function(CoseProtectedHeaderMap) _then;

  /// Create a copy of CoseProtectedHeaderMap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_self.copyWith(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _CoseProtectedHeaderMap extends CoseProtectedHeaderMap {
  const _CoseProtectedHeaderMap({required this.bytes}) : super._();

  @override
  final Uint8List bytes;

  /// Create a copy of CoseProtectedHeaderMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoseProtectedHeaderMapCopyWith<_CoseProtectedHeaderMap> get copyWith =>
      __$CoseProtectedHeaderMapCopyWithImpl<_CoseProtectedHeaderMap>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoseProtectedHeaderMap &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'CoseProtectedHeaderMap(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class _$CoseProtectedHeaderMapCopyWith<$Res>
    implements $CoseProtectedHeaderMapCopyWith<$Res> {
  factory _$CoseProtectedHeaderMapCopyWith(_CoseProtectedHeaderMap value,
          $Res Function(_CoseProtectedHeaderMap) _then) =
      __$CoseProtectedHeaderMapCopyWithImpl;
  @override
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$CoseProtectedHeaderMapCopyWithImpl<$Res>
    implements _$CoseProtectedHeaderMapCopyWith<$Res> {
  __$CoseProtectedHeaderMapCopyWithImpl(this._self, this._then);

  final _CoseProtectedHeaderMap _self;
  final $Res Function(_CoseProtectedHeaderMap) _then;

  /// Create a copy of CoseProtectedHeaderMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_CoseProtectedHeaderMap(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

// dart format on
