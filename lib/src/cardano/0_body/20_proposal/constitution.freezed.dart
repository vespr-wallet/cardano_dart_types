// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constitution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Constitution {

 Anchor get anchor => throw _privateConstructorUsedError; String? get scriptHash => throw _privateConstructorUsedError;







/// Create a copy of Constitution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ConstitutionCopyWith<Constitution> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ConstitutionCopyWith<$Res>  {
  factory $ConstitutionCopyWith(Constitution value, $Res Function(Constitution) then) = _$ConstitutionCopyWithImpl<$Res, Constitution>;
@useResult
$Res call({
 Anchor anchor, String? scriptHash
});


$AnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class _$ConstitutionCopyWithImpl<$Res,$Val extends Constitution> implements $ConstitutionCopyWith<$Res> {
  _$ConstitutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Constitution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anchor = null,Object? scriptHash = freezed,}) {
  return _then(_value.copyWith(
anchor: null == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as Anchor,scriptHash: freezed == scriptHash ? _value.scriptHash : scriptHash // ignore: cast_nullable_to_non_nullable
as String?,
  )as $Val);
}
/// Create a copy of Constitution
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnchorCopyWith<$Res> get anchor {
  
  return $AnchorCopyWith<$Res>(_value.anchor, (value) {
    return _then(_value.copyWith(anchor: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ConstitutionImplCopyWith<$Res> implements $ConstitutionCopyWith<$Res> {
  factory _$$ConstitutionImplCopyWith(_$ConstitutionImpl value, $Res Function(_$ConstitutionImpl) then) = __$$ConstitutionImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Anchor anchor, String? scriptHash
});


@override $AnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class __$$ConstitutionImplCopyWithImpl<$Res> extends _$ConstitutionCopyWithImpl<$Res, _$ConstitutionImpl> implements _$$ConstitutionImplCopyWith<$Res> {
  __$$ConstitutionImplCopyWithImpl(_$ConstitutionImpl _value, $Res Function(_$ConstitutionImpl) _then)
      : super(_value, _then);


/// Create a copy of Constitution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anchor = null,Object? scriptHash = freezed,}) {
  return _then(_$ConstitutionImpl(
anchor: null == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as Anchor,scriptHash: freezed == scriptHash ? _value.scriptHash : scriptHash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$ConstitutionImpl extends _Constitution  {
  const _$ConstitutionImpl({required this.anchor, required this.scriptHash}): super._();

  

@override final  Anchor anchor;
@override final  String? scriptHash;

@override
String toString() {
  return 'Constitution(anchor: $anchor, scriptHash: $scriptHash)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ConstitutionImpl&&(identical(other.anchor, anchor) || other.anchor == anchor)&&(identical(other.scriptHash, scriptHash) || other.scriptHash == scriptHash));
}


@override
int get hashCode => Object.hash(runtimeType,anchor,scriptHash);

/// Create a copy of Constitution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ConstitutionImplCopyWith<_$ConstitutionImpl> get copyWith => __$$ConstitutionImplCopyWithImpl<_$ConstitutionImpl>(this, _$identity);








}


abstract class _Constitution extends Constitution {
  const factory _Constitution({required final  Anchor anchor, required final  String? scriptHash}) = _$ConstitutionImpl;
  const _Constitution._(): super._();

  

@override Anchor get anchor;@override String? get scriptHash;
/// Create a copy of Constitution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ConstitutionImplCopyWith<_$ConstitutionImpl> get copyWith => throw _privateConstructorUsedError;

}
