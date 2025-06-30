// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plutus_script_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlutusScriptV2 {

 Uint8List get bytes => throw _privateConstructorUsedError;







/// Create a copy of PlutusScriptV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$PlutusScriptV2CopyWith<PlutusScriptV2> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PlutusScriptV2CopyWith<$Res>  {
  factory $PlutusScriptV2CopyWith(PlutusScriptV2 value, $Res Function(PlutusScriptV2) then) = _$PlutusScriptV2CopyWithImpl<$Res, PlutusScriptV2>;
@useResult
$Res call({
 Uint8List bytes
});



}

/// @nodoc
class _$PlutusScriptV2CopyWithImpl<$Res,$Val extends PlutusScriptV2> implements $PlutusScriptV2CopyWith<$Res> {
  _$PlutusScriptV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of PlutusScriptV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_value.copyWith(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PlutusScriptV2ImplCopyWith<$Res> implements $PlutusScriptV2CopyWith<$Res> {
  factory _$$PlutusScriptV2ImplCopyWith(_$PlutusScriptV2Impl value, $Res Function(_$PlutusScriptV2Impl) then) = __$$PlutusScriptV2ImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List bytes
});



}

/// @nodoc
class __$$PlutusScriptV2ImplCopyWithImpl<$Res> extends _$PlutusScriptV2CopyWithImpl<$Res, _$PlutusScriptV2Impl> implements _$$PlutusScriptV2ImplCopyWith<$Res> {
  __$$PlutusScriptV2ImplCopyWithImpl(_$PlutusScriptV2Impl _value, $Res Function(_$PlutusScriptV2Impl) _then)
      : super(_value, _then);


/// Create a copy of PlutusScriptV2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$PlutusScriptV2Impl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$PlutusScriptV2Impl extends _PlutusScriptV2  {
  const _$PlutusScriptV2Impl({required this.bytes}): super._();

  

@override final  Uint8List bytes;

@override
String toString() {
  return 'PlutusScriptV2(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusScriptV2Impl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of PlutusScriptV2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusScriptV2ImplCopyWith<_$PlutusScriptV2Impl> get copyWith => __$$PlutusScriptV2ImplCopyWithImpl<_$PlutusScriptV2Impl>(this, _$identity);








}


abstract class _PlutusScriptV2 extends PlutusScriptV2 {
  const factory _PlutusScriptV2({required final  Uint8List bytes}) = _$PlutusScriptV2Impl;
  const _PlutusScriptV2._(): super._();

  

@override Uint8List get bytes;
/// Create a copy of PlutusScriptV2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusScriptV2ImplCopyWith<_$PlutusScriptV2Impl> get copyWith => throw _privateConstructorUsedError;

}
