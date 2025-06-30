// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_sign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoseSign {

 CoseHeaders get headers => throw _privateConstructorUsedError; Uint8List get payload => throw _privateConstructorUsedError; List<CoseSignature> get signatures => throw _privateConstructorUsedError;







/// Create a copy of CoseSign
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CoseSignCopyWith<CoseSign> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CoseSignCopyWith<$Res>  {
  factory $CoseSignCopyWith(CoseSign value, $Res Function(CoseSign) then) = _$CoseSignCopyWithImpl<$Res, CoseSign>;
@useResult
$Res call({
 CoseHeaders headers, Uint8List payload, List<CoseSignature> signatures
});


$CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class _$CoseSignCopyWithImpl<$Res,$Val extends CoseSign> implements $CoseSignCopyWith<$Res> {
  _$CoseSignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CoseSign
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? payload = null,Object? signatures = null,}) {
  return _then(_value.copyWith(
headers: null == headers ? _value.headers : headers // ignore: cast_nullable_to_non_nullable
as CoseHeaders,payload: null == payload ? _value.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List,signatures: null == signatures ? _value.signatures : signatures // ignore: cast_nullable_to_non_nullable
as List<CoseSignature>,
  )as $Val);
}
/// Create a copy of CoseSign
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
abstract class _$$CoseSignImplCopyWith<$Res> implements $CoseSignCopyWith<$Res> {
  factory _$$CoseSignImplCopyWith(_$CoseSignImpl value, $Res Function(_$CoseSignImpl) then) = __$$CoseSignImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CoseHeaders headers, Uint8List payload, List<CoseSignature> signatures
});


@override $CoseHeadersCopyWith<$Res> get headers;
}

/// @nodoc
class __$$CoseSignImplCopyWithImpl<$Res> extends _$CoseSignCopyWithImpl<$Res, _$CoseSignImpl> implements _$$CoseSignImplCopyWith<$Res> {
  __$$CoseSignImplCopyWithImpl(_$CoseSignImpl _value, $Res Function(_$CoseSignImpl) _then)
      : super(_value, _then);


/// Create a copy of CoseSign
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? headers = null,Object? payload = null,Object? signatures = null,}) {
  return _then(_$CoseSignImpl(
headers: null == headers ? _value.headers : headers // ignore: cast_nullable_to_non_nullable
as CoseHeaders,payload: null == payload ? _value.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List,signatures: null == signatures ? _value._signatures : signatures // ignore: cast_nullable_to_non_nullable
as List<CoseSignature>,
  ));
}


}

/// @nodoc


class _$CoseSignImpl extends _CoseSign  {
  const _$CoseSignImpl({required this.headers, required this.payload, required final  List<CoseSignature> signatures}): _signatures = signatures,super._();

  

@override final  CoseHeaders headers;
@override final  Uint8List payload;
 final  List<CoseSignature> _signatures;
@override List<CoseSignature> get signatures {
  if (_signatures is EqualUnmodifiableListView) return _signatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_signatures);
}


@override
String toString() {
  return 'CoseSign(headers: $headers, payload: $payload, signatures: $signatures)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CoseSignImpl&&(identical(other.headers, headers) || other.headers == headers)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other._signatures, _signatures));
}


@override
int get hashCode => Object.hash(runtimeType,headers,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(_signatures));

/// Create a copy of CoseSign
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CoseSignImplCopyWith<_$CoseSignImpl> get copyWith => __$$CoseSignImplCopyWithImpl<_$CoseSignImpl>(this, _$identity);








}


abstract class _CoseSign extends CoseSign {
  const factory _CoseSign({required final  CoseHeaders headers, required final  Uint8List payload, required final  List<CoseSignature> signatures}) = _$CoseSignImpl;
  const _CoseSign._(): super._();

  

@override CoseHeaders get headers;@override Uint8List get payload;@override List<CoseSignature> get signatures;
/// Create a copy of CoseSign
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CoseSignImplCopyWith<_$CoseSignImpl> get copyWith => throw _privateConstructorUsedError;

}
