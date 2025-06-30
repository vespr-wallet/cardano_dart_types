// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProtocolVersion {

 int get major => throw _privateConstructorUsedError; int get minor => throw _privateConstructorUsedError;







/// Create a copy of ProtocolVersion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ProtocolVersionCopyWith<ProtocolVersion> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ProtocolVersionCopyWith<$Res>  {
  factory $ProtocolVersionCopyWith(ProtocolVersion value, $Res Function(ProtocolVersion) then) = _$ProtocolVersionCopyWithImpl<$Res, ProtocolVersion>;
@useResult
$Res call({
 int major, int minor
});



}

/// @nodoc
class _$ProtocolVersionCopyWithImpl<$Res,$Val extends ProtocolVersion> implements $ProtocolVersionCopyWith<$Res> {
  _$ProtocolVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ProtocolVersion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? major = null,Object? minor = null,}) {
  return _then(_value.copyWith(
major: null == major ? _value.major : major // ignore: cast_nullable_to_non_nullable
as int,minor: null == minor ? _value.minor : minor // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ProtocolVersionImplCopyWith<$Res> implements $ProtocolVersionCopyWith<$Res> {
  factory _$$ProtocolVersionImplCopyWith(_$ProtocolVersionImpl value, $Res Function(_$ProtocolVersionImpl) then) = __$$ProtocolVersionImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int major, int minor
});



}

/// @nodoc
class __$$ProtocolVersionImplCopyWithImpl<$Res> extends _$ProtocolVersionCopyWithImpl<$Res, _$ProtocolVersionImpl> implements _$$ProtocolVersionImplCopyWith<$Res> {
  __$$ProtocolVersionImplCopyWithImpl(_$ProtocolVersionImpl _value, $Res Function(_$ProtocolVersionImpl) _then)
      : super(_value, _then);


/// Create a copy of ProtocolVersion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? major = null,Object? minor = null,}) {
  return _then(_$ProtocolVersionImpl(
major: null == major ? _value.major : major // ignore: cast_nullable_to_non_nullable
as int,minor: null == minor ? _value.minor : minor // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$ProtocolVersionImpl extends _ProtocolVersion  {
  const _$ProtocolVersionImpl({required this.major, required this.minor}): super._();

  

@override final  int major;
@override final  int minor;

@override
String toString() {
  return 'ProtocolVersion(major: $major, minor: $minor)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ProtocolVersionImpl&&(identical(other.major, major) || other.major == major)&&(identical(other.minor, minor) || other.minor == minor));
}


@override
int get hashCode => Object.hash(runtimeType,major,minor);

/// Create a copy of ProtocolVersion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ProtocolVersionImplCopyWith<_$ProtocolVersionImpl> get copyWith => __$$ProtocolVersionImplCopyWithImpl<_$ProtocolVersionImpl>(this, _$identity);








}


abstract class _ProtocolVersion extends ProtocolVersion {
  const factory _ProtocolVersion({required final  int major, required final  int minor}) = _$ProtocolVersionImpl;
  const _ProtocolVersion._(): super._();

  

@override int get major;@override int get minor;
/// Create a copy of ProtocolVersion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ProtocolVersionImplCopyWith<_$ProtocolVersionImpl> get copyWith => throw _privateConstructorUsedError;

}
