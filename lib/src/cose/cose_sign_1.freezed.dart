// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_sign_1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoseSign1 {
  CoseHeaders get headers;
  Uint8List get payload;
  Uint8List get signature;

  /// Create a copy of CoseSign1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoseSign1CopyWith<CoseSign1> get copyWith =>
      _$CoseSign1CopyWithImpl<CoseSign1>(this as CoseSign1, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoseSign1 &&
            (identical(other.headers, headers) || other.headers == headers) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality().equals(other.signature, signature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      headers,
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(signature));

  @override
  String toString() {
    return 'CoseSign1(headers: $headers, payload: $payload, signature: $signature)';
  }
}

/// @nodoc
abstract mixin class $CoseSign1CopyWith<$Res> {
  factory $CoseSign1CopyWith(CoseSign1 value, $Res Function(CoseSign1) _then) =
      _$CoseSign1CopyWithImpl;
  @useResult
  $Res call({CoseHeaders headers, Uint8List payload, Uint8List signature});

  $CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class _$CoseSign1CopyWithImpl<$Res> implements $CoseSign1CopyWith<$Res> {
  _$CoseSign1CopyWithImpl(this._self, this._then);

  final CoseSign1 _self;
  final $Res Function(CoseSign1) _then;

  /// Create a copy of CoseSign1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = null,
    Object? payload = null,
    Object? signature = null,
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
      signature: null == signature
          ? _self.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  /// Create a copy of CoseSign1
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

class _CoseSign1 extends CoseSign1 {
  const _CoseSign1(
      {required this.headers, required this.payload, required this.signature})
      : super._();

  @override
  final CoseHeaders headers;
  @override
  final Uint8List payload;
  @override
  final Uint8List signature;

  /// Create a copy of CoseSign1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoseSign1CopyWith<_CoseSign1> get copyWith =>
      __$CoseSign1CopyWithImpl<_CoseSign1>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoseSign1 &&
            (identical(other.headers, headers) || other.headers == headers) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality().equals(other.signature, signature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      headers,
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(signature));

  @override
  String toString() {
    return 'CoseSign1(headers: $headers, payload: $payload, signature: $signature)';
  }
}

/// @nodoc
abstract mixin class _$CoseSign1CopyWith<$Res>
    implements $CoseSign1CopyWith<$Res> {
  factory _$CoseSign1CopyWith(
          _CoseSign1 value, $Res Function(_CoseSign1) _then) =
      __$CoseSign1CopyWithImpl;
  @override
  @useResult
  $Res call({CoseHeaders headers, Uint8List payload, Uint8List signature});

  @override
  $CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class __$CoseSign1CopyWithImpl<$Res> implements _$CoseSign1CopyWith<$Res> {
  __$CoseSign1CopyWithImpl(this._self, this._then);

  final _CoseSign1 _self;
  final $Res Function(_CoseSign1) _then;

  /// Create a copy of CoseSign1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? headers = null,
    Object? payload = null,
    Object? signature = null,
  }) {
    return _then(_CoseSign1(
      headers: null == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as CoseHeaders,
      payload: null == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signature: null == signature
          ? _self.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  /// Create a copy of CoseSign1
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
