// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'native_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NativeScript {










}

/// @nodoc
abstract class $NativeScriptCopyWith<$Res>  {
  factory $NativeScriptCopyWith(NativeScript value, $Res Function(NativeScript) then) = _$NativeScriptCopyWithImpl<$Res, NativeScript>;



}

/// @nodoc
class _$NativeScriptCopyWithImpl<$Res,$Val extends NativeScript> implements $NativeScriptCopyWith<$Res> {
  _$NativeScriptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$NativeScript_PubKeyImplCopyWith<$Res>  {
  factory _$$NativeScript_PubKeyImplCopyWith(_$NativeScript_PubKeyImpl value, $Res Function(_$NativeScript_PubKeyImpl) then) = __$$NativeScript_PubKeyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Uint8List blob
});



}

/// @nodoc
class __$$NativeScript_PubKeyImplCopyWithImpl<$Res> extends _$NativeScriptCopyWithImpl<$Res, _$NativeScript_PubKeyImpl> implements _$$NativeScript_PubKeyImplCopyWith<$Res> {
  __$$NativeScript_PubKeyImplCopyWithImpl(_$NativeScript_PubKeyImpl _value, $Res Function(_$NativeScript_PubKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blob = null,}) {
  return _then(_$NativeScript_PubKeyImpl(
blob: null == blob ? _value.blob : blob // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$NativeScript_PubKeyImpl extends NativeScript_PubKey  {
  const _$NativeScript_PubKeyImpl({required this.blob}): super._();

  

@override final  Uint8List blob;

@override
String toString() {
  return 'NativeScript.pubKey(blob: $blob)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NativeScript_PubKeyImpl&&const DeepCollectionEquality().equals(other.blob, blob));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(blob));

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NativeScript_PubKeyImplCopyWith<_$NativeScript_PubKeyImpl> get copyWith => __$$NativeScript_PubKeyImplCopyWithImpl<_$NativeScript_PubKeyImpl>(this, _$identity);








}


abstract class NativeScript_PubKey extends NativeScript {
  const factory NativeScript_PubKey({required final  Uint8List blob}) = _$NativeScript_PubKeyImpl;
  const NativeScript_PubKey._(): super._();

  

 Uint8List get blob;
/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NativeScript_PubKeyImplCopyWith<_$NativeScript_PubKeyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$NativeScript_AllImplCopyWith<$Res>  {
  factory _$$NativeScript_AllImplCopyWith(_$NativeScript_AllImpl value, $Res Function(_$NativeScript_AllImpl) then) = __$$NativeScript_AllImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<NativeScript> scripts
});



}

/// @nodoc
class __$$NativeScript_AllImplCopyWithImpl<$Res> extends _$NativeScriptCopyWithImpl<$Res, _$NativeScript_AllImpl> implements _$$NativeScript_AllImplCopyWith<$Res> {
  __$$NativeScript_AllImplCopyWithImpl(_$NativeScript_AllImpl _value, $Res Function(_$NativeScript_AllImpl) _then)
      : super(_value, _then);


/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scripts = null,}) {
  return _then(_$NativeScript_AllImpl(
scripts: null == scripts ? _value._scripts : scripts // ignore: cast_nullable_to_non_nullable
as List<NativeScript>,
  ));
}


}

/// @nodoc


class _$NativeScript_AllImpl extends NativeScript_All  {
  const _$NativeScript_AllImpl({required final  List<NativeScript> scripts}): _scripts = scripts,super._();

  

 final  List<NativeScript> _scripts;
@override List<NativeScript> get scripts {
  if (_scripts is EqualUnmodifiableListView) return _scripts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scripts);
}


@override
String toString() {
  return 'NativeScript.all(scripts: $scripts)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NativeScript_AllImpl&&const DeepCollectionEquality().equals(other._scripts, _scripts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scripts));

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NativeScript_AllImplCopyWith<_$NativeScript_AllImpl> get copyWith => __$$NativeScript_AllImplCopyWithImpl<_$NativeScript_AllImpl>(this, _$identity);








}


abstract class NativeScript_All extends NativeScript {
  const factory NativeScript_All({required final  List<NativeScript> scripts}) = _$NativeScript_AllImpl;
  const NativeScript_All._(): super._();

  

 List<NativeScript> get scripts;
/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NativeScript_AllImplCopyWith<_$NativeScript_AllImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$NativeScript_AnyImplCopyWith<$Res>  {
  factory _$$NativeScript_AnyImplCopyWith(_$NativeScript_AnyImpl value, $Res Function(_$NativeScript_AnyImpl) then) = __$$NativeScript_AnyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<NativeScript> scripts
});



}

