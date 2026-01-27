// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Value {

 CborInt get lovelace;
/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueCopyWith<Value> get copyWith => _$ValueCopyWithImpl<Value>(this as Value, _$identity);





@override
String toString() {
  return 'Value(lovelace: $lovelace)';
}


}

/// @nodoc
abstract mixin class $ValueCopyWith<$Res>  {
  factory $ValueCopyWith(Value value, $Res Function(Value) _then) = _$ValueCopyWithImpl;
@useResult
$Res call({
 CborInt lovelace
});




}
/// @nodoc
class _$ValueCopyWithImpl<$Res>
    implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._self, this._then);

  final Value _self;
  final $Res Function(Value) _then;

/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lovelace = null,}) {
  return _then(_self.copyWith(
lovelace: null == lovelace ? _self.lovelace : lovelace // ignore: cast_nullable_to_non_nullable
as CborInt,
  ));
}

}



/// @nodoc


class Value_v0 extends Value {
  const Value_v0({required this.lovelace}): super._();
  

@override final  CborInt lovelace;

/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Value_v0CopyWith<Value_v0> get copyWith => _$Value_v0CopyWithImpl<Value_v0>(this, _$identity);





@override
String toString() {
  return 'Value.v0(lovelace: $lovelace)';
}


}

/// @nodoc
abstract mixin class $Value_v0CopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory $Value_v0CopyWith(Value_v0 value, $Res Function(Value_v0) _then) = _$Value_v0CopyWithImpl;
@override @useResult
$Res call({
 CborInt lovelace
});




}
/// @nodoc
class _$Value_v0CopyWithImpl<$Res>
    implements $Value_v0CopyWith<$Res> {
  _$Value_v0CopyWithImpl(this._self, this._then);

  final Value_v0 _self;
  final $Res Function(Value_v0) _then;

/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lovelace = null,}) {
  return _then(Value_v0(
lovelace: null == lovelace ? _self.lovelace : lovelace // ignore: cast_nullable_to_non_nullable
as CborInt,
  ));
}


}

/// @nodoc


class Value_v1 extends Value {
  const Value_v1({required this.lovelace, required final  List<MultiAsset> mA}): _mA = mA,super._();
  

@override final  CborInt lovelace;
 final  List<MultiAsset> _mA;
 List<MultiAsset> get mA {
  if (_mA is EqualUnmodifiableListView) return _mA;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mA);
}


/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Value_v1CopyWith<Value_v1> get copyWith => _$Value_v1CopyWithImpl<Value_v1>(this, _$identity);





@override
String toString() {
  return 'Value.v1(lovelace: $lovelace, mA: $mA)';
}


}

/// @nodoc
abstract mixin class $Value_v1CopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory $Value_v1CopyWith(Value_v1 value, $Res Function(Value_v1) _then) = _$Value_v1CopyWithImpl;
@override @useResult
$Res call({
 CborInt lovelace, List<MultiAsset> mA
});




}
/// @nodoc
class _$Value_v1CopyWithImpl<$Res>
    implements $Value_v1CopyWith<$Res> {
  _$Value_v1CopyWithImpl(this._self, this._then);

  final Value_v1 _self;
  final $Res Function(Value_v1) _then;

/// Create a copy of Value
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lovelace = null,Object? mA = null,}) {
  return _then(Value_v1(
lovelace: null == lovelace ? _self.lovelace : lovelace // ignore: cast_nullable_to_non_nullable
as CborInt,mA: null == mA ? _self._mA : mA // ignore: cast_nullable_to_non_nullable
as List<MultiAsset>,
  ));
}


}

/// @nodoc
mixin _$MultiAsset {

 PolicyId get policyId; List<Asset> get assets;
/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultiAssetCopyWith<MultiAsset> get copyWith => _$MultiAssetCopyWithImpl<MultiAsset>(this as MultiAsset, _$identity);





@override
String toString() {
  return 'MultiAsset(policyId: $policyId, assets: $assets)';
}


}

