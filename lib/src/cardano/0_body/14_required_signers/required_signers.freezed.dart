// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'required_signers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequiredSigners {

 List<Uint8List> get signersBytes => throw _privateConstructorUsedError; List<int> get cborTags => throw _privateConstructorUsedError;







/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$RequiredSignersCopyWith<RequiredSigners> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $RequiredSignersCopyWith<$Res>  {
  factory $RequiredSignersCopyWith(RequiredSigners value, $Res Function(RequiredSigners) then) = _$RequiredSignersCopyWithImpl<$Res, RequiredSigners>;
@useResult
$Res call({
 List<Uint8List> signersBytes, List<int> cborTags
});



}

/// @nodoc
class _$RequiredSignersCopyWithImpl<$Res,$Val extends RequiredSigners> implements $RequiredSignersCopyWith<$Res> {
  _$RequiredSignersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signersBytes = null,Object? cborTags = null,}) {
  return _then(_value.copyWith(
signersBytes: null == signersBytes ? _value.signersBytes : signersBytes // ignore: cast_nullable_to_non_nullable
as List<Uint8List>,cborTags: null == cborTags ? _value.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$RequiredSignerImplCopyWith<$Res> implements $RequiredSignersCopyWith<$Res> {
  factory _$$RequiredSignerImplCopyWith(_$RequiredSignerImpl value, $Res Function(_$RequiredSignerImpl) then) = __$$RequiredSignerImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Uint8List> signersBytes, List<int> cborTags
});



}

/// @nodoc
class __$$RequiredSignerImplCopyWithImpl<$Res> extends _$RequiredSignersCopyWithImpl<$Res, _$RequiredSignerImpl> implements _$$RequiredSignerImplCopyWith<$Res> {
  __$$RequiredSignerImplCopyWithImpl(_$RequiredSignerImpl _value, $Res Function(_$RequiredSignerImpl) _then)
      : super(_value, _then);


/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signersBytes = null,Object? cborTags = null,}) {
  return _then(_$RequiredSignerImpl(
signersBytes: null == signersBytes ? _value._signersBytes : signersBytes // ignore: cast_nullable_to_non_nullable
as List<Uint8List>,cborTags: null == cborTags ? _value._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _$RequiredSignerImpl extends _RequiredSigner  {
  const _$RequiredSignerImpl({required final  List<Uint8List> signersBytes, required final  List<int> cborTags}): _signersBytes = signersBytes,_cborTags = cborTags,super._();

  

 final  List<Uint8List> _signersBytes;
@override List<Uint8List> get signersBytes {
  if (_signersBytes is EqualUnmodifiableListView) return _signersBytes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_signersBytes);
}

 final  List<int> _cborTags;
@override List<int> get cborTags {
  if (_cborTags is EqualUnmodifiableListView) return _cborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cborTags);
}


@override
String toString() {
  return 'RequiredSigners(signersBytes: $signersBytes, cborTags: $cborTags)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RequiredSignerImpl&&const DeepCollectionEquality().equals(other._signersBytes, _signersBytes)&&const DeepCollectionEquality().equals(other._cborTags, _cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_signersBytes),const DeepCollectionEquality().hash(_cborTags));

/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RequiredSignerImplCopyWith<_$RequiredSignerImpl> get copyWith => __$$RequiredSignerImplCopyWithImpl<_$RequiredSignerImpl>(this, _$identity);








}


abstract class _RequiredSigner extends RequiredSigners {
  const factory _RequiredSigner({required final  List<Uint8List> signersBytes, required final  List<int> cborTags}) = _$RequiredSignerImpl;
  const _RequiredSigner._(): super._();

  

@override List<Uint8List> get signersBytes;@override List<int> get cborTags;
/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$RequiredSignerImplCopyWith<_$RequiredSignerImpl> get copyWith => throw _privateConstructorUsedError;

}
