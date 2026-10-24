// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_header_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoseHeaderMap {

 CborValue? get algorithmId; CborList? get criticality; CborValue? get contentType; Uint8List? get keyId; Uint8List? get initVector; Uint8List? get partialInitVector; List<CoseSignature>? get counterSignature; bool? get hashed; CborMap get otherHeaders;
/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoseHeaderMapCopyWith<CoseHeaderMap> get copyWith => _$CoseHeaderMapCopyWithImpl<CoseHeaderMap>(this as CoseHeaderMap, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CoseHeaderMap;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoseHeaderMap&&(identical(other.algorithmId, _this.algorithmId) || other.algorithmId == _this.algorithmId)&&const DeepCollectionEquality().equals(other.criticality, _this.criticality)&&(identical(other.contentType, _this.contentType) || other.contentType == _this.contentType)&&const DeepCollectionEquality().equals(other.keyId, _this.keyId)&&const DeepCollectionEquality().equals(other.initVector, _this.initVector)&&const DeepCollectionEquality().equals(other.partialInitVector, _this.partialInitVector)&&const DeepCollectionEquality().equals(other.counterSignature, _this.counterSignature)&&(identical(other.hashed, _this.hashed) || other.hashed == _this.hashed)&&const DeepCollectionEquality().equals(other.otherHeaders, _this.otherHeaders));
}


@override
int get hashCode {
  final _this = this as CoseHeaderMap;
  return Object.hash(runtimeType,_this.algorithmId,const DeepCollectionEquality().hash(_this.criticality),_this.contentType,const DeepCollectionEquality().hash(_this.keyId),const DeepCollectionEquality().hash(_this.initVector),const DeepCollectionEquality().hash(_this.partialInitVector),const DeepCollectionEquality().hash(_this.counterSignature),_this.hashed,const DeepCollectionEquality().hash(_this.otherHeaders));
}

@override
String toString() {
  final _this = this as CoseHeaderMap;
  return 'CoseHeaderMap(algorithmId: ${_this.algorithmId}, criticality: ${_this.criticality}, contentType: ${_this.contentType}, keyId: ${_this.keyId}, initVector: ${_this.initVector}, partialInitVector: ${_this.partialInitVector}, counterSignature: ${_this.counterSignature}, hashed: ${_this.hashed}, otherHeaders: ${_this.otherHeaders})';
}


}

/// @nodoc
abstract mixin class $CoseHeaderMapCopyWith<$Res>  {
  factory $CoseHeaderMapCopyWith(CoseHeaderMap value, $Res Function(CoseHeaderMap) _then) = _$CoseHeaderMapCopyWithImpl;
@useResult
$Res call({
 CborValue? algorithmId, CborList? criticality, CborValue? contentType, Uint8List? keyId, Uint8List? initVector, Uint8List? partialInitVector, List<CoseSignature>? counterSignature, bool? hashed, CborMap otherHeaders
});




}
/// @nodoc
class _$CoseHeaderMapCopyWithImpl<$Res>
    implements $CoseHeaderMapCopyWith<$Res> {
  _$CoseHeaderMapCopyWithImpl(this._self, this._then);

  final CoseHeaderMap _self;
  final $Res Function(CoseHeaderMap) _then;

/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? algorithmId = freezed,Object? criticality = freezed,Object? contentType = freezed,Object? keyId = freezed,Object? initVector = freezed,Object? partialInitVector = freezed,Object? counterSignature = freezed,Object? hashed = freezed,Object? otherHeaders = null,}) {
  return _then(CoseHeaderMap(
algorithmId: freezed == algorithmId ? _self.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as CborValue?,criticality: freezed == criticality ? _self.criticality : criticality // ignore: cast_nullable_to_non_nullable
as CborList?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as CborValue?,keyId: freezed == keyId ? _self.keyId : keyId // ignore: cast_nullable_to_non_nullable
as Uint8List?,initVector: freezed == initVector ? _self.initVector : initVector // ignore: cast_nullable_to_non_nullable
as Uint8List?,partialInitVector: freezed == partialInitVector ? _self.partialInitVector : partialInitVector // ignore: cast_nullable_to_non_nullable
as Uint8List?,counterSignature: freezed == counterSignature ? _self.counterSignature : counterSignature // ignore: cast_nullable_to_non_nullable
as List<CoseSignature>?,hashed: freezed == hashed ? _self.hashed : hashed // ignore: cast_nullable_to_non_nullable
as bool?,otherHeaders: null == otherHeaders ? _self.otherHeaders : otherHeaders // ignore: cast_nullable_to_non_nullable
as CborMap,
  ));
}

}



