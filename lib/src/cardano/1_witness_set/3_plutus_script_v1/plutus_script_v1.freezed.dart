// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plutus_script_v1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlutusScriptV1 {

 Uint8List get bytes => throw _privateConstructorUsedError;







/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$PlutusScriptV1CopyWith<PlutusScriptV1> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PlutusScriptV1CopyWith<$Res>  {
  factory $PlutusScriptV1CopyWith(PlutusScriptV1 value, $Res Function(PlutusScriptV1) then) = _$PlutusScriptV1CopyWithImpl<$Res, PlutusScriptV1>;
@useResult
$Res call({
 Uint8List bytes
});



}

/// @nodoc
class _$PlutusScriptV1CopyWithImpl<$Res,$Val extends PlutusScriptV1> implements $PlutusScriptV1CopyWith<$Res> {
  _$PlutusScriptV1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_value.copyWith(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PlutusScriptV1ImplCopyWith<$Res> implements $PlutusScriptV1CopyWith<$Res> {
  factory _$$PlutusScriptV1ImplCopyWith(_$PlutusScriptV1Impl value, $Res Function(_$PlutusScriptV1Impl) then) = __$$PlutusScriptV1ImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List bytes
});



}

/// @nodoc
class __$$PlutusScriptV1ImplCopyWithImpl<$Res> extends _$PlutusScriptV1CopyWithImpl<$Res, _$PlutusScriptV1Impl> implements _$$PlutusScriptV1ImplCopyWith<$Res> {
  __$$PlutusScriptV1ImplCopyWithImpl(_$PlutusScriptV1Impl _value, $Res Function(_$PlutusScriptV1Impl) _then)
      : super(_value, _then);


/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$PlutusScriptV1Impl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$PlutusScriptV1Impl extends _PlutusScriptV1  {
  const _$PlutusScriptV1Impl({required this.bytes}): super._();

  

@override final  Uint8List bytes;

@override
String toString() {
  return 'PlutusScriptV1(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusScriptV1Impl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusScriptV1ImplCopyWith<_$PlutusScriptV1Impl> get copyWith => __$$PlutusScriptV1ImplCopyWithImpl<_$PlutusScriptV1Impl>(this, _$identity);








}


abstract class _PlutusScriptV1 extends PlutusScriptV1 {
  const factory _PlutusScriptV1({required final  Uint8List bytes}) = _$PlutusScriptV1Impl;
  const _PlutusScriptV1._(): super._();

  

@override Uint8List get bytes;
/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusScriptV1ImplCopyWith<_$PlutusScriptV1Impl> get copyWith => throw _privateConstructorUsedError;

}
