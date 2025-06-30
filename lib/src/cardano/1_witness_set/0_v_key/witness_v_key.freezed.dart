// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness_v_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WitnessVKey {

 Uint8List get vkey => throw _privateConstructorUsedError; Uint8List get signature => throw _privateConstructorUsedError;







/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$WitnessVKeyCopyWith<WitnessVKey> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $WitnessVKeyCopyWith<$Res>  {
  factory $WitnessVKeyCopyWith(WitnessVKey value, $Res Function(WitnessVKey) then) = _$WitnessVKeyCopyWithImpl<$Res, WitnessVKey>;
@useResult
$Res call({
 Uint8List vkey, Uint8List signature
});



}

/// @nodoc
class _$WitnessVKeyCopyWithImpl<$Res,$Val extends WitnessVKey> implements $WitnessVKeyCopyWith<$Res> {
  _$WitnessVKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vkey = null,Object? signature = null,}) {
  return _then(_value.copyWith(
vkey: null == vkey ? _value.vkey : vkey // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _value.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$WitnessVKeyImplCopyWith<$Res> implements $WitnessVKeyCopyWith<$Res> {
  factory _$$WitnessVKeyImplCopyWith(_$WitnessVKeyImpl value, $Res Function(_$WitnessVKeyImpl) then) = __$$WitnessVKeyImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List vkey, Uint8List signature
});



}

/// @nodoc
class __$$WitnessVKeyImplCopyWithImpl<$Res> extends _$WitnessVKeyCopyWithImpl<$Res, _$WitnessVKeyImpl> implements _$$WitnessVKeyImplCopyWith<$Res> {
  __$$WitnessVKeyImplCopyWithImpl(_$WitnessVKeyImpl _value, $Res Function(_$WitnessVKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vkey = null,Object? signature = null,}) {
  return _then(_$WitnessVKeyImpl(
vkey: null == vkey ? _value.vkey : vkey // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _value.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$WitnessVKeyImpl extends _WitnessVKey  {
  const _$WitnessVKeyImpl({required this.vkey, required this.signature}): super._();

  

@override final  Uint8List vkey;
@override final  Uint8List signature;

@override
String toString() {
  return 'WitnessVKey(vkey: $vkey, signature: $signature)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$WitnessVKeyImpl&&const DeepCollectionEquality().equals(other.vkey, vkey)&&const DeepCollectionEquality().equals(other.signature, signature));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(vkey),const DeepCollectionEquality().hash(signature));

/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$WitnessVKeyImplCopyWith<_$WitnessVKeyImpl> get copyWith => __$$WitnessVKeyImplCopyWithImpl<_$WitnessVKeyImpl>(this, _$identity);








}


abstract class _WitnessVKey extends WitnessVKey {
  const factory _WitnessVKey({required final  Uint8List vkey, required final  Uint8List signature}) = _$WitnessVKeyImpl;
  const _WitnessVKey._(): super._();

  

@override Uint8List get vkey;@override Uint8List get signature;
/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$WitnessVKeyImplCopyWith<_$WitnessVKeyImpl> get copyWith => throw _privateConstructorUsedError;

}
