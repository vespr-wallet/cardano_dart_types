// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_header_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoseHeaderMap {

 CborValue? get algorithmId => throw _privateConstructorUsedError;//  BigInteger / String / byte[] / (long / Integer)
 CborList? get criticality => throw _privateConstructorUsedError;// Array<BigInteger / String / byte[] / (long / Integer)>
 CborValue? get contentType => throw _privateConstructorUsedError;// BigInteger / String / byte[] / (long / Integer)
 Uint8List? get keyId => throw _privateConstructorUsedError; Uint8List? get initVector => throw _privateConstructorUsedError; Uint8List? get partialInitVector => throw _privateConstructorUsedError; List<CoseSignature>? get counterSignature => throw _privateConstructorUsedError; bool? get hashed => throw _privateConstructorUsedError; CborMap get otherHeaders => throw _privateConstructorUsedError;







/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CoseHeaderMapCopyWith<CoseHeaderMap> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CoseHeaderMapCopyWith<$Res>  {
  factory $CoseHeaderMapCopyWith(CoseHeaderMap value, $Res Function(CoseHeaderMap) then) = _$CoseHeaderMapCopyWithImpl<$Res, CoseHeaderMap>;
@useResult
$Res call({
 CborValue? algorithmId, CborList? criticality, CborValue? contentType, Uint8List? keyId, Uint8List? initVector, Uint8List? partialInitVector, List<CoseSignature>? counterSignature, bool? hashed, CborMap otherHeaders
});



}

/// @nodoc
class _$CoseHeaderMapCopyWithImpl<$Res,$Val extends CoseHeaderMap> implements $CoseHeaderMapCopyWith<$Res> {
  _$CoseHeaderMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? algorithmId = freezed,Object? criticality = freezed,Object? contentType = freezed,Object? keyId = freezed,Object? initVector = freezed,Object? partialInitVector = freezed,Object? counterSignature = freezed,Object? hashed = freezed,Object? otherHeaders = null,}) {
  return _then(_value.copyWith(
algorithmId: freezed == algorithmId ? _value.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as CborValue?,criticality: freezed == criticality ? _value.criticality : criticality // ignore: cast_nullable_to_non_nullable
as CborList?,contentType: freezed == contentType ? _value.contentType : contentType // ignore: cast_nullable_to_non_nullable
as CborValue?,keyId: freezed == keyId ? _value.keyId : keyId // ignore: cast_nullable_to_non_nullable
as Uint8List?,initVector: freezed == initVector ? _value.initVector : initVector // ignore: cast_nullable_to_non_nullable
as Uint8List?,partialInitVector: freezed == partialInitVector ? _value.partialInitVector : partialInitVector // ignore: cast_nullable_to_non_nullable
as Uint8List?,counterSignature: freezed == counterSignature ? _value.counterSignature : counterSignature // ignore: cast_nullable_to_non_nullable
as List<CoseSignature>?,hashed: freezed == hashed ? _value.hashed : hashed // ignore: cast_nullable_to_non_nullable
as bool?,otherHeaders: null == otherHeaders ? _value.otherHeaders : otherHeaders // ignore: cast_nullable_to_non_nullable
as CborMap,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CoseHeaderMapImplCopyWith<$Res> implements $CoseHeaderMapCopyWith<$Res> {
  factory _$$CoseHeaderMapImplCopyWith(_$CoseHeaderMapImpl value, $Res Function(_$CoseHeaderMapImpl) then) = __$$CoseHeaderMapImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CborValue? algorithmId, CborList? criticality, CborValue? contentType, Uint8List? keyId, Uint8List? initVector, Uint8List? partialInitVector, List<CoseSignature>? counterSignature, bool? hashed, CborMap otherHeaders
});



}

/// @nodoc
class __$$CoseHeaderMapImplCopyWithImpl<$Res> extends _$CoseHeaderMapCopyWithImpl<$Res, _$CoseHeaderMapImpl> implements _$$CoseHeaderMapImplCopyWith<$Res> {
  __$$CoseHeaderMapImplCopyWithImpl(_$CoseHeaderMapImpl _value, $Res Function(_$CoseHeaderMapImpl) _then)
      : super(_value, _then);


/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? algorithmId = freezed,Object? criticality = freezed,Object? contentType = freezed,Object? keyId = freezed,Object? initVector = freezed,Object? partialInitVector = freezed,Object? counterSignature = freezed,Object? hashed = freezed,Object? otherHeaders = null,}) {
  return _then(_$CoseHeaderMapImpl(
algorithmId: freezed == algorithmId ? _value.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as CborValue?,criticality: freezed == criticality ? _value.criticality : criticality // ignore: cast_nullable_to_non_nullable
as CborList?,contentType: freezed == contentType ? _value.contentType : contentType // ignore: cast_nullable_to_non_nullable
as CborValue?,keyId: freezed == keyId ? _value.keyId : keyId // ignore: cast_nullable_to_non_nullable
as Uint8List?,initVector: freezed == initVector ? _value.initVector : initVector // ignore: cast_nullable_to_non_nullable
as Uint8List?,partialInitVector: freezed == partialInitVector ? _value.partialInitVector : partialInitVector // ignore: cast_nullable_to_non_nullable
as Uint8List?,counterSignature: freezed == counterSignature ? _value._counterSignature : counterSignature // ignore: cast_nullable_to_non_nullable
as List<CoseSignature>?,hashed: freezed == hashed ? _value.hashed : hashed // ignore: cast_nullable_to_non_nullable
as bool?,otherHeaders: null == otherHeaders ? _value.otherHeaders : otherHeaders // ignore: cast_nullable_to_non_nullable
as CborMap,
  ));
}


}

