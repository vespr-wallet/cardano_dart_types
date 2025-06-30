// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plutus_script_v3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlutusScriptV3 {

 Uint8List get bytes => throw _privateConstructorUsedError;







/// Create a copy of PlutusScriptV3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$PlutusScriptV3CopyWith<PlutusScriptV3> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PlutusScriptV3CopyWith<$Res>  {
  factory $PlutusScriptV3CopyWith(PlutusScriptV3 value, $Res Function(PlutusScriptV3) then) = _$PlutusScriptV3CopyWithImpl<$Res, PlutusScriptV3>;
@useResult
$Res call({
 Uint8List bytes
});



}

/// @nodoc
class _$PlutusScriptV3CopyWithImpl<$Res,$Val extends PlutusScriptV3> implements $PlutusScriptV3CopyWith<$Res> {
  _$PlutusScriptV3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of PlutusScriptV3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_value.copyWith(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PlutusScriptV3ImplCopyWith<$Res> implements $PlutusScriptV3CopyWith<$Res> {
  factory _$$PlutusScriptV3ImplCopyWith(_$PlutusScriptV3Impl value, $Res Function(_$PlutusScriptV3Impl) then) = __$$PlutusScriptV3ImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List bytes
});



}

/// @nodoc
class __$$PlutusScriptV3ImplCopyWithImpl<$Res> extends _$PlutusScriptV3CopyWithImpl<$Res, _$PlutusScriptV3Impl> implements _$$PlutusScriptV3ImplCopyWith<$Res> {
  __$$PlutusScriptV3ImplCopyWithImpl(_$PlutusScriptV3Impl _value, $Res Function(_$PlutusScriptV3Impl) _then)
      : super(_value, _then);


/// Create a copy of PlutusScriptV3
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$PlutusScriptV3Impl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$PlutusScriptV3Impl extends _PlutusScriptV3  {
  const _$PlutusScriptV3Impl({required this.bytes}): super._();

  

@override final  Uint8List bytes;

@override
String toString() {
  return 'PlutusScriptV3(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusScriptV3Impl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of PlutusScriptV3
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusScriptV3ImplCopyWith<_$PlutusScriptV3Impl> get copyWith => __$$PlutusScriptV3ImplCopyWithImpl<_$PlutusScriptV3Impl>(this, _$identity);








}


abstract class _PlutusScriptV3 extends PlutusScriptV3 {
  const factory _PlutusScriptV3({required final  Uint8List bytes}) = _$PlutusScriptV3Impl;
  const _PlutusScriptV3._(): super._();

  

@override Uint8List get bytes;
/// Create a copy of PlutusScriptV3
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusScriptV3ImplCopyWith<_$PlutusScriptV3Impl> get copyWith => throw _privateConstructorUsedError;

}
