// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_signature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataSignature _$DataSignatureFromJson(Map<String, dynamic> json) {
return _DataSignature.fromJson(json);
}

/// @nodoc
mixin _$DataSignature {

@JsonKey(name: "key") String get coseKeyHex => throw _privateConstructorUsedError;// hex encoded [CoseKey]
@JsonKey(name: "signature") String get coseSignHex => throw _privateConstructorUsedError;






/// Serializes this DataSignature to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$DataSignatureCopyWith<DataSignature> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DataSignatureCopyWith<$Res>  {
  factory $DataSignatureCopyWith(DataSignature value, $Res Function(DataSignature) then) = _$DataSignatureCopyWithImpl<$Res, DataSignature>;
@useResult
$Res call({
@JsonKey(name: "key") String coseKeyHex,@JsonKey(name: "signature") String coseSignHex
});



}

/// @nodoc
class _$DataSignatureCopyWithImpl<$Res,$Val extends DataSignature> implements $DataSignatureCopyWith<$Res> {
  _$DataSignatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coseKeyHex = null,Object? coseSignHex = null,}) {
  return _then(_value.copyWith(
coseKeyHex: null == coseKeyHex ? _value.coseKeyHex : coseKeyHex // ignore: cast_nullable_to_non_nullable
as String,coseSignHex: null == coseSignHex ? _value.coseSignHex : coseSignHex // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$DataSignatureImplCopyWith<$Res> implements $DataSignatureCopyWith<$Res> {
  factory _$$DataSignatureImplCopyWith(_$DataSignatureImpl value, $Res Function(_$DataSignatureImpl) then) = __$$DataSignatureImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@JsonKey(name: "key") String coseKeyHex,@JsonKey(name: "signature") String coseSignHex
});



}

/// @nodoc
class __$$DataSignatureImplCopyWithImpl<$Res> extends _$DataSignatureCopyWithImpl<$Res, _$DataSignatureImpl> implements _$$DataSignatureImplCopyWith<$Res> {
  __$$DataSignatureImplCopyWithImpl(_$DataSignatureImpl _value, $Res Function(_$DataSignatureImpl) _then)
      : super(_value, _then);


/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coseKeyHex = null,Object? coseSignHex = null,}) {
  return _then(_$DataSignatureImpl(
coseKeyHex: null == coseKeyHex ? _value.coseKeyHex : coseKeyHex // ignore: cast_nullable_to_non_nullable
as String,coseSignHex: null == coseSignHex ? _value.coseSignHex : coseSignHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$DataSignatureImpl extends _DataSignature  {
  const _$DataSignatureImpl({@JsonKey(name: "key") required this.coseKeyHex, @JsonKey(name: "signature") required this.coseSignHex}): super._();

  factory _$DataSignatureImpl.fromJson(Map<String, dynamic> json) => _$$DataSignatureImplFromJson(json);

@override@JsonKey(name: "key") final  String coseKeyHex;
// hex encoded [CoseKey]
@override@JsonKey(name: "signature") final  String coseSignHex;

@override
String toString() {
  return 'DataSignature(coseKeyHex: $coseKeyHex, coseSignHex: $coseSignHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DataSignatureImpl&&(identical(other.coseKeyHex, coseKeyHex) || other.coseKeyHex == coseKeyHex)&&(identical(other.coseSignHex, coseSignHex) || other.coseSignHex == coseSignHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coseKeyHex,coseSignHex);

/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DataSignatureImplCopyWith<_$DataSignatureImpl> get copyWith => __$$DataSignatureImplCopyWithImpl<_$DataSignatureImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$DataSignatureImplToJson(this, );
}
}


abstract class _DataSignature extends DataSignature {
  const factory _DataSignature({@JsonKey(name: "key") required final  String coseKeyHex, @JsonKey(name: "signature") required final  String coseSignHex}) = _$DataSignatureImpl;
  const _DataSignature._(): super._();

  factory _DataSignature.fromJson(Map<String, dynamic> json) = _$DataSignatureImpl.fromJson;

@override@JsonKey(name: "key") String get coseKeyHex;// hex encoded [CoseKey]
@override@JsonKey(name: "signature") String get coseSignHex;
/// Create a copy of DataSignature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DataSignatureImplCopyWith<_$DataSignatureImpl> get copyWith => throw _privateConstructorUsedError;

}
