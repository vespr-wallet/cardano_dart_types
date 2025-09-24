// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plutus_script_v1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlutusScriptV1 {

 Uint8List get bytes;
/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlutusScriptV1CopyWith<PlutusScriptV1> get copyWith => _$PlutusScriptV1CopyWithImpl<PlutusScriptV1>(this as PlutusScriptV1, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlutusScriptV1&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'PlutusScriptV1(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $PlutusScriptV1CopyWith<$Res>  {
  factory $PlutusScriptV1CopyWith(PlutusScriptV1 value, $Res Function(PlutusScriptV1) _then) = _$PlutusScriptV1CopyWithImpl;
@useResult
$Res call({
 Uint8List bytes
});




}
/// @nodoc
class _$PlutusScriptV1CopyWithImpl<$Res>
    implements $PlutusScriptV1CopyWith<$Res> {
  _$PlutusScriptV1CopyWithImpl(this._self, this._then);

  final PlutusScriptV1 _self;
  final $Res Function(PlutusScriptV1) _then;

/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_self.copyWith(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}

}



/// @nodoc


class _PlutusScriptV1 extends PlutusScriptV1 {
  const _PlutusScriptV1({required this.bytes}): super._();
  

@override final  Uint8List bytes;

/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlutusScriptV1CopyWith<_PlutusScriptV1> get copyWith => __$PlutusScriptV1CopyWithImpl<_PlutusScriptV1>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlutusScriptV1&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'PlutusScriptV1(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class _$PlutusScriptV1CopyWith<$Res> implements $PlutusScriptV1CopyWith<$Res> {
  factory _$PlutusScriptV1CopyWith(_PlutusScriptV1 value, $Res Function(_PlutusScriptV1) _then) = __$PlutusScriptV1CopyWithImpl;
@override @useResult
$Res call({
 Uint8List bytes
});




}
/// @nodoc
class __$PlutusScriptV1CopyWithImpl<$Res>
    implements _$PlutusScriptV1CopyWith<$Res> {
  __$PlutusScriptV1CopyWithImpl(this._self, this._then);

  final _PlutusScriptV1 _self;
  final $Res Function(_PlutusScriptV1) _then;

/// Create a copy of PlutusScriptV1
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(_PlutusScriptV1(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

// dart format on
