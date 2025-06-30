// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_protected_header_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoseProtectedHeaderMap {

 Uint8List get bytes => throw _privateConstructorUsedError;







/// Create a copy of CoseProtectedHeaderMap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CoseProtectedHeaderMapCopyWith<CoseProtectedHeaderMap> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CoseProtectedHeaderMapCopyWith<$Res>  {
  factory $CoseProtectedHeaderMapCopyWith(CoseProtectedHeaderMap value, $Res Function(CoseProtectedHeaderMap) then) = _$CoseProtectedHeaderMapCopyWithImpl<$Res, CoseProtectedHeaderMap>;
@useResult
$Res call({
 Uint8List bytes
});



}

/// @nodoc
class _$CoseProtectedHeaderMapCopyWithImpl<$Res,$Val extends CoseProtectedHeaderMap> implements $CoseProtectedHeaderMapCopyWith<$Res> {
  _$CoseProtectedHeaderMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CoseProtectedHeaderMap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_value.copyWith(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CoseProtectedHeaderMapImplCopyWith<$Res> implements $CoseProtectedHeaderMapCopyWith<$Res> {
  factory _$$CoseProtectedHeaderMapImplCopyWith(_$CoseProtectedHeaderMapImpl value, $Res Function(_$CoseProtectedHeaderMapImpl) then) = __$$CoseProtectedHeaderMapImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List bytes
});



}

/// @nodoc
class __$$CoseProtectedHeaderMapImplCopyWithImpl<$Res> extends _$CoseProtectedHeaderMapCopyWithImpl<$Res, _$CoseProtectedHeaderMapImpl> implements _$$CoseProtectedHeaderMapImplCopyWith<$Res> {
  __$$CoseProtectedHeaderMapImplCopyWithImpl(_$CoseProtectedHeaderMapImpl _value, $Res Function(_$CoseProtectedHeaderMapImpl) _then)
      : super(_value, _then);


/// Create a copy of CoseProtectedHeaderMap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$CoseProtectedHeaderMapImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$CoseProtectedHeaderMapImpl extends _CoseProtectedHeaderMap  {
  const _$CoseProtectedHeaderMapImpl({required this.bytes}): super._();

  

@override final  Uint8List bytes;

@override
String toString() {
  return 'CoseProtectedHeaderMap(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CoseProtectedHeaderMapImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of CoseProtectedHeaderMap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CoseProtectedHeaderMapImplCopyWith<_$CoseProtectedHeaderMapImpl> get copyWith => __$$CoseProtectedHeaderMapImplCopyWithImpl<_$CoseProtectedHeaderMapImpl>(this, _$identity);








}


abstract class _CoseProtectedHeaderMap extends CoseProtectedHeaderMap {
  const factory _CoseProtectedHeaderMap({required final  Uint8List bytes}) = _$CoseProtectedHeaderMapImpl;
  const _CoseProtectedHeaderMap._(): super._();

  

@override Uint8List get bytes;
/// Create a copy of CoseProtectedHeaderMap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CoseProtectedHeaderMapImplCopyWith<_$CoseProtectedHeaderMapImpl> get copyWith => throw _privateConstructorUsedError;

}
