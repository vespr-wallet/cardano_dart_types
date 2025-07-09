// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoseHeaders {
  CoseProtectedHeaderMap get protectedHeader;
  CoseHeaderMap get unprotectedHeader;

  /// Create a copy of CoseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoseHeadersCopyWith<CoseHeaders> get copyWith =>
      _$CoseHeadersCopyWithImpl<CoseHeaders>(this as CoseHeaders, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoseHeaders &&
            (identical(other.protectedHeader, protectedHeader) ||
                other.protectedHeader == protectedHeader) &&
            (identical(other.unprotectedHeader, unprotectedHeader) ||
                other.unprotectedHeader == unprotectedHeader));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, protectedHeader, unprotectedHeader);

  @override
  String toString() {
    return 'CoseHeaders(protectedHeader: $protectedHeader, unprotectedHeader: $unprotectedHeader)';
  }
}

/// @nodoc
abstract mixin class $CoseHeadersCopyWith<$Res> {
  factory $CoseHeadersCopyWith(
          CoseHeaders value, $Res Function(CoseHeaders) _then) =
      _$CoseHeadersCopyWithImpl;
  @useResult
  $Res call(
      {CoseProtectedHeaderMap protectedHeader,
      CoseHeaderMap unprotectedHeader});

  $CoseProtectedHeaderMapCopyWith<$Res> get protectedHeader;
  $CoseHeaderMapCopyWith<$Res> get unprotectedHeader;
}

/// @nodoc
class _$CoseHeadersCopyWithImpl<$Res> implements $CoseHeadersCopyWith<$Res> {
  _$CoseHeadersCopyWithImpl(this._self, this._then);

  final CoseHeaders _self;
  final $Res Function(CoseHeaders) _then;

  /// Create a copy of CoseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protectedHeader = null,
    Object? unprotectedHeader = null,
  }) {
    return _then(_self.copyWith(
      protectedHeader: null == protectedHeader
          ? _self.protectedHeader
          : protectedHeader // ignore: cast_nullable_to_non_nullable
              as CoseProtectedHeaderMap,
      unprotectedHeader: null == unprotectedHeader
          ? _self.unprotectedHeader
          : unprotectedHeader // ignore: cast_nullable_to_non_nullable
              as CoseHeaderMap,
    ));
  }

  /// Create a copy of CoseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoseProtectedHeaderMapCopyWith<$Res> get protectedHeader {
    return $CoseProtectedHeaderMapCopyWith<$Res>(_self.protectedHeader,
        (value) {
      return _then(_self.copyWith(protectedHeader: value));
    });
  }

  /// Create a copy of CoseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoseHeaderMapCopyWith<$Res> get unprotectedHeader {
    return $CoseHeaderMapCopyWith<$Res>(_self.unprotectedHeader, (value) {
      return _then(_self.copyWith(unprotectedHeader: value));
    });
  }
}

/// @nodoc

class _CoseHeaders extends CoseHeaders {
  const _CoseHeaders(
      {required this.protectedHeader, required this.unprotectedHeader})
      : super._();

  @override
  final CoseProtectedHeaderMap protectedHeader;
  @override
  final CoseHeaderMap unprotectedHeader;

  /// Create a copy of CoseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoseHeadersCopyWith<_CoseHeaders> get copyWith =>
      __$CoseHeadersCopyWithImpl<_CoseHeaders>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoseHeaders &&
            (identical(other.protectedHeader, protectedHeader) ||
                other.protectedHeader == protectedHeader) &&
            (identical(other.unprotectedHeader, unprotectedHeader) ||
                other.unprotectedHeader == unprotectedHeader));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, protectedHeader, unprotectedHeader);

  @override
  String toString() {
    return 'CoseHeaders(protectedHeader: $protectedHeader, unprotectedHeader: $unprotectedHeader)';
  }
}

/// @nodoc
abstract mixin class _$CoseHeadersCopyWith<$Res>
    implements $CoseHeadersCopyWith<$Res> {
  factory _$CoseHeadersCopyWith(
          _CoseHeaders value, $Res Function(_CoseHeaders) _then) =
      __$CoseHeadersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CoseProtectedHeaderMap protectedHeader,
      CoseHeaderMap unprotectedHeader});

  @override
  $CoseProtectedHeaderMapCopyWith<$Res> get protectedHeader;
  @override
  $CoseHeaderMapCopyWith<$Res> get unprotectedHeader;
}

/// @nodoc
class __$CoseHeadersCopyWithImpl<$Res> implements _$CoseHeadersCopyWith<$Res> {
  __$CoseHeadersCopyWithImpl(this._self, this._then);

  final _CoseHeaders _self;
  final $Res Function(_CoseHeaders) _then;

  /// Create a copy of CoseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? protectedHeader = null,
    Object? unprotectedHeader = null,
  }) {
    return _then(_CoseHeaders(
      protectedHeader: null == protectedHeader
          ? _self.protectedHeader
          : protectedHeader // ignore: cast_nullable_to_non_nullable
              as CoseProtectedHeaderMap,
      unprotectedHeader: null == unprotectedHeader
          ? _self.unprotectedHeader
          : unprotectedHeader // ignore: cast_nullable_to_non_nullable
              as CoseHeaderMap,
    ));
  }

  /// Create a copy of CoseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoseProtectedHeaderMapCopyWith<$Res> get protectedHeader {
    return $CoseProtectedHeaderMapCopyWith<$Res>(_self.protectedHeader,
        (value) {
      return _then(_self.copyWith(protectedHeader: value));
    });
  }

  /// Create a copy of CoseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoseHeaderMapCopyWith<$Res> get unprotectedHeader {
    return $CoseHeaderMapCopyWith<$Res>(_self.unprotectedHeader, (value) {
      return _then(_self.copyWith(unprotectedHeader: value));
    });
  }
}

// dart format on
