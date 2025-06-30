// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoseHeaders {

 CoseProtectedHeaderMap get protectedHeader => throw _privateConstructorUsedError; CoseHeaderMap get unprotectedHeader => throw _privateConstructorUsedError;







/// Create a copy of CoseHeaders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CoseHeadersCopyWith<CoseHeaders> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CoseHeadersCopyWith<$Res>  {
  factory $CoseHeadersCopyWith(CoseHeaders value, $Res Function(CoseHeaders) then) = _$CoseHeadersCopyWithImpl<$Res, CoseHeaders>;
@useResult
$Res call({
 CoseProtectedHeaderMap protectedHeader, CoseHeaderMap unprotectedHeader
});


$CoseProtectedHeaderMapCopyWith<$Res> get protectedHeader;$CoseHeaderMapCopyWith<$Res> get unprotectedHeader;
}

/// @nodoc
class _$CoseHeadersCopyWithImpl<$Res,$Val extends CoseHeaders> implements $CoseHeadersCopyWith<$Res> {
  _$CoseHeadersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CoseHeaders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? protectedHeader = null,Object? unprotectedHeader = null,}) {
  return _then(_value.copyWith(
protectedHeader: null == protectedHeader ? _value.protectedHeader : protectedHeader // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap,unprotectedHeader: null == unprotectedHeader ? _value.unprotectedHeader : unprotectedHeader // ignore: cast_nullable_to_non_nullable
as CoseHeaderMap,
  )as $Val);
}
/// Create a copy of CoseHeaders
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseProtectedHeaderMapCopyWith<$Res> get protectedHeader {
  
  return $CoseProtectedHeaderMapCopyWith<$Res>(_value.protectedHeader, (value) {
    return _then(_value.copyWith(protectedHeader: value) as $Val);
  });
}/// Create a copy of CoseHeaders
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseHeaderMapCopyWith<$Res> get unprotectedHeader {
  
  return $CoseHeaderMapCopyWith<$Res>(_value.unprotectedHeader, (value) {
    return _then(_value.copyWith(unprotectedHeader: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$CoseHeadersImplCopyWith<$Res> implements $CoseHeadersCopyWith<$Res> {
  factory _$$CoseHeadersImplCopyWith(_$CoseHeadersImpl value, $Res Function(_$CoseHeadersImpl) then) = __$$CoseHeadersImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CoseProtectedHeaderMap protectedHeader, CoseHeaderMap unprotectedHeader
});


@override $CoseProtectedHeaderMapCopyWith<$Res> get protectedHeader;@override $CoseHeaderMapCopyWith<$Res> get unprotectedHeader;
}

/// @nodoc
class __$$CoseHeadersImplCopyWithImpl<$Res> extends _$CoseHeadersCopyWithImpl<$Res, _$CoseHeadersImpl> implements _$$CoseHeadersImplCopyWith<$Res> {
  __$$CoseHeadersImplCopyWithImpl(_$CoseHeadersImpl _value, $Res Function(_$CoseHeadersImpl) _then)
      : super(_value, _then);


/// Create a copy of CoseHeaders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? protectedHeader = null,Object? unprotectedHeader = null,}) {
  return _then(_$CoseHeadersImpl(
protectedHeader: null == protectedHeader ? _value.protectedHeader : protectedHeader // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap,unprotectedHeader: null == unprotectedHeader ? _value.unprotectedHeader : unprotectedHeader // ignore: cast_nullable_to_non_nullable
as CoseHeaderMap,
  ));
}


}

/// @nodoc


class _$CoseHeadersImpl extends _CoseHeaders  {
  const _$CoseHeadersImpl({required this.protectedHeader, required this.unprotectedHeader}): super._();

  

@override final  CoseProtectedHeaderMap protectedHeader;
@override final  CoseHeaderMap unprotectedHeader;

@override
String toString() {
  return 'CoseHeaders(protectedHeader: $protectedHeader, unprotectedHeader: $unprotectedHeader)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CoseHeadersImpl&&(identical(other.protectedHeader, protectedHeader) || other.protectedHeader == protectedHeader)&&(identical(other.unprotectedHeader, unprotectedHeader) || other.unprotectedHeader == unprotectedHeader));
}


@override
int get hashCode => Object.hash(runtimeType,protectedHeader,unprotectedHeader);

/// Create a copy of CoseHeaders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CoseHeadersImplCopyWith<_$CoseHeadersImpl> get copyWith => __$$CoseHeadersImplCopyWithImpl<_$CoseHeadersImpl>(this, _$identity);








}


abstract class _CoseHeaders extends CoseHeaders {
  const factory _CoseHeaders({required final  CoseProtectedHeaderMap protectedHeader, required final  CoseHeaderMap unprotectedHeader}) = _$CoseHeadersImpl;
  const _CoseHeaders._(): super._();

  

@override CoseProtectedHeaderMap get protectedHeader;@override CoseHeaderMap get unprotectedHeader;
/// Create a copy of CoseHeaders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CoseHeadersImplCopyWith<_$CoseHeadersImpl> get copyWith => throw _privateConstructorUsedError;

}
