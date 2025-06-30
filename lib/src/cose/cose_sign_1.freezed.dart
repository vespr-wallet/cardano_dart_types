// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_sign_1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoseSign1 {

 CoseHeaders get headers => throw _privateConstructorUsedError; Uint8List get payload => throw _privateConstructorUsedError; Uint8List get signature => throw _privateConstructorUsedError;







/// Create a copy of CoseSign1
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CoseSign1CopyWith<CoseSign1> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CoseSign1CopyWith<$Res>  {
  factory $CoseSign1CopyWith(CoseSign1 value, $Res Function(CoseSign1) then) = _$CoseSign1CopyWithImpl<$Res, CoseSign1>;
@useResult
$Res call({
 CoseHeaders headers, Uint8List payload, Uint8List signature
});


$CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class _$CoseSign1CopyWithImpl<$Res,$Val extends CoseSign1> implements $CoseSign1CopyWith<$Res> {
  _$CoseSign1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CoseSign1
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? payload = null,Object? signature = null,}) {
  return _then(_value.copyWith(
headers: null == headers ? _value.headers : headers // ignore: cast_nullable_to_non_nullable
as CoseHeaders,payload: null == payload ? _value.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _value.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}
/// Create a copy of CoseSign1
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
abstract class _$$CoseSign1ImplCopyWith<$Res> implements $CoseSign1CopyWith<$Res> {
  factory _$$CoseSign1ImplCopyWith(_$CoseSign1Impl value, $Res Function(_$CoseSign1Impl) then) = __$$CoseSign1ImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CoseHeaders headers, Uint8List payload, Uint8List signature
});


@override $CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class __$$CoseSign1ImplCopyWithImpl<$Res> extends _$CoseSign1CopyWithImpl<$Res, _$CoseSign1Impl> implements _$$CoseSign1ImplCopyWith<$Res> {
  __$$CoseSign1ImplCopyWithImpl(_$CoseSign1Impl _value, $Res Function(_$CoseSign1Impl) _then)
      : super(_value, _then);


/// Create a copy of CoseSign1
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? payload = null,Object? signature = null,}) {
  return _then(_$CoseSign1Impl(
headers: null == headers ? _value.headers : headers // ignore: cast_nullable_to_non_nullable
as CoseHeaders,payload: null == payload ? _value.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List,signature: null == signature ? _value.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$CoseSign1Impl extends _CoseSign1  {
  const _$CoseSign1Impl({required this.headers, required this.payload, required this.signature}): super._();

  

@override final  CoseHeaders headers;
@override final  Uint8List payload;
@override final  Uint8List signature;

@override
String toString() {
  return 'CoseSign1(headers: $headers, payload: $payload, signature: $signature)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CoseSign1Impl&&(identical(other.headers, headers) || other.headers == headers)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other.signature, signature));
}


@override
int get hashCode => Object.hash(runtimeType,headers,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(signature));

/// Create a copy of CoseSign1
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CoseSign1ImplCopyWith<_$CoseSign1Impl> get copyWith => __$$CoseSign1ImplCopyWithImpl<_$CoseSign1Impl>(this, _$identity);








}


abstract class _CoseSign1 extends CoseSign1 {
  const factory _CoseSign1({required final  CoseHeaders headers, required final  Uint8List payload, required final  Uint8List signature}) = _$CoseSign1Impl;
  const _CoseSign1._(): super._();

  

@override CoseHeaders get headers;@override Uint8List get payload;@override Uint8List get signature;
/// Create a copy of CoseSign1
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CoseSign1ImplCopyWith<_$CoseSign1Impl> get copyWith => throw _privateConstructorUsedError;

}
