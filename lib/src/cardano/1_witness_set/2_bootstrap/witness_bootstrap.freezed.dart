// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness_bootstrap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WitnessBootstrap {

 Uint8List get publicKey => throw _privateConstructorUsedError; Uint8List get signature => throw _privateConstructorUsedError; Uint8List get chainCode => throw _privateConstructorUsedError; Uint8List get attributes => throw _privateConstructorUsedError;







/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$WitnessBootstrapCopyWith<WitnessBootstrap> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $WitnessBootstrapCopyWith<$Res>  {
  factory $WitnessBootstrapCopyWith(WitnessBootstrap value, $Res Function(WitnessBootstrap) then) = _$WitnessBootstrapCopyWithImpl<$Res, WitnessBootstrap>;
@useResult
$Res call({
 Uint8List publicKey, Uint8List signature, Uint8List chainCode, Uint8List attributes
});



}

/// @nodoc
class _$WitnessBootstrapCopyWithImpl<$Res,$Val extends WitnessBootstrap> implements $WitnessBootstrapCopyWith<$Res> {
  _$WitnessBootstrapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? publicKey = null,Object? signature = null,Object? chainCode = null,Object? attributes = null,}) {
  return _then(_value.copyWith(
publicKey: null == publicKey ? _value.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _value.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,chainCode: null == chainCode ? _value.chainCode : chainCode // ignore: cast_nullable_to_non_nullable
as Uint8List,attributes: null == attributes ? _value.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$WitnessBootstrapImplCopyWith<$Res> implements $WitnessBootstrapCopyWith<$Res> {
  factory _$$WitnessBootstrapImplCopyWith(_$WitnessBootstrapImpl value, $Res Function(_$WitnessBootstrapImpl) then) = __$$WitnessBootstrapImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List publicKey, Uint8List signature, Uint8List chainCode, Uint8List attributes
});



}

/// @nodoc
class __$$WitnessBootstrapImplCopyWithImpl<$Res> extends _$WitnessBootstrapCopyWithImpl<$Res, _$WitnessBootstrapImpl> implements _$$WitnessBootstrapImplCopyWith<$Res> {
  __$$WitnessBootstrapImplCopyWithImpl(_$WitnessBootstrapImpl _value, $Res Function(_$WitnessBootstrapImpl) _then)
      : super(_value, _then);


/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? publicKey = null,Object? signature = null,Object? chainCode = null,Object? attributes = null,}) {
  return _then(_$WitnessBootstrapImpl(
publicKey: null == publicKey ? _value.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _value.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,chainCode: null == chainCode ? _value.chainCode : chainCode // ignore: cast_nullable_to_non_nullable
as Uint8List,attributes: null == attributes ? _value.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$WitnessBootstrapImpl extends _WitnessBootstrap  {
  const _$WitnessBootstrapImpl({required this.publicKey, required this.signature, required this.chainCode, required this.attributes}): super._();

  

@override final  Uint8List publicKey;
@override final  Uint8List signature;
@override final  Uint8List chainCode;
@override final  Uint8List attributes;

@override
String toString() {
  return 'WitnessBootstrap(publicKey: $publicKey, signature: $signature, chainCode: $chainCode, attributes: $attributes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$WitnessBootstrapImpl&&const DeepCollectionEquality().equals(other.publicKey, publicKey)&&const DeepCollectionEquality().equals(other.signature, signature)&&const DeepCollectionEquality().equals(other.chainCode, chainCode)&&const DeepCollectionEquality().equals(other.attributes, attributes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(publicKey),const DeepCollectionEquality().hash(signature),const DeepCollectionEquality().hash(chainCode),const DeepCollectionEquality().hash(attributes));

/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$WitnessBootstrapImplCopyWith<_$WitnessBootstrapImpl> get copyWith => __$$WitnessBootstrapImplCopyWithImpl<_$WitnessBootstrapImpl>(this, _$identity);








}


abstract class _WitnessBootstrap extends WitnessBootstrap {
  const factory _WitnessBootstrap({required final  Uint8List publicKey, required final  Uint8List signature, required final  Uint8List chainCode, required final  Uint8List attributes}) = _$WitnessBootstrapImpl;
  const _WitnessBootstrap._(): super._();

  

@override Uint8List get publicKey;@override Uint8List get signature;@override Uint8List get chainCode;@override Uint8List get attributes;
/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$WitnessBootstrapImplCopyWith<_$WitnessBootstrapImpl> get copyWith => throw _privateConstructorUsedError;

}
