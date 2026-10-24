// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoseKey {

 Uint8List get keyId; CborValue get algorithmId; CborValue get crvKey; CborValue get keyType;
/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoseKeyCopyWith<CoseKey> get copyWith => _$CoseKeyCopyWithImpl<CoseKey>(this as CoseKey, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CoseKey;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoseKey&&const DeepCollectionEquality().equals(other.keyId, _this.keyId)&&(identical(other.algorithmId, _this.algorithmId) || other.algorithmId == _this.algorithmId)&&(identical(other.crvKey, _this.crvKey) || other.crvKey == _this.crvKey)&&(identical(other.keyType, _this.keyType) || other.keyType == _this.keyType));
}


@override
int get hashCode {
  final _this = this as CoseKey;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.keyId),_this.algorithmId,_this.crvKey,_this.keyType);
}

@override
String toString() {
  final _this = this as CoseKey;
  return 'CoseKey(keyId: ${_this.keyId}, algorithmId: ${_this.algorithmId}, crvKey: ${_this.crvKey}, keyType: ${_this.keyType})';
}


}

/// @nodoc
abstract mixin class $CoseKeyCopyWith<$Res>  {
  factory $CoseKeyCopyWith(CoseKey value, $Res Function(CoseKey) _then) = _$CoseKeyCopyWithImpl;
@useResult
$Res call({
 Uint8List keyId, CborValue algorithmId, CborValue crvKey, CborValue keyType
});




}
/// @nodoc
class _$CoseKeyCopyWithImpl<$Res>
    implements $CoseKeyCopyWith<$Res> {
  _$CoseKeyCopyWithImpl(this._self, this._then);

  final CoseKey _self;
  final $Res Function(CoseKey) _then;

/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyId = null,Object? algorithmId = null,Object? crvKey = null,Object? keyType = null,}) {
  return _then(CoseKey(
keyId: null == keyId ? _self.keyId : keyId // ignore: cast_nullable_to_non_nullable
as Uint8List,algorithmId: null == algorithmId ? _self.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as CborValue,crvKey: null == crvKey ? _self.crvKey : crvKey // ignore: cast_nullable_to_non_nullable
as CborValue,keyType: null == keyType ? _self.keyType : keyType // ignore: cast_nullable_to_non_nullable
as CborValue,
  ));
}

}



/// @nodoc


class _CoseKey extends CoseKey {
  const _CoseKey({required this.keyId, this.algorithmId = _defaultAlgorithmId, this.crvKey = _defaultCrvKey, this.keyType = _defaultKeyType}): super._();
  

@override final  Uint8List keyId;
@override@JsonKey() final  CborValue algorithmId;
@override@JsonKey() final  CborValue crvKey;
@override@JsonKey() final  CborValue keyType;

/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoseKeyCopyWith<_CoseKey> get copyWith => __$CoseKeyCopyWithImpl<_CoseKey>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoseKey&&const DeepCollectionEquality().equals(other.keyId, keyId)&&(identical(other.algorithmId, algorithmId) || other.algorithmId == algorithmId)&&(identical(other.crvKey, crvKey) || other.crvKey == crvKey)&&(identical(other.keyType, keyType) || other.keyType == keyType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(keyId),algorithmId,crvKey,keyType);
}

@override
String toString() {
    return 'CoseKey(keyId: $keyId, algorithmId: $algorithmId, crvKey: $crvKey, keyType: $keyType)';
}


}

/// @nodoc
abstract mixin class _$CoseKeyCopyWith<$Res> implements $CoseKeyCopyWith<$Res> {
  factory _$CoseKeyCopyWith(_CoseKey value, $Res Function(_CoseKey) _then) = __$CoseKeyCopyWithImpl;
@override @useResult
$Res call({
 Uint8List keyId, CborValue algorithmId, CborValue crvKey, CborValue keyType
});




}
/// @nodoc
class __$CoseKeyCopyWithImpl<$Res>
    implements _$CoseKeyCopyWith<$Res> {
  __$CoseKeyCopyWithImpl(this._self, this._then);

  final _CoseKey _self;
  final $Res Function(_CoseKey) _then;

/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keyId = null,Object? algorithmId = null,Object? crvKey = null,Object? keyType = null,}) {
  return _then(_CoseKey(
keyId: null == keyId ? _self.keyId : keyId // ignore: cast_nullable_to_non_nullable
as Uint8List,algorithmId: null == algorithmId ? _self.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as CborValue,crvKey: null == crvKey ? _self.crvKey : crvKey // ignore: cast_nullable_to_non_nullable
as CborValue,keyType: null == keyType ? _self.keyType : keyType // ignore: cast_nullable_to_non_nullable
as CborValue,
  ));
}


}

// dart format on