/// @nodoc
abstract mixin class $MultiAssetCopyWith<$Res>  {
  factory $MultiAssetCopyWith(MultiAsset value, $Res Function(MultiAsset) _then) = _$MultiAssetCopyWithImpl;
@useResult
$Res call({
 PolicyId policyId, List<Asset> assets
});


$PolicyIdCopyWith<$Res> get policyId;

}
/// @nodoc
class _$MultiAssetCopyWithImpl<$Res>
    implements $MultiAssetCopyWith<$Res> {
  _$MultiAssetCopyWithImpl(this._self, this._then);

  final MultiAsset _self;
  final $Res Function(MultiAsset) _then;

/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? policyId = null,Object? assets = null,}) {
  return _then(_self.copyWith(
policyId: null == policyId ? _self.policyId : policyId // ignore: cast_nullable_to_non_nullable
as PolicyId,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}
/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PolicyIdCopyWith<$Res> get policyId {
  
  return $PolicyIdCopyWith<$Res>(_self.policyId, (value) {
    return _then(_self.copyWith(policyId: value));
  });
}
}



/// @nodoc


class _MultiAsset extends MultiAsset {
  const _MultiAsset({required this.policyId, required final  List<Asset> assets}): _assets = assets,super._();
  

@override final  PolicyId policyId;
 final  List<Asset> _assets;
@override List<Asset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}


/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultiAssetCopyWith<_MultiAsset> get copyWith => __$MultiAssetCopyWithImpl<_MultiAsset>(this, _$identity);





@override
String toString() {
  return 'MultiAsset(policyId: $policyId, assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$MultiAssetCopyWith<$Res> implements $MultiAssetCopyWith<$Res> {
  factory _$MultiAssetCopyWith(_MultiAsset value, $Res Function(_MultiAsset) _then) = __$MultiAssetCopyWithImpl;
@override @useResult
$Res call({
 PolicyId policyId, List<Asset> assets
});


@override $PolicyIdCopyWith<$Res> get policyId;

}
/// @nodoc
class __$MultiAssetCopyWithImpl<$Res>
    implements _$MultiAssetCopyWith<$Res> {
  __$MultiAssetCopyWithImpl(this._self, this._then);

  final _MultiAsset _self;
  final $Res Function(_MultiAsset) _then;

/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? policyId = null,Object? assets = null,}) {
  return _then(_MultiAsset(
policyId: null == policyId ? _self.policyId : policyId // ignore: cast_nullable_to_non_nullable
as PolicyId,assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}

/// Create a copy of MultiAsset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PolicyIdCopyWith<$Res> get policyId {
  
  return $PolicyIdCopyWith<$Res>(_self.policyId, (value) {
    return _then(_self.copyWith(policyId: value));
  });
}
}

/// @nodoc
mixin _$Asset {

 AssetName get assetName; CborInt get value;
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetCopyWith<Asset> get copyWith => _$AssetCopyWithImpl<Asset>(this as Asset, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Asset&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,assetName,value);

@override
String toString() {
  return 'Asset(assetName: $assetName, value: $value)';
}


}

/// @nodoc
abstract mixin class $AssetCopyWith<$Res>  {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) _then) = _$AssetCopyWithImpl;
@useResult
$Res call({
 AssetName assetName, CborInt value
});


$AssetNameCopyWith<$Res> get assetName;

}
/// @nodoc
class _$AssetCopyWithImpl<$Res>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._self, this._then);

  final Asset _self;
  final $Res Function(Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assetName = null,Object? value = null,}) {
  return _then(_self.copyWith(
assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as AssetName,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as CborInt,
  ));
}
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetNameCopyWith<$Res> get assetName {
  
  return $AssetNameCopyWith<$Res>(_self.assetName, (value) {
    return _then(_self.copyWith(assetName: value));
  });
}
}



/// @nodoc


class _Asset extends Asset {
  const _Asset({required this.assetName, required this.value}): super._();
  

@override final  AssetName assetName;
@override final  CborInt value;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetCopyWith<_Asset> get copyWith => __$AssetCopyWithImpl<_Asset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Asset&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,assetName,value);

@override
String toString() {
  return 'Asset(assetName: $assetName, value: $value)';
}


}

/// @nodoc
abstract mixin class _$AssetCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$AssetCopyWith(_Asset value, $Res Function(_Asset) _then) = __$AssetCopyWithImpl;
@override @useResult
$Res call({
 AssetName assetName, CborInt value
});


@override $AssetNameCopyWith<$Res> get assetName;

}
/// @nodoc
class __$AssetCopyWithImpl<$Res>
    implements _$AssetCopyWith<$Res> {
  __$AssetCopyWithImpl(this._self, this._then);

  final _Asset _self;
  final $Res Function(_Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assetName = null,Object? value = null,}) {
  return _then(_Asset(
assetName: null == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as AssetName,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as CborInt,
  ));
}

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetNameCopyWith<$Res> get assetName {
  
  return $AssetNameCopyWith<$Res>(_self.assetName, (value) {
    return _then(_self.copyWith(assetName: value));
  });
}
}

// dart format on