/// @nodoc


class _CoseHeaderMap extends CoseHeaderMap {
  const _CoseHeaderMap({this.algorithmId, this.criticality, this.contentType, this.keyId, this.initVector, this.partialInitVector,  List<CoseSignature>? counterSignature, this.hashed, required this.otherHeaders}): _counterSignature = counterSignature,super._();
  

@override final  CborValue? algorithmId;
@override final  CborList? criticality;
@override final  CborValue? contentType;
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

/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoseHeaderMapCopyWith<_CoseHeaderMap> get copyWith => __$CoseHeaderMapCopyWithImpl<_CoseHeaderMap>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoseHeaderMap&&(identical(other.algorithmId, algorithmId) || other.algorithmId == algorithmId)&&const DeepCollectionEquality().equals(other.criticality, criticality)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.keyId, keyId)&&const DeepCollectionEquality().equals(other.initVector, initVector)&&const DeepCollectionEquality().equals(other.partialInitVector, partialInitVector)&&const DeepCollectionEquality().equals(other.counterSignature, _counterSignature)&&(identical(other.hashed, hashed) || other.hashed == hashed)&&const DeepCollectionEquality().equals(other.otherHeaders, otherHeaders));
}


@override
int get hashCode {
    return Object.hash(runtimeType,algorithmId,const DeepCollectionEquality().hash(criticality),contentType,const DeepCollectionEquality().hash(keyId),const DeepCollectionEquality().hash(initVector),const DeepCollectionEquality().hash(partialInitVector),const DeepCollectionEquality().hash(_counterSignature),hashed,const DeepCollectionEquality().hash(otherHeaders));
}

@override
String toString() {
    return 'CoseHeaderMap(algorithmId: $algorithmId, criticality: $criticality, contentType: $contentType, keyId: $keyId, initVector: $initVector, partialInitVector: $partialInitVector, counterSignature: $counterSignature, hashed: $hashed, otherHeaders: $otherHeaders)';
}


}

/// @nodoc
abstract mixin class _$CoseHeaderMapCopyWith<$Res> implements $CoseHeaderMapCopyWith<$Res> {
  factory _$CoseHeaderMapCopyWith(_CoseHeaderMap value, $Res Function(_CoseHeaderMap) _then) = __$CoseHeaderMapCopyWithImpl;
@override @useResult
$Res call({
 CborValue? algorithmId, CborList? criticality, CborValue? contentType, Uint8List? keyId, Uint8List? initVector, Uint8List? partialInitVector, List<CoseSignature>? counterSignature, bool? hashed, CborMap otherHeaders
});




}
/// @nodoc
class __$CoseHeaderMapCopyWithImpl<$Res>
    implements _$CoseHeaderMapCopyWith<$Res> {
  __$CoseHeaderMapCopyWithImpl(this._self, this._then);

  final _CoseHeaderMap _self;
  final $Res Function(_CoseHeaderMap) _then;

/// Create a copy of CoseHeaderMap
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? algorithmId = freezed,Object? criticality = freezed,Object? contentType = freezed,Object? keyId = freezed,Object? initVector = freezed,Object? partialInitVector = freezed,Object? counterSignature = freezed,Object? hashed = freezed,Object? otherHeaders = null,}) {
  return _then(_CoseHeaderMap(
algorithmId: freezed == algorithmId ? _self.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as CborValue?,criticality: freezed == criticality ? _self.criticality : criticality // ignore: cast_nullable_to_non_nullable
as CborList?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as CborValue?,keyId: freezed == keyId ? _self.keyId : keyId // ignore: cast_nullable_to_non_nullable
as Uint8List?,initVector: freezed == initVector ? _self.initVector : initVector // ignore: cast_nullable_to_non_nullable
as Uint8List?,partialInitVector: freezed == partialInitVector ? _self.partialInitVector : partialInitVector // ignore: cast_nullable_to_non_nullable
as Uint8List?,counterSignature: freezed == counterSignature ? _self._counterSignature : counterSignature // ignore: cast_nullable_to_non_nullable
as List<CoseSignature>?,hashed: freezed == hashed ? _self.hashed : hashed // ignore: cast_nullable_to_non_nullable
as bool?,otherHeaders: null == otherHeaders ? _self.otherHeaders : otherHeaders // ignore: cast_nullable_to_non_nullable
as CborMap,
  ));
}


}

// dart format on
