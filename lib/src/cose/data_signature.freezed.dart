// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_signature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataSignature {

@JsonKey(name: "key") String get coseKeyHex;// hex encoded [CoseKey]
@JsonKey(name: "signature") String get coseSignHex;
/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataSignatureCopyWith<DataSignature> get copyWith => _$DataSignatureCopyWithImpl<DataSignature>(this as DataSignature, _$identity);

  /// Serializes this DataSignature to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataSignature&&(identical(other.coseKeyHex, coseKeyHex) || other.coseKeyHex == coseKeyHex)&&(identical(other.coseSignHex, coseSignHex) || other.coseSignHex == coseSignHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coseKeyHex,coseSignHex);

@override
String toString() {
  return 'DataSignature(coseKeyHex: $coseKeyHex, coseSignHex: $coseSignHex)';
}


}

/// @nodoc
abstract mixin class $DataSignatureCopyWith<$Res>  {
  factory $DataSignatureCopyWith(DataSignature value, $Res Function(DataSignature) _then) = _$DataSignatureCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "key") String coseKeyHex,@JsonKey(name: "signature") String coseSignHex
});




}
/// @nodoc
class _$DataSignatureCopyWithImpl<$Res>
    implements $DataSignatureCopyWith<$Res> {
  _$DataSignatureCopyWithImpl(this._self, this._then);

  final DataSignature _self;
  final $Res Function(DataSignature) _then;

/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coseKeyHex = null,Object? coseSignHex = null,}) {
  return _then(_self.copyWith(
coseKeyHex: null == coseKeyHex ? _self.coseKeyHex : coseKeyHex // ignore: cast_nullable_to_non_nullable
as String,coseSignHex: null == coseSignHex ? _self.coseSignHex : coseSignHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _DataSignature extends DataSignature {
  const _DataSignature({@JsonKey(name: "key") required this.coseKeyHex, @JsonKey(name: "signature") required this.coseSignHex}): super._();
  factory _DataSignature.fromJson(Map<String, dynamic> json) => _$DataSignatureFromJson(json);

@override@JsonKey(name: "key") final  String coseKeyHex;
// hex encoded [CoseKey]
@override@JsonKey(name: "signature") final  String coseSignHex;

/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataSignatureCopyWith<_DataSignature> get copyWith => __$DataSignatureCopyWithImpl<_DataSignature>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataSignatureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataSignature&&(identical(other.coseKeyHex, coseKeyHex) || other.coseKeyHex == coseKeyHex)&&(identical(other.coseSignHex, coseSignHex) || other.coseSignHex == coseSignHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coseKeyHex,coseSignHex);

@override
String toString() {
  return 'DataSignature(coseKeyHex: $coseKeyHex, coseSignHex: $coseSignHex)';
}


}

/// @nodoc
abstract mixin class _$DataSignatureCopyWith<$Res> implements $DataSignatureCopyWith<$Res> {
  factory _$DataSignatureCopyWith(_DataSignature value, $Res Function(_DataSignature) _then) = __$DataSignatureCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "key") String coseKeyHex,@JsonKey(name: "signature") String coseSignHex
});




}
/// @nodoc
class __$DataSignatureCopyWithImpl<$Res>
    implements _$DataSignatureCopyWith<$Res> {
  __$DataSignatureCopyWithImpl(this._self, this._then);

  final _DataSignature _self;
  final $Res Function(_DataSignature) _then;

/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coseKeyHex = null,Object? coseSignHex = null,}) {
  return _then(_DataSignature(
coseKeyHex: null == coseKeyHex ? _self.coseKeyHex : coseKeyHex // ignore: cast_nullable_to_non_nullable
as String,coseSignHex: null == coseSignHex ? _self.coseSignHex : coseSignHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
