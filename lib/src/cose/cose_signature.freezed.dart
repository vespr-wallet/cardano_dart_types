// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_signature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoseSignature {

 CoseHeaders get headers; Uint8List get signature;
/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoseSignatureCopyWith<CoseSignature> get copyWith => _$CoseSignatureCopyWithImpl<CoseSignature>(this as CoseSignature, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoseSignature&&(identical(other.headers, headers) || other.headers == headers)&&const DeepCollectionEquality().equals(other.signature, signature));
}


@override
int get hashCode => Object.hash(runtimeType,headers,const DeepCollectionEquality().hash(signature));

@override
String toString() {
  return 'CoseSignature(headers: $headers, signature: $signature)';
}


}

/// @nodoc
abstract mixin class $CoseSignatureCopyWith<$Res>  {
  factory $CoseSignatureCopyWith(CoseSignature value, $Res Function(CoseSignature) _then) = _$CoseSignatureCopyWithImpl;
@useResult
$Res call({
 CoseHeaders headers, Uint8List signature
});


$CoseHeadersCopyWith<$Res> get headers;

}
/// @nodoc
class _$CoseSignatureCopyWithImpl<$Res>
    implements $CoseSignatureCopyWith<$Res> {
  _$CoseSignatureCopyWithImpl(this._self, this._then);

  final CoseSignature _self;
  final $Res Function(CoseSignature) _then;

/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? signature = null,}) {
  return _then(_self.copyWith(
headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as CoseHeaders,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}
/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseHeadersCopyWith<$Res> get headers {
  
  return $CoseHeadersCopyWith<$Res>(_self.headers, (value) {
    return _then(_self.copyWith(headers: value));
  });
}
}



/// @nodoc


class _CoseSignature extends CoseSignature {
  const _CoseSignature({required this.headers, required this.signature}): super._();
  

@override final  CoseHeaders headers;
@override final  Uint8List signature;

/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoseSignatureCopyWith<_CoseSignature> get copyWith => __$CoseSignatureCopyWithImpl<_CoseSignature>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoseSignature&&(identical(other.headers, headers) || other.headers == headers)&&const DeepCollectionEquality().equals(other.signature, signature));
}


@override
int get hashCode => Object.hash(runtimeType,headers,const DeepCollectionEquality().hash(signature));

@override
String toString() {
  return 'CoseSignature(headers: $headers, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$CoseSignatureCopyWith<$Res> implements $CoseSignatureCopyWith<$Res> {
  factory _$CoseSignatureCopyWith(_CoseSignature value, $Res Function(_CoseSignature) _then) = __$CoseSignatureCopyWithImpl;
@override @useResult
$Res call({
 CoseHeaders headers, Uint8List signature
});


@override $CoseHeadersCopyWith<$Res> get headers;

}
/// @nodoc
class __$CoseSignatureCopyWithImpl<$Res>
    implements _$CoseSignatureCopyWith<$Res> {
  __$CoseSignatureCopyWithImpl(this._self, this._then);

  final _CoseSignature _self;
  final $Res Function(_CoseSignature) _then;

/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? headers = null,Object? signature = null,}) {
  return _then(_CoseSignature(
headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as CoseHeaders,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}

/// Create a copy of CoseSignature
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseHeadersCopyWith<$Res> get headers {
  
  return $CoseHeadersCopyWith<$Res>(_self.headers, (value) {
    return _then(_self.copyWith(headers: value));
  });
}
}

// dart format on
