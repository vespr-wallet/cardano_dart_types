// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoseKey {

 Uint8List get keyId => throw _privateConstructorUsedError;// verification key bytes
 CborValue get algorithmId => throw _privateConstructorUsedError; CborValue get crvKey => throw _privateConstructorUsedError; CborValue get keyType => throw _privateConstructorUsedError;







/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CoseKeyCopyWith<CoseKey> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CoseKeyCopyWith<$Res>  {
  factory $CoseKeyCopyWith(CoseKey value, $Res Function(CoseKey) then) = _$CoseKeyCopyWithImpl<$Res, CoseKey>;
@useResult
$Res call({
 Uint8List keyId, CborValue algorithmId, CborValue crvKey, CborValue keyType
});



}

/// @nodoc
class _$CoseKeyCopyWithImpl<$Res,$Val extends CoseKey> implements $CoseKeyCopyWith<$Res> {
  _$CoseKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyId = null,Object? algorithmId = null,Object? crvKey = null,Object? keyType = null,}) {
  return _then(_value.copyWith(
keyId: null == keyId ? _value.keyId : keyId // ignore: cast_nullable_to_non_nullable
as Uint8List,algorithmId: null == algorithmId ? _value.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as CborValue,crvKey: null == crvKey ? _value.crvKey : crvKey // ignore: cast_nullable_to_non_nullable
as CborValue,keyType: null == keyType ? _value.keyType : keyType // ignore: cast_nullable_to_non_nullable
as CborValue,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CoseKeyImplCopyWith<$Res> implements $CoseKeyCopyWith<$Res> {
  factory _$$CoseKeyImplCopyWith(_$CoseKeyImpl value, $Res Function(_$CoseKeyImpl) then) = __$$CoseKeyImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List keyId, CborValue algorithmId, CborValue crvKey, CborValue keyType
});



}

/// @nodoc
class __$$CoseKeyImplCopyWithImpl<$Res> extends _$CoseKeyCopyWithImpl<$Res, _$CoseKeyImpl> implements _$$CoseKeyImplCopyWith<$Res> {
  __$$CoseKeyImplCopyWithImpl(_$CoseKeyImpl _value, $Res Function(_$CoseKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyId = null,Object? algorithmId = null,Object? crvKey = null,Object? keyType = null,}) {
  return _then(_$CoseKeyImpl(
keyId: null == keyId ? _value.keyId : keyId // ignore: cast_nullable_to_non_nullable
as Uint8List,algorithmId: null == algorithmId ? _value.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as CborValue,crvKey: null == crvKey ? _value.crvKey : crvKey // ignore: cast_nullable_to_non_nullable
as CborValue,keyType: null == keyType ? _value.keyType : keyType // ignore: cast_nullable_to_non_nullable
as CborValue,
  ));
}


}

/// @nodoc


class _$CoseKeyImpl extends _CoseKey  {
  const _$CoseKeyImpl({required this.keyId, this.algorithmId = const CborSmallInt(ALG_EdDSA), this.crvKey = const CborSmallInt(CRV_Ed25519), this.keyType = const CborSmallInt(OKP)}): super._();

  

@override final  Uint8List keyId;
// verification key bytes
@override@JsonKey() final  CborValue algorithmId;
@override@JsonKey() final  CborValue crvKey;
@override@JsonKey() final  CborValue keyType;

@override
String toString() {
  return 'CoseKey(keyId: $keyId, algorithmId: $algorithmId, crvKey: $crvKey, keyType: $keyType)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CoseKeyImpl&&const DeepCollectionEquality().equals(other.keyId, keyId)&&(identical(other.algorithmId, algorithmId) || other.algorithmId == algorithmId)&&(identical(other.crvKey, crvKey) || other.crvKey == crvKey)&&(identical(other.keyType, keyType) || other.keyType == keyType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(keyId),algorithmId,crvKey,keyType);

/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CoseKeyImplCopyWith<_$CoseKeyImpl> get copyWith => __$$CoseKeyImplCopyWithImpl<_$CoseKeyImpl>(this, _$identity);








}


abstract class _CoseKey extends CoseKey {
  const factory _CoseKey({required final  Uint8List keyId, final  CborValue algorithmId, final  CborValue crvKey, final  CborValue keyType}) = _$CoseKeyImpl;
  const _CoseKey._(): super._();

  

@override Uint8List get keyId;// verification key bytes
@override CborValue get algorithmId;@override CborValue get crvKey;@override CborValue get keyType;
/// Create a copy of CoseKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CoseKeyImplCopyWith<_$CoseKeyImpl> get copyWith => throw _privateConstructorUsedError;

}