/// @nodoc
class __$$NativeScript_AnyImplCopyWithImpl<$Res> extends _$NativeScriptCopyWithImpl<$Res, _$NativeScript_AnyImpl> implements _$$NativeScript_AnyImplCopyWith<$Res> {
  __$$NativeScript_AnyImplCopyWithImpl(_$NativeScript_AnyImpl _value, $Res Function(_$NativeScript_AnyImpl) _then)
      : super(_value, _then);


/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scripts = null,}) {
  return _then(_$NativeScript_AnyImpl(
scripts: null == scripts ? _value._scripts : scripts // ignore: cast_nullable_to_non_nullable
as List<NativeScript>,
  ));
}


}

/// @nodoc


class _$NativeScript_AnyImpl extends NativeScript_Any  {
  const _$NativeScript_AnyImpl({required final  List<NativeScript> scripts}): _scripts = scripts,super._();

  

 final  List<NativeScript> _scripts;
@override List<NativeScript> get scripts {
  if (_scripts is EqualUnmodifiableListView) return _scripts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scripts);
}


@override
String toString() {
  return 'NativeScript.any(scripts: $scripts)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NativeScript_AnyImpl&&const DeepCollectionEquality().equals(other._scripts, _scripts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scripts));

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NativeScript_AnyImplCopyWith<_$NativeScript_AnyImpl> get copyWith => __$$NativeScript_AnyImplCopyWithImpl<_$NativeScript_AnyImpl>(this, _$identity);








}


abstract class NativeScript_Any extends NativeScript {
  const factory NativeScript_Any({required final  List<NativeScript> scripts}) = _$NativeScript_AnyImpl;
  const NativeScript_Any._(): super._();

  

 List<NativeScript> get scripts;
/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NativeScript_AnyImplCopyWith<_$NativeScript_AnyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$NativeScript_AtLeastImplCopyWith<$Res>  {
  factory _$$NativeScript_AtLeastImplCopyWith(_$NativeScript_AtLeastImpl value, $Res Function(_$NativeScript_AtLeastImpl) then) = __$$NativeScript_AtLeastImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int required, List<NativeScript> scripts
});



}

/// @nodoc
class __$$NativeScript_AtLeastImplCopyWithImpl<$Res> extends _$NativeScriptCopyWithImpl<$Res, _$NativeScript_AtLeastImpl> implements _$$NativeScript_AtLeastImplCopyWith<$Res> {
  __$$NativeScript_AtLeastImplCopyWithImpl(_$NativeScript_AtLeastImpl _value, $Res Function(_$NativeScript_AtLeastImpl) _then)
      : super(_value, _then);


/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = null,Object? scripts = null,}) {
  return _then(_$NativeScript_AtLeastImpl(
required: null == required ? _value.required : required // ignore: cast_nullable_to_non_nullable
as int,scripts: null == scripts ? _value._scripts : scripts // ignore: cast_nullable_to_non_nullable
as List<NativeScript>,
  ));
}


}

/// @nodoc


class _$NativeScript_AtLeastImpl extends NativeScript_AtLeast  {
  const _$NativeScript_AtLeastImpl({required this.required, required final  List<NativeScript> scripts}): _scripts = scripts,super._();

  

@override final  int required;
 final  List<NativeScript> _scripts;
@override List<NativeScript> get scripts {
  if (_scripts is EqualUnmodifiableListView) return _scripts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scripts);
}


@override
String toString() {
  return 'NativeScript.atLeast(required: $required, scripts: $scripts)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NativeScript_AtLeastImpl&&(identical(other.required, required) || other.required == required)&&const DeepCollectionEquality().equals(other._scripts, _scripts));
}


@override
int get hashCode => Object.hash(runtimeType,required,const DeepCollectionEquality().hash(_scripts));

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NativeScript_AtLeastImplCopyWith<_$NativeScript_AtLeastImpl> get copyWith => __$$NativeScript_AtLeastImplCopyWithImpl<_$NativeScript_AtLeastImpl>(this, _$identity);








}


abstract class NativeScript_AtLeast extends NativeScript {
  const factory NativeScript_AtLeast({required final  int required, required final  List<NativeScript> scripts}) = _$NativeScript_AtLeastImpl;
  const NativeScript_AtLeast._(): super._();

  

