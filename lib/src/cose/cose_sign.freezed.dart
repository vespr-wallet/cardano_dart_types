// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_sign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoseSign {
  CoseHeaders get headers;
  Uint8List get payload;
  List<CoseSignature> get signatures;

  /// Create a copy of CoseSign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoseSignCopyWith<CoseSign> get copyWith =>
      _$CoseSignCopyWithImpl<CoseSign>(this as CoseSign, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoseSign &&
            (identical(other.headers, headers) || other.headers == headers) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality()
                .equals(other.signatures, signatures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      headers,
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(signatures));

  @override
  String toString() {
    return 'CoseSign(headers: $headers, payload: $payload, signatures: $signatures)';
  }
}

/// @nodoc
abstract mixin class $CoseSignCopyWith<$Res> {
  factory $CoseSignCopyWith(CoseSign value, $Res Function(CoseSign) _then) =
      _$CoseSignCopyWithImpl;
  @useResult
  $Res call(
      {CoseHeaders headers, Uint8List payload, List<CoseSignature> signatures});

  $CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class _$CoseSignCopyWithImpl<$Res> implements $CoseSignCopyWith<$Res> {
  _$CoseSignCopyWithImpl(this._self, this._then);

  final CoseSign _self;
  final $Res Function(CoseSign) _then;

  /// Create a copy of CoseSign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = null,
    Object? payload = null,
    Object? signatures = null,
  }) {
    return _then(_self.copyWith(
      headers: null == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as CoseHeaders,
      payload: null == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signatures: null == signatures
          ? _self.signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<CoseSignature>,
    ));
  }

  /// Create a copy of CoseSign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoseHeadersCopyWith<$Res> get headers {
    return $CoseHeadersCopyWith<$Res>(_self.headers, (value) {
      return _then(_self.copyWith(headers: value));
    });
  }
}

/// @nodoc

class _CoseSign extends CoseSign {
  const _CoseSign(
      {required this.headers,
      required this.payload,
      required final List<CoseSignature> signatures})
      : _signatures = signatures,
        super._();

  @override
  final CoseHeaders headers;
  @override
  final Uint8List payload;
  final List<CoseSignature> _signatures;
  @override
  List<CoseSignature> get signatures {
    if (_signatures is EqualUnmodifiableListView) return _signatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signatures);
  }

  /// Create a copy of CoseSign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoseSignCopyWith<_CoseSign> get copyWith =>
      __$CoseSignCopyWithImpl<_CoseSign>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoseSign &&
            (identical(other.headers, headers) || other.headers == headers) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality()
                .equals(other._signatures, _signatures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      headers,
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(_signatures));

  @override
  String toString() {
    return 'CoseSign(headers: $headers, payload: $payload, signatures: $signatures)';
  }
}

/// @nodoc
abstract mixin class _$CoseSignCopyWith<$Res>
    implements $CoseSignCopyWith<$Res> {
  factory _$CoseSignCopyWith(_CoseSign value, $Res Function(_CoseSign) _then) =
      __$CoseSignCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CoseHeaders headers, Uint8List payload, List<CoseSignature> signatures});

  @override
  $CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class __$CoseSignCopyWithImpl<$Res> implements _$CoseSignCopyWith<$Res> {
  __$CoseSignCopyWithImpl(this._self, this._then);

  final _CoseSign _self;
  final $Res Function(_CoseSign) _then;

  /// Create a copy of CoseSign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? headers = null,
    Object? payload = null,
    Object? signatures = null,
  }) {
    return _then(_CoseSign(
      headers: null == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as CoseHeaders,
      payload: null == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signatures: null == signatures
          ? _self._signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<CoseSignature>,
    ));
  }

  /// Create a copy of CoseSign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoseHeadersCopyWith<$Res> get headers {
    return $CoseHeadersCopyWith<$Res>(_self.headers, (value) {
      return _then(_self.copyWith(headers: value));
    });
  }
}

// dart format on
