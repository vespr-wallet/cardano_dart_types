// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness_v_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WitnessVKey {

 Uint8List get vkey; Uint8List get signature;
/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WitnessVKeyCopyWith<WitnessVKey> get copyWith => _$WitnessVKeyCopyWithImpl<WitnessVKey>(this as WitnessVKey, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WitnessVKey&&const DeepCollectionEquality().equals(other.vkey, vkey)&&const DeepCollectionEquality().equals(other.signature, signature));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(vkey),const DeepCollectionEquality().hash(signature));

@override
String toString() {
  return 'WitnessVKey(vkey: $vkey, signature: $signature)';
}


}

/// @nodoc
abstract mixin class $WitnessVKeyCopyWith<$Res>  {
  factory $WitnessVKeyCopyWith(WitnessVKey value, $Res Function(WitnessVKey) _then) = _$WitnessVKeyCopyWithImpl;
@useResult
$Res call({
 Uint8List vkey, Uint8List signature
});




}
/// @nodoc
class _$WitnessVKeyCopyWithImpl<$Res>
    implements $WitnessVKeyCopyWith<$Res> {
  _$WitnessVKeyCopyWithImpl(this._self, this._then);

  final WitnessVKey _self;
  final $Res Function(WitnessVKey) _then;

/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vkey = null,Object? signature = null,}) {
  return _then(_self.copyWith(
vkey: null == vkey ? _self.vkey : vkey // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}

}



/// @nodoc


class _WitnessVKey extends WitnessVKey {
  const _WitnessVKey({required this.vkey, required this.signature}): super._();
  

@override final  Uint8List vkey;
@override final  Uint8List signature;

/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WitnessVKeyCopyWith<_WitnessVKey> get copyWith => __$WitnessVKeyCopyWithImpl<_WitnessVKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WitnessVKey&&const DeepCollectionEquality().equals(other.vkey, vkey)&&const DeepCollectionEquality().equals(other.signature, signature));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(vkey),const DeepCollectionEquality().hash(signature));

@override
String toString() {
  return 'WitnessVKey(vkey: $vkey, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$WitnessVKeyCopyWith<$Res> implements $WitnessVKeyCopyWith<$Res> {
  factory _$WitnessVKeyCopyWith(_WitnessVKey value, $Res Function(_WitnessVKey) _then) = __$WitnessVKeyCopyWithImpl;
@override @useResult
$Res call({
 Uint8List vkey, Uint8List signature
});




}
/// @nodoc
class __$WitnessVKeyCopyWithImpl<$Res>
    implements _$WitnessVKeyCopyWith<$Res> {
  __$WitnessVKeyCopyWithImpl(this._self, this._then);

  final _WitnessVKey _self;
  final $Res Function(_WitnessVKey) _then;

/// Create a copy of WitnessVKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vkey = null,Object? signature = null,}) {
  return _then(_WitnessVKey(
vkey: null == vkey ? _self.vkey : vkey // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

// dart format on
