// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anchor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Anchor {

 String get anchorUrl => throw _privateConstructorUsedError; Uint8List get anchorDataHash => throw _privateConstructorUsedError; CborLengthType get cborLengthType => throw _privateConstructorUsedError;







/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$AnchorCopyWith<Anchor> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $AnchorCopyWith<$Res>  {
  factory $AnchorCopyWith(Anchor value, $Res Function(Anchor) then) = _$AnchorCopyWithImpl<$Res, Anchor>;
@useResult
$Res call({
 String anchorUrl, Uint8List anchorDataHash, CborLengthType cborLengthType
});



}

/// @nodoc
class _$AnchorCopyWithImpl<$Res,$Val extends Anchor> implements $AnchorCopyWith<$Res> {
  _$AnchorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anchorUrl = null,Object? anchorDataHash = null,Object? cborLengthType = null,}) {
  return _then(_value.copyWith(
anchorUrl: null == anchorUrl ? _value.anchorUrl : anchorUrl // ignore: cast_nullable_to_non_nullable
as String,anchorDataHash: null == anchorDataHash ? _value.anchorDataHash : anchorDataHash // ignore: cast_nullable_to_non_nullable
as Uint8List,cborLengthType: null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  )as $Val);
}

}


/// @nodoc
abstract class _$$AnchorImplCopyWith<$Res> implements $AnchorCopyWith<$Res> {
  factory _$$AnchorImplCopyWith(_$AnchorImpl value, $Res Function(_$AnchorImpl) then) = __$$AnchorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String anchorUrl, Uint8List anchorDataHash, CborLengthType cborLengthType
});



}

/// @nodoc
class __$$AnchorImplCopyWithImpl<$Res> extends _$AnchorCopyWithImpl<$Res, _$AnchorImpl> implements _$$AnchorImplCopyWith<$Res> {
  __$$AnchorImplCopyWithImpl(_$AnchorImpl _value, $Res Function(_$AnchorImpl) _then)
      : super(_value, _then);


/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anchorUrl = null,Object? anchorDataHash = null,Object? cborLengthType = null,}) {
  return _then(_$AnchorImpl(
anchorUrl: null == anchorUrl ? _value.anchorUrl : anchorUrl // ignore: cast_nullable_to_non_nullable
as String,anchorDataHash: null == anchorDataHash ? _value.anchorDataHash : anchorDataHash // ignore: cast_nullable_to_non_nullable
as Uint8List,cborLengthType: null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class _$AnchorImpl extends _Anchor  {
   _$AnchorImpl({required this.anchorUrl, required this.anchorDataHash, this.cborLengthType = CborLengthType.auto}): super._();

  

@override final  String anchorUrl;
@override final  Uint8List anchorDataHash;
@override@JsonKey() final  CborLengthType cborLengthType;

@override
String toString() {
  return 'Anchor(anchorUrl: $anchorUrl, anchorDataHash: $anchorDataHash, cborLengthType: $cborLengthType)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AnchorImpl&&(identical(other.anchorUrl, anchorUrl) || other.anchorUrl == anchorUrl)&&const DeepCollectionEquality().equals(other.anchorDataHash, anchorDataHash)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,anchorUrl,const DeepCollectionEquality().hash(anchorDataHash),cborLengthType);

/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$AnchorImplCopyWith<_$AnchorImpl> get copyWith => __$$AnchorImplCopyWithImpl<_$AnchorImpl>(this, _$identity);








}


abstract class _Anchor extends Anchor {
   factory _Anchor({required final  String anchorUrl, required final  Uint8List anchorDataHash, final  CborLengthType cborLengthType}) = _$AnchorImpl;
   _Anchor._(): super._();

  

@override String get anchorUrl;@override Uint8List get anchorDataHash;@override CborLengthType get cborLengthType;
/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$AnchorImplCopyWith<_$AnchorImpl> get copyWith => throw _privateConstructorUsedError;

}
