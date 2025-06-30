// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CBORMetadata {

 CborValue get value => throw _privateConstructorUsedError;







/// Create a copy of CBORMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CBORMetadataCopyWith<CBORMetadata> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CBORMetadataCopyWith<$Res>  {
  factory $CBORMetadataCopyWith(CBORMetadata value, $Res Function(CBORMetadata) then) = _$CBORMetadataCopyWithImpl<$Res, CBORMetadata>;
@useResult
$Res call({
 CborValue value
});



}

/// @nodoc
class _$CBORMetadataCopyWithImpl<$Res,$Val extends CBORMetadata> implements $CBORMetadataCopyWith<$Res> {
  _$CBORMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CBORMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_value.copyWith(
value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as CborValue,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CBORMetadataImplCopyWith<$Res> implements $CBORMetadataCopyWith<$Res> {
  factory _$$CBORMetadataImplCopyWith(_$CBORMetadataImpl value, $Res Function(_$CBORMetadataImpl) then) = __$$CBORMetadataImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CborValue value
});



}

/// @nodoc
class __$$CBORMetadataImplCopyWithImpl<$Res> extends _$CBORMetadataCopyWithImpl<$Res, _$CBORMetadataImpl> implements _$$CBORMetadataImplCopyWith<$Res> {
  __$$CBORMetadataImplCopyWithImpl(_$CBORMetadataImpl _value, $Res Function(_$CBORMetadataImpl) _then)
      : super(_value, _then);


/// Create a copy of CBORMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_$CBORMetadataImpl(
value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as CborValue,
  ));
}


}

/// @nodoc


class _$CBORMetadataImpl extends _CBORMetadata  {
   _$CBORMetadataImpl({required this.value}): super._();

  

@override final  CborValue value;

@override
String toString() {
  return 'CBORMetadata(value: $value)';
}




/// Create a copy of CBORMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CBORMetadataImplCopyWith<_$CBORMetadataImpl> get copyWith => __$$CBORMetadataImplCopyWithImpl<_$CBORMetadataImpl>(this, _$identity);








}


abstract class _CBORMetadata extends CBORMetadata {
   factory _CBORMetadata({required final  CborValue value}) = _$CBORMetadataImpl;
   _CBORMetadata._(): super._();

  

@override CborValue get value;
/// Create a copy of CBORMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CBORMetadataImplCopyWith<_$CBORMetadataImpl> get copyWith => throw _privateConstructorUsedError;

}
