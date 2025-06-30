// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nonce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Nonce {

 Uint8List? get nonceHash => throw _privateConstructorUsedError;







/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$NonceCopyWith<Nonce> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $NonceCopyWith<$Res>  {
  factory $NonceCopyWith(Nonce value, $Res Function(Nonce) then) = _$NonceCopyWithImpl<$Res, Nonce>;
@useResult
$Res call({
 Uint8List? nonceHash
});



}

/// @nodoc
class _$NonceCopyWithImpl<$Res,$Val extends Nonce> implements $NonceCopyWith<$Res> {
  _$NonceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nonceHash = freezed,}) {
  return _then(_value.copyWith(
nonceHash: freezed == nonceHash ? _value.nonceHash : nonceHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$NonceImplCopyWith<$Res> implements $NonceCopyWith<$Res> {
  factory _$$NonceImplCopyWith(_$NonceImpl value, $Res Function(_$NonceImpl) then) = __$$NonceImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List? nonceHash
});



}

/// @nodoc
class __$$NonceImplCopyWithImpl<$Res> extends _$NonceCopyWithImpl<$Res, _$NonceImpl> implements _$$NonceImplCopyWith<$Res> {
  __$$NonceImplCopyWithImpl(_$NonceImpl _value, $Res Function(_$NonceImpl) _then)
      : super(_value, _then);


/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nonceHash = freezed,}) {
  return _then(_$NonceImpl(
nonceHash: freezed == nonceHash ? _value.nonceHash : nonceHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}


}

/// @nodoc


class _$NonceImpl extends _Nonce  {
  const _$NonceImpl({required this.nonceHash}): super._();

  

@override final  Uint8List? nonceHash;

@override
String toString() {
  return 'Nonce(nonceHash: $nonceHash)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NonceImpl&&const DeepCollectionEquality().equals(other.nonceHash, nonceHash));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(nonceHash));

/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NonceImplCopyWith<_$NonceImpl> get copyWith => __$$NonceImplCopyWithImpl<_$NonceImpl>(this, _$identity);








}


abstract class _Nonce extends Nonce {
  const factory _Nonce({required final  Uint8List? nonceHash}) = _$NonceImpl;
  const _Nonce._(): super._();

  

@override Uint8List? get nonceHash;
/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$NonceImplCopyWith<_$NonceImpl> get copyWith => throw _privateConstructorUsedError;

}