/// @nodoc


class _$CoseHeaderMapImpl extends _CoseHeaderMap  {
  const _$CoseHeaderMapImpl({this.algorithmId, this.criticality, this.contentType, this.keyId, this.initVector, this.partialInitVector, final  List<CoseSignature>? counterSignature, this.hashed, required this.otherHeaders}): _counterSignature = counterSignature,super._();

  

@override final  CborValue? algorithmId;
//  BigInteger / String / byte[] / (long / Integer)
@override final  CborList? criticality;
// Array<BigInteger / String / byte[] / (long / Integer)>
@override final  CborValue? contentType;
// BigInteger / String / byte[] / (long / Integer)
@override final  Uint8List? keyId;
@override final  Uint8List? initVector;
@override final  Uint8List? partialInitVector;
 final  List<CoseSignature>? _counterSignature;
@override List<CoseSignature>? get counterSignature {
  final value = _counterSignature;
  if (value == null) return null;
  if (_counterSignature is EqualUnmodifiableListView) return _counterSignature;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? hashed;
@override final  CborMap otherHeaders;

@override
String toString() {
  return 'CoseHeaderMap(algorithmId: $algorithmId, criticality: $criticality, contentType: $contentType, keyId: $keyId, initVector: $initVector, partialInitVector: $partialInitVector, counterSignature: $counterSignature, hashed: $hashed, otherHeaders: $otherHeaders)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CoseHeaderMapImpl&&(identical(other.algorithmId, algorithmId) || other.algorithmId == algorithmId)&&const DeepCollectionEquality().equals(other.criticality, criticality)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.keyId, keyId)&&const DeepCollectionEquality().equals(other.initVector, initVector)&&const DeepCollectionEquality().equals(other.partialInitVector, partialInitVector)&&const DeepCollectionEquality().equals(other._counterSignature, _counterSignature)&&(identical(other.hashed, hashed) || other.hashed == hashed)&&const DeepCollectionEquality().equals(other.otherHeaders, otherHeaders));
}


@override
int get hashCode => Object.hash(runtimeType,algorithmId,const DeepCollectionEquality().hash(criticality),contentType,const DeepCollectionEquality().hash(keyId),const DeepCollectionEquality().hash(initVector),const DeepCollectionEquality().hash(partialInitVector),const DeepCollectionEquality().hash(_counterSignature),hashed,const DeepCollectionEquality().hash(otherHeaders));

/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CoseHeaderMapImplCopyWith<_$CoseHeaderMapImpl> get copyWith => __$$CoseHeaderMapImplCopyWithImpl<_$CoseHeaderMapImpl>(this, _$identity);








}


abstract class _CoseHeaderMap extends CoseHeaderMap {
  const factory _CoseHeaderMap({final  CborValue? algorithmId, final  CborList? criticality, final  CborValue? contentType, final  Uint8List? keyId, final  Uint8List? initVector, final  Uint8List? partialInitVector, final  List<CoseSignature>? counterSignature, final  bool? hashed, required final  CborMap otherHeaders}) = _$CoseHeaderMapImpl;
  const _CoseHeaderMap._(): super._();

  

@override CborValue? get algorithmId;//  BigInteger / String / byte[] / (long / Integer)
@override CborList? get criticality;// Array<BigInteger / String / byte[] / (long / Integer)>
@override CborValue? get contentType;// BigInteger / String / byte[] / (long / Integer)
@override Uint8List? get keyId;@override Uint8List? get initVector;@override Uint8List? get partialInitVector;@override List<CoseSignature>? get counterSignature;@override bool? get hashed;@override CborMap get otherHeaders;
/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CoseHeaderMapImplCopyWith<_$CoseHeaderMapImpl> get copyWith => throw _privateConstructorUsedError;

}
