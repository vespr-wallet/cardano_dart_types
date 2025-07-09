// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness_bootstrap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WitnessBootstrap {
  Uint8List get publicKey;
  Uint8List get signature;
  Uint8List get chainCode;
  Uint8List get attributes;

  /// Create a copy of WitnessBootstrap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WitnessBootstrapCopyWith<WitnessBootstrap> get copyWith =>
      _$WitnessBootstrapCopyWithImpl<WitnessBootstrap>(
          this as WitnessBootstrap, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WitnessBootstrap &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.signature, signature) &&
            const DeepCollectionEquality().equals(other.chainCode, chainCode) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(signature),
      const DeepCollectionEquality().hash(chainCode),
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'WitnessBootstrap(publicKey: $publicKey, signature: $signature, chainCode: $chainCode, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $WitnessBootstrapCopyWith<$Res> {
  factory $WitnessBootstrapCopyWith(
          WitnessBootstrap value, $Res Function(WitnessBootstrap) _then) =
      _$WitnessBootstrapCopyWithImpl;
  @useResult
  $Res call(
      {Uint8List publicKey,
      Uint8List signature,
      Uint8List chainCode,
      Uint8List attributes});
}

/// @nodoc
class _$WitnessBootstrapCopyWithImpl<$Res>
    implements $WitnessBootstrapCopyWith<$Res> {
  _$WitnessBootstrapCopyWithImpl(this._self, this._then);

  final WitnessBootstrap _self;
  final $Res Function(WitnessBootstrap) _then;

  /// Create a copy of WitnessBootstrap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? signature = null,
    Object? chainCode = null,
    Object? attributes = null,
  }) {
    return _then(_self.copyWith(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signature: null == signature
          ? _self.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      chainCode: null == chainCode
          ? _self.chainCode
          : chainCode // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      attributes: null == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _WitnessBootstrap extends WitnessBootstrap {
  const _WitnessBootstrap(
      {required this.publicKey,
      required this.signature,
      required this.chainCode,
      required this.attributes})
      : super._();

  @override
  final Uint8List publicKey;
  @override
  final Uint8List signature;
  @override
  final Uint8List chainCode;
  @override
  final Uint8List attributes;

  /// Create a copy of WitnessBootstrap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WitnessBootstrapCopyWith<_WitnessBootstrap> get copyWith =>
      __$WitnessBootstrapCopyWithImpl<_WitnessBootstrap>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WitnessBootstrap &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.signature, signature) &&
            const DeepCollectionEquality().equals(other.chainCode, chainCode) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(signature),
      const DeepCollectionEquality().hash(chainCode),
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'WitnessBootstrap(publicKey: $publicKey, signature: $signature, chainCode: $chainCode, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$WitnessBootstrapCopyWith<$Res>
    implements $WitnessBootstrapCopyWith<$Res> {
  factory _$WitnessBootstrapCopyWith(
          _WitnessBootstrap value, $Res Function(_WitnessBootstrap) _then) =
      __$WitnessBootstrapCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uint8List publicKey,
      Uint8List signature,
      Uint8List chainCode,
      Uint8List attributes});
}

/// @nodoc
class __$WitnessBootstrapCopyWithImpl<$Res>
    implements _$WitnessBootstrapCopyWith<$Res> {
  __$WitnessBootstrapCopyWithImpl(this._self, this._then);

  final _WitnessBootstrap _self;
  final $Res Function(_WitnessBootstrap) _then;

  /// Create a copy of WitnessBootstrap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicKey = null,
    Object? signature = null,
    Object? chainCode = null,
    Object? attributes = null,
  }) {
    return _then(_WitnessBootstrap(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signature: null == signature
          ? _self.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      chainCode: null == chainCode
          ? _self.chainCode
          : chainCode // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      attributes: null == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

// dart format on
