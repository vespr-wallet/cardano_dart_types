// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_signature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoseSignature {

 CoseHeaders get headers => throw _privateConstructorUsedError; Uint8List get signature => throw _privateConstructorUsedError;







/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CoseSignatureCopyWith<CoseSignature> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CoseSignatureCopyWith<$Res>  {
  factory $CoseSignatureCopyWith(CoseSignature value, $Res Function(CoseSignature) then) = _$CoseSignatureCopyWithImpl<$Res, CoseSignature>;
@useResult
$Res call({
 CoseHeaders headers, Uint8List signature
});


$CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class _$CoseSignatureCopyWithImpl<$Res,$Val extends CoseSignature> implements $CoseSignatureCopyWith<$Res> {
  _$CoseSignatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? signature = null,}) {
  return _then(_value.copyWith(
headers: null == headers ? _value.headers : headers // ignore: cast_nullable_to_non_nullable
as CoseHeaders,signature: null == signature ? _value.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}
/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseHeadersCopyWith<$Res> get headers {
  
  return $CoseHeadersCopyWith<$Res>(_value.headers, (value) {
    return _then(_value.copyWith(headers: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$CoseSignatureImplCopyWith<$Res> implements $CoseSignatureCopyWith<$Res> {
  factory _$$CoseSignatureImplCopyWith(_$CoseSignatureImpl value, $Res Function(_$CoseSignatureImpl) then) = __$$CoseSignatureImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CoseHeaders headers, Uint8List signature
});


@override $CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class __$$CoseSignatureImplCopyWithImpl<$Res> extends _$CoseSignatureCopyWithImpl<$Res, _$CoseSignatureImpl> implements _$$CoseSignatureImplCopyWith<$Res> {
  __$$CoseSignatureImplCopyWithImpl(_$CoseSignatureImpl _value, $Res Function(_$CoseSignatureImpl) _then)
      : super(_value, _then);


/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? signature = null,}) {
  return _then(_$CoseSignatureImpl(
headers: null == headers ? _value.headers : headers // ignore: cast_nullable_to_non_nullable
as CoseHeaders,signature: null == signature ? _value.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$CoseSignatureImpl extends _CoseSignature  {
  const _$CoseSignatureImpl({required this.headers, required this.signature}): super._();

  

@override final  CoseHeaders headers;
@override final  Uint8List signature;

@override
String toString() {
  return 'CoseSignature(headers: $headers, signature: $signature)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CoseSignatureImpl&&(identical(other.headers, headers) || other.headers == headers)&&const DeepCollectionEquality().equals(other.signature, signature));
}


@override
int get hashCode => Object.hash(runtimeType,headers,const DeepCollectionEquality().hash(signature));

/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CoseSignatureImplCopyWith<_$CoseSignatureImpl> get copyWith => __$$CoseSignatureImplCopyWithImpl<_$CoseSignatureImpl>(this, _$identity);








}


abstract class _CoseSignature extends CoseSignature {
  const factory _CoseSignature({required final  CoseHeaders headers, required final  Uint8List signature}) = _$CoseSignatureImpl;
  const _CoseSignature._(): super._();

  

@override CoseHeaders get headers;@override Uint8List get signature;
/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CoseSignatureImplCopyWith<_$CoseSignatureImpl> get copyWith => throw _privateConstructorUsedError;

}
