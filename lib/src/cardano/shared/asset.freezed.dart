// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Value {

 BigInt get lovelace => throw _privateConstructorUsedError;







/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ValueCopyWith<Value> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ValueCopyWith<$Res>  {
  factory $ValueCopyWith(Value value, $Res Function(Value) then) = _$ValueCopyWithImpl<$Res, Value>;
@useResult
$Res call({
 BigInt lovelace
});



}

/// @nodoc
class _$ValueCopyWithImpl<$Res,$Val extends Value> implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lovelace = null,}) {
  return _then(_value.copyWith(
lovelace: null == lovelace ? _value.lovelace : lovelace // ignore: cast_nullable_to_non_nullable
as BigInt,
  )as $Val);
}

}


/// @nodoc
abstract class _$$Value_v0ImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$Value_v0ImplCopyWith(_$Value_v0Impl value, $Res Function(_$Value_v0Impl) then) = __$$Value_v0ImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 BigInt lovelace
});



}

/// @nodoc
class __$$Value_v0ImplCopyWithImpl<$Res> extends _$ValueCopyWithImpl<$Res, _$Value_v0Impl> implements _$$Value_v0ImplCopyWith<$Res> {
  __$$Value_v0ImplCopyWithImpl(_$Value_v0Impl _value, $Res Function(_$Value_v0Impl) _then)
      : super(_value, _then);


/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lovelace = null,}) {
  return _then(_$Value_v0Impl(
lovelace: null == lovelace ? _value.lovelace : lovelace // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$Value_v0Impl extends Value_v0  {
  const _$Value_v0Impl({required this.lovelace}): super._();

  

@override final  BigInt lovelace;

@override
String toString() {
  return 'Value.v0(lovelace: $lovelace)';
}




/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$Value_v0ImplCopyWith<_$Value_v0Impl> get copyWith => __$$Value_v0ImplCopyWithImpl<_$Value_v0Impl>(this, _$identity);








}


abstract class Value_v0 extends Value {
  const factory Value_v0({required final  BigInt lovelace}) = _$Value_v0Impl;
  const Value_v0._(): super._();

  

@override BigInt get lovelace;
/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$Value_v0ImplCopyWith<_$Value_v0Impl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$Value_v1ImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$Value_v1ImplCopyWith(_$Value_v1Impl value, $Res Function(_$Value_v1Impl) then) = __$$Value_v1ImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 BigInt lovelace, List<MultiAsset> mA
});



}

/// @nodoc
class __$$Value_v1ImplCopyWithImpl<$Res> extends _$ValueCopyWithImpl<$Res, _$Value_v1Impl> implements _$$Value_v1ImplCopyWith<$Res> {
  __$$Value_v1ImplCopyWithImpl(_$Value_v1Impl _value, $Res Function(_$Value_v1Impl) _then)
      : super(_value, _then);


/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lovelace = null,Object? mA = null,}) {
  return _then(_$Value_v1Impl(
lovelace: null == lovelace ? _value.lovelace : lovelace // ignore: cast_nullable_to_non_nullable
as BigInt,mA: null == mA ? _value._mA : mA // ignore: cast_nullable_to_non_nullable
as List<MultiAsset>,
  ));
}


}

/// @nodoc


class _$Value_v1Impl extends Value_v1  {
  const _$Value_v1Impl({required this.lovelace, required final  List<MultiAsset> mA}): _mA = mA,super._();

  

@override final  BigInt lovelace;
 final  List<MultiAsset> _mA;
@override List<MultiAsset> get mA {
  if (_mA is EqualUnmodifiableListView) return _mA;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mA);
}


@override
String toString() {
  return 'Value.v1(lovelace: $lovelace, mA: $mA)';
}




/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$Value_v1ImplCopyWith<_$Value_v1Impl> get copyWith => __$$Value_v1ImplCopyWithImpl<_$Value_v1Impl>(this, _$identity);








}


