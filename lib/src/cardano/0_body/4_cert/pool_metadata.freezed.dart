// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PoolMetadata {

 Lazy<String> get metadataHashHex; String get metadataUrl; Uint8List get metadataHash; CborLengthType get cborLengthType;
/// Create a copy of PoolMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PoolMetadataCopyWith<PoolMetadata> get copyWith => _$PoolMetadataCopyWithImpl<PoolMetadata>(this as PoolMetadata, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PoolMetadata&&(identical(other.metadataHashHex, metadataHashHex) || other.metadataHashHex == metadataHashHex)&&(identical(other.metadataUrl, metadataUrl) || other.metadataUrl == metadataUrl)&&const DeepCollectionEquality().equals(other.metadataHash, metadataHash)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,metadataHashHex,metadataUrl,const DeepCollectionEquality().hash(metadataHash),cborLengthType);

@override
String toString() {
  return 'PoolMetadata(metadataHashHex: $metadataHashHex, metadataUrl: $metadataUrl, metadataHash: $metadataHash, cborLengthType: $cborLengthType)';
}


}

/// @nodoc
abstract mixin class $PoolMetadataCopyWith<$Res>  {
  factory $PoolMetadataCopyWith(PoolMetadata value, $Res Function(PoolMetadata) _then) = _$PoolMetadataCopyWithImpl;
@useResult
$Res call({
 String metadataUrl, Uint8List metadataHash, CborLengthType cborLengthType
});




}
/// @nodoc
class _$PoolMetadataCopyWithImpl<$Res>
    implements $PoolMetadataCopyWith<$Res> {
  _$PoolMetadataCopyWithImpl(this._self, this._then);

  final PoolMetadata _self;
  final $Res Function(PoolMetadata) _then;

/// Create a copy of PoolMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadataUrl = null,Object? metadataHash = null,Object? cborLengthType = null,}) {
  return _then(_self.copyWith(
metadataUrl: null == metadataUrl ? _self.metadataUrl : metadataUrl // ignore: cast_nullable_to_non_nullable
as String,metadataHash: null == metadataHash ? _self.metadataHash : metadataHash // ignore: cast_nullable_to_non_nullable
as Uint8List,cborLengthType: null == cborLengthType ? _self.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _PoolMetadata extends PoolMetadata {
   _PoolMetadata({required this.metadataUrl, required this.metadataHash, required this.cborLengthType}): super._();
  

@override final  String metadataUrl;
@override final  Uint8List metadataHash;
@override final  CborLengthType cborLengthType;

/// Create a copy of PoolMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PoolMetadataCopyWith<_PoolMetadata> get copyWith => __$PoolMetadataCopyWithImpl<_PoolMetadata>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PoolMetadata&&(identical(other.metadataUrl, metadataUrl) || other.metadataUrl == metadataUrl)&&const DeepCollectionEquality().equals(other.metadataHash, metadataHash)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,metadataUrl,const DeepCollectionEquality().hash(metadataHash),cborLengthType);

@override
String toString() {
  return 'PoolMetadata(metadataUrl: $metadataUrl, metadataHash: $metadataHash, cborLengthType: $cborLengthType)';
}


}

/// @nodoc
abstract mixin class _$PoolMetadataCopyWith<$Res> implements $PoolMetadataCopyWith<$Res> {
  factory _$PoolMetadataCopyWith(_PoolMetadata value, $Res Function(_PoolMetadata) _then) = __$PoolMetadataCopyWithImpl;
@override @useResult
$Res call({
 String metadataUrl, Uint8List metadataHash, CborLengthType cborLengthType
});




}
/// @nodoc
class __$PoolMetadataCopyWithImpl<$Res>
    implements _$PoolMetadataCopyWith<$Res> {
  __$PoolMetadataCopyWithImpl(this._self, this._then);

  final _PoolMetadata _self;
  final $Res Function(_PoolMetadata) _then;

/// Create a copy of PoolMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadataUrl = null,Object? metadataHash = null,Object? cborLengthType = null,}) {
  return _then(_PoolMetadata(
metadataUrl: null == metadataUrl ? _self.metadataUrl : metadataUrl // ignore: cast_nullable_to_non_nullable
as String,metadataHash: null == metadataHash ? _self.metadataHash : metadataHash // ignore: cast_nullable_to_non_nullable
as Uint8List,cborLengthType: null == cborLengthType ? _self.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
