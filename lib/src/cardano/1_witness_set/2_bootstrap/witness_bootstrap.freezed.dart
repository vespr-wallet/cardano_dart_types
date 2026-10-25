// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness_bootstrap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WitnessBootstrap {

 Uint8List get publicKey; Uint8List get signature; Uint8List get chainCode; Uint8List get attributes; CborLengthType get lengthType;
/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WitnessBootstrapCopyWith<WitnessBootstrap> get copyWith => _$WitnessBootstrapCopyWithImpl<WitnessBootstrap>(this as WitnessBootstrap, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WitnessBootstrap;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WitnessBootstrap&&const DeepCollectionEquality().equals(other.publicKey, _this.publicKey)&&const DeepCollectionEquality().equals(other.signature, _this.signature)&&const DeepCollectionEquality().equals(other.chainCode, _this.chainCode)&&const DeepCollectionEquality().equals(other.attributes, _this.attributes)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType));
}


@override
int get hashCode {
  final _this = this as WitnessBootstrap;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.publicKey),const DeepCollectionEquality().hash(_this.signature),const DeepCollectionEquality().hash(_this.chainCode),const DeepCollectionEquality().hash(_this.attributes),_this.lengthType);
}

@override
String toString() {
  final _this = this as WitnessBootstrap;
  return 'WitnessBootstrap(publicKey: ${_this.publicKey}, signature: ${_this.signature}, chainCode: ${_this.chainCode}, attributes: ${_this.attributes}, lengthType: ${_this.lengthType})';
}


}

/// @nodoc
abstract mixin class $WitnessBootstrapCopyWith<$Res>  {
  factory $WitnessBootstrapCopyWith(WitnessBootstrap value, $Res Function(WitnessBootstrap) _then) = _$WitnessBootstrapCopyWithImpl;
@useResult
$Res call({
 Uint8List publicKey, Uint8List signature, Uint8List chainCode, Uint8List attributes, CborLengthType lengthType
});




}
/// @nodoc
class _$WitnessBootstrapCopyWithImpl<$Res>
    implements $WitnessBootstrapCopyWith<$Res> {
  _$WitnessBootstrapCopyWithImpl(this._self, this._then);

  final WitnessBootstrap _self;
  final $Res Function(WitnessBootstrap) _then;

/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? publicKey = null,Object? signature = null,Object? chainCode = null,Object? attributes = null,Object? lengthType = null,}) {
  return _then(WitnessBootstrap(
publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,chainCode: null == chainCode ? _self.chainCode : chainCode // ignore: cast_nullable_to_non_nullable
as Uint8List,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Uint8List,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _WitnessBootstrap extends WitnessBootstrap {
  const _WitnessBootstrap({required this.publicKey, required this.signature, required this.chainCode, required this.attributes, this.lengthType = CborLengthType.definite}): super._();
  

@override final  Uint8List publicKey;
@override final  Uint8List signature;
@override final  Uint8List chainCode;
@override final  Uint8List attributes;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WitnessBootstrapCopyWith<_WitnessBootstrap> get copyWith => __$WitnessBootstrapCopyWithImpl<_WitnessBootstrap>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WitnessBootstrap&&const DeepCollectionEquality().equals(other.publicKey, publicKey)&&const DeepCollectionEquality().equals(other.signature, signature)&&const DeepCollectionEquality().equals(other.chainCode, chainCode)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(publicKey),const DeepCollectionEquality().hash(signature),const DeepCollectionEquality().hash(chainCode),const DeepCollectionEquality().hash(attributes),lengthType);
}

@override
String toString() {
    return 'WitnessBootstrap(publicKey: $publicKey, signature: $signature, chainCode: $chainCode, attributes: $attributes, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class _$WitnessBootstrapCopyWith<$Res> implements $WitnessBootstrapCopyWith<$Res> {
  factory _$WitnessBootstrapCopyWith(_WitnessBootstrap value, $Res Function(_WitnessBootstrap) _then) = __$WitnessBootstrapCopyWithImpl;
@override @useResult
$Res call({
 Uint8List publicKey, Uint8List signature, Uint8List chainCode, Uint8List attributes, CborLengthType lengthType
});




}
/// @nodoc
class __$WitnessBootstrapCopyWithImpl<$Res>
    implements _$WitnessBootstrapCopyWith<$Res> {
  __$WitnessBootstrapCopyWithImpl(this._self, this._then);

  final _WitnessBootstrap _self;
  final $Res Function(_WitnessBootstrap) _then;

/// Create a copy of WitnessBootstrap
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? publicKey = null,Object? signature = null,Object? chainCode = null,Object? attributes = null,Object? lengthType = null,}) {
  return _then(_WitnessBootstrap(
publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,chainCode: null == chainCode ? _self.chainCode : chainCode // ignore: cast_nullable_to_non_nullable
as Uint8List,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Uint8List,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