 int get required; List<NativeScript> get scripts;
/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NativeScript_AtLeastImplCopyWith<_$NativeScript_AtLeastImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$NativeScript_RequireTimeAfterImplCopyWith<$Res>  {
  factory _$$NativeScript_RequireTimeAfterImplCopyWith(_$NativeScript_RequireTimeAfterImpl value, $Res Function(_$NativeScript_RequireTimeAfterImpl) then) = __$$NativeScript_RequireTimeAfterImplCopyWithImpl<$Res>;
@useResult
$Res call({
 BigInt slot
});



}

/// @nodoc
class __$$NativeScript_RequireTimeAfterImplCopyWithImpl<$Res> extends _$NativeScriptCopyWithImpl<$Res, _$NativeScript_RequireTimeAfterImpl> implements _$$NativeScript_RequireTimeAfterImplCopyWith<$Res> {
  __$$NativeScript_RequireTimeAfterImplCopyWithImpl(_$NativeScript_RequireTimeAfterImpl _value, $Res Function(_$NativeScript_RequireTimeAfterImpl) _then)
      : super(_value, _then);


/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,}) {
  return _then(_$NativeScript_RequireTimeAfterImpl(
slot: null == slot ? _value.slot : slot // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$NativeScript_RequireTimeAfterImpl extends NativeScript_RequireTimeAfter  {
  const _$NativeScript_RequireTimeAfterImpl({required this.slot}): super._();

  

@override final  BigInt slot;

@override
String toString() {
  return 'NativeScript.requireTimeAfter(slot: $slot)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NativeScript_RequireTimeAfterImpl&&(identical(other.slot, slot) || other.slot == slot));
}


@override
int get hashCode => Object.hash(runtimeType,slot);

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NativeScript_RequireTimeAfterImplCopyWith<_$NativeScript_RequireTimeAfterImpl> get copyWith => __$$NativeScript_RequireTimeAfterImplCopyWithImpl<_$NativeScript_RequireTimeAfterImpl>(this, _$identity);








}


abstract class NativeScript_RequireTimeAfter extends NativeScript {
  const factory NativeScript_RequireTimeAfter({required final  BigInt slot}) = _$NativeScript_RequireTimeAfterImpl;
  const NativeScript_RequireTimeAfter._(): super._();

  

 BigInt get slot;
/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NativeScript_RequireTimeAfterImplCopyWith<_$NativeScript_RequireTimeAfterImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$NativeScript_RequireTimeBeforeImplCopyWith<$Res>  {
  factory _$$NativeScript_RequireTimeBeforeImplCopyWith(_$NativeScript_RequireTimeBeforeImpl value, $Res Function(_$NativeScript_RequireTimeBeforeImpl) then) = __$$NativeScript_RequireTimeBeforeImplCopyWithImpl<$Res>;
@useResult
$Res call({
 BigInt slot
});



}

/// @nodoc
class __$$NativeScript_RequireTimeBeforeImplCopyWithImpl<$Res> extends _$NativeScriptCopyWithImpl<$Res, _$NativeScript_RequireTimeBeforeImpl> implements _$$NativeScript_RequireTimeBeforeImplCopyWith<$Res> {
  __$$NativeScript_RequireTimeBeforeImplCopyWithImpl(_$NativeScript_RequireTimeBeforeImpl _value, $Res Function(_$NativeScript_RequireTimeBeforeImpl) _then)
      : super(_value, _then);


/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,}) {
  return _then(_$NativeScript_RequireTimeBeforeImpl(
slot: null == slot ? _value.slot : slot // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$NativeScript_RequireTimeBeforeImpl extends NativeScript_RequireTimeBefore  {
  const _$NativeScript_RequireTimeBeforeImpl({required this.slot}): super._();

  

@override final  BigInt slot;

@override
String toString() {
  return 'NativeScript.requireTimeBefore(slot: $slot)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NativeScript_RequireTimeBeforeImpl&&(identical(other.slot, slot) || other.slot == slot));
}


@override
int get hashCode => Object.hash(runtimeType,slot);

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$NativeScript_RequireTimeBeforeImplCopyWith<_$NativeScript_RequireTimeBeforeImpl> get copyWith => __$$NativeScript_RequireTimeBeforeImplCopyWithImpl<_$NativeScript_RequireTimeBeforeImpl>(this, _$identity);








}


abstract class NativeScript_RequireTimeBefore extends NativeScript {
  const factory NativeScript_RequireTimeBefore({required final  BigInt slot}) = _$NativeScript_RequireTimeBeforeImpl;
  const NativeScript_RequireTimeBefore._(): super._();

  

 BigInt get slot;
/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$NativeScript_RequireTimeBeforeImplCopyWith<_$NativeScript_RequireTimeBeforeImpl> get copyWith => throw _privateConstructorUsedError;

}