abstract class Value_v1 extends Value {
  const factory Value_v1({required final  BigInt lovelace, required final  List<MultiAsset> mA}) = _$Value_v1Impl;
  const Value_v1._(): super._();

  

@override BigInt get lovelace; List<MultiAsset> get mA;
/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$Value_v1ImplCopyWith<_$Value_v1Impl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$MultiAsset {

 String get policyId => throw _privateConstructorUsedError;// hex encoded
 List<Asset> get assets => throw _privateConstructorUsedError;







/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$MultiAssetCopyWith<MultiAsset> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $MultiAssetCopyWith<$Res>  {
  factory $MultiAssetCopyWith(MultiAsset value, $Res Function(MultiAsset) then) = _$MultiAssetCopyWithImpl<$Res, MultiAsset>;
@useResult
$Res call({
 String policyId, List<Asset> assets
});



}

/// @nodoc
class _$MultiAssetCopyWithImpl<$Res,$Val extends MultiAsset> implements $MultiAssetCopyWith<$Res> {
  _$MultiAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? policyId = null,Object? assets = null,}) {
  return _then(_value.copyWith(
policyId: null == policyId ? _value.policyId : policyId // ignore: cast_nullable_to_non_nullable
as String,assets: null == assets ? _value.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$MultiAssetImplCopyWith<$Res> implements $MultiAssetCopyWith<$Res> {
  factory _$$MultiAssetImplCopyWith(_$MultiAssetImpl value, $Res Function(_$MultiAssetImpl) then) = __$$MultiAssetImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String policyId, List<Asset> assets
});



}

/// @nodoc
class __$$MultiAssetImplCopyWithImpl<$Res> extends _$MultiAssetCopyWithImpl<$Res, _$MultiAssetImpl> implements _$$MultiAssetImplCopyWith<$Res> {
  __$$MultiAssetImplCopyWithImpl(_$MultiAssetImpl _value, $Res Function(_$MultiAssetImpl) _then)
      : super(_value, _then);


/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? policyId = null,Object? assets = null,}) {
  return _then(_$MultiAssetImpl(
policyId: null == policyId ? _value.policyId : policyId // ignore: cast_nullable_to_non_nullable
as String,assets: null == assets ? _value._assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}


}

/// @nodoc


class _$MultiAssetImpl extends _MultiAsset  {
  const _$MultiAssetImpl({required this.policyId, required final  List<Asset> assets}): _assets = assets,super._();

  

@override final  String policyId;
// hex encoded
 final  List<Asset> _assets;
// hex encoded
@override List<Asset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}


@override
String toString() {
  return 'MultiAsset(policyId: $policyId, assets: $assets)';
}




/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$MultiAssetImplCopyWith<_$MultiAssetImpl> get copyWith => __$$MultiAssetImplCopyWithImpl<_$MultiAssetImpl>(this, _$identity);








}


abstract class _MultiAsset extends MultiAsset {
  const factory _MultiAsset({required final  String policyId, required final  List<Asset> assets}) = _$MultiAssetImpl;
  const _MultiAsset._(): super._();

  

@override String get policyId;// hex encoded
@override List<Asset> get assets;
/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$MultiAssetImplCopyWith<_$MultiAssetImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$Asset {

 String get hexName => throw _privateConstructorUsedError;// hex encoded
 BigInt get value => throw _privateConstructorUsedError;







/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$AssetCopyWith<Asset> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $AssetCopyWith<$Res>  {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) then) = _$AssetCopyWithImpl<$Res, Asset>;
@useResult
$Res call({
 String hexName, BigInt value
});



}

/// @nodoc
class _$AssetCopyWithImpl<$Res,$Val extends Asset> implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hexName = null,Object? value = null,}) {
  return _then(_value.copyWith(
hexName: null == hexName ? _value.hexName : hexName // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as BigInt,
  )as $Val);
}

}


/// @nodoc
abstract class _$$AssetImplCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$$AssetImplCopyWith(_$AssetImpl value, $Res Function(_$AssetImpl) then) = __$$AssetImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String hexName, BigInt value
});



}

/// @nodoc
class __$$AssetImplCopyWithImpl<$Res> extends _$AssetCopyWithImpl<$Res, _$AssetImpl> implements _$$AssetImplCopyWith<$Res> {
  __$$AssetImplCopyWithImpl(_$AssetImpl _value, $Res Function(_$AssetImpl) _then)
      : super(_value, _then);


/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hexName = null,Object? value = null,}) {
  return _then(_$AssetImpl(
hexName: null == hexName ? _value.hexName : hexName // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$AssetImpl extends _Asset  {
  const _$AssetImpl({required this.hexName, required this.value}): super._();

  

@override final  String hexName;
// hex encoded
@override final  BigInt value;

@override
String toString() {
  return 'Asset(hexName: $hexName, value: $value)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AssetImpl&&(identical(other.hexName, hexName) || other.hexName == hexName)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,hexName,value);

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$AssetImplCopyWith<_$AssetImpl> get copyWith => __$$AssetImplCopyWithImpl<_$AssetImpl>(this, _$identity);








}


abstract class _Asset extends Asset {
  const factory _Asset({required final  String hexName, required final  BigInt value}) = _$AssetImpl;
  const _Asset._(): super._();

  

@override String get hexName;// hex encoded
@override BigInt get value;
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$AssetImplCopyWith<_$AssetImpl> get copyWith => throw _privateConstructorUsedError;

}
