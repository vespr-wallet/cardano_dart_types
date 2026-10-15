// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'native_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NativeScript {

 CborLengthType get lengthType;
/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NativeScriptCopyWith<NativeScript> get copyWith => _$NativeScriptCopyWithImpl<NativeScript>(this as NativeScript, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NativeScript&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,lengthType);

@override
String toString() {
  return 'NativeScript(lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $NativeScriptCopyWith<$Res>  {
  factory $NativeScriptCopyWith(NativeScript value, $Res Function(NativeScript) _then) = _$NativeScriptCopyWithImpl;
@useResult
$Res call({
 CborLengthType lengthType
});




}
/// @nodoc
class _$NativeScriptCopyWithImpl<$Res>
    implements $NativeScriptCopyWith<$Res> {
  _$NativeScriptCopyWithImpl(this._self, this._then);

  final NativeScript _self;
  final $Res Function(NativeScript) _then;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lengthType = null,}) {
  return _then(_self.copyWith(
lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class NativeScript_PubKey extends NativeScript {
  const NativeScript_PubKey({required this.blob, this.lengthType = CborLengthType.definite}): super._();
  

 final  Uint8List blob;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NativeScript_PubKeyCopyWith<NativeScript_PubKey> get copyWith => _$NativeScript_PubKeyCopyWithImpl<NativeScript_PubKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NativeScript_PubKey&&const DeepCollectionEquality().equals(other.blob, blob)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(blob),lengthType);

@override
String toString() {
  return 'NativeScript.pubKey(blob: $blob, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $NativeScript_PubKeyCopyWith<$Res> implements $NativeScriptCopyWith<$Res> {
  factory $NativeScript_PubKeyCopyWith(NativeScript_PubKey value, $Res Function(NativeScript_PubKey) _then) = _$NativeScript_PubKeyCopyWithImpl;
@override @useResult
$Res call({
 Uint8List blob, CborLengthType lengthType
});




}
/// @nodoc
class _$NativeScript_PubKeyCopyWithImpl<$Res>
    implements $NativeScript_PubKeyCopyWith<$Res> {
  _$NativeScript_PubKeyCopyWithImpl(this._self, this._then);

  final NativeScript_PubKey _self;
  final $Res Function(NativeScript_PubKey) _then;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blob = null,Object? lengthType = null,}) {
  return _then(NativeScript_PubKey(
blob: null == blob ? _self.blob : blob // ignore: cast_nullable_to_non_nullable
as Uint8List,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class NativeScript_All extends NativeScript {
  const NativeScript_All({required final  List<NativeScript> scripts, this.lengthType = CborLengthType.definite, this.scriptsLengthType = CborLengthType.definite}): _scripts = scripts,super._();
  

 final  List<NativeScript> _scripts;
 List<NativeScript> get scripts {
  if (_scripts is EqualUnmodifiableListView) return _scripts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scripts);
}

@override@JsonKey() final  CborLengthType lengthType;
@JsonKey() final  CborLengthType scriptsLengthType;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NativeScript_AllCopyWith<NativeScript_All> get copyWith => _$NativeScript_AllCopyWithImpl<NativeScript_All>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NativeScript_All&&const DeepCollectionEquality().equals(other._scripts, _scripts)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&(identical(other.scriptsLengthType, scriptsLengthType) || other.scriptsLengthType == scriptsLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scripts),lengthType,scriptsLengthType);

@override
String toString() {
  return 'NativeScript.all(scripts: $scripts, lengthType: $lengthType, scriptsLengthType: $scriptsLengthType)';
}


}

/// @nodoc
abstract mixin class $NativeScript_AllCopyWith<$Res> implements $NativeScriptCopyWith<$Res> {
  factory $NativeScript_AllCopyWith(NativeScript_All value, $Res Function(NativeScript_All) _then) = _$NativeScript_AllCopyWithImpl;
@override @useResult
$Res call({
 List<NativeScript> scripts, CborLengthType lengthType, CborLengthType scriptsLengthType
});




}
/// @nodoc
class _$NativeScript_AllCopyWithImpl<$Res>
    implements $NativeScript_AllCopyWith<$Res> {
  _$NativeScript_AllCopyWithImpl(this._self, this._then);

  final NativeScript_All _self;
  final $Res Function(NativeScript_All) _then;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scripts = null,Object? lengthType = null,Object? scriptsLengthType = null,}) {
  return _then(NativeScript_All(
scripts: null == scripts ? _self._scripts : scripts // ignore: cast_nullable_to_non_nullable
as List<NativeScript>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,scriptsLengthType: null == scriptsLengthType ? _self.scriptsLengthType : scriptsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class NativeScript_Any extends NativeScript {
  const NativeScript_Any({required final  List<NativeScript> scripts, this.lengthType = CborLengthType.definite, this.scriptsLengthType = CborLengthType.definite}): _scripts = scripts,super._();
  

 final  List<NativeScript> _scripts;
 List<NativeScript> get scripts {
  if (_scripts is EqualUnmodifiableListView) return _scripts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scripts);
}

@override@JsonKey() final  CborLengthType lengthType;
@JsonKey() final  CborLengthType scriptsLengthType;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NativeScript_AnyCopyWith<NativeScript_Any> get copyWith => _$NativeScript_AnyCopyWithImpl<NativeScript_Any>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NativeScript_Any&&const DeepCollectionEquality().equals(other._scripts, _scripts)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&(identical(other.scriptsLengthType, scriptsLengthType) || other.scriptsLengthType == scriptsLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scripts),lengthType,scriptsLengthType);

@override
String toString() {
  return 'NativeScript.any(scripts: $scripts, lengthType: $lengthType, scriptsLengthType: $scriptsLengthType)';
}


}

/// @nodoc
abstract mixin class $NativeScript_AnyCopyWith<$Res> implements $NativeScriptCopyWith<$Res> {
  factory $NativeScript_AnyCopyWith(NativeScript_Any value, $Res Function(NativeScript_Any) _then) = _$NativeScript_AnyCopyWithImpl;
@override @useResult
$Res call({
 List<NativeScript> scripts, CborLengthType lengthType, CborLengthType scriptsLengthType
});




}
/// @nodoc
class _$NativeScript_AnyCopyWithImpl<$Res>
    implements $NativeScript_AnyCopyWith<$Res> {
  _$NativeScript_AnyCopyWithImpl(this._self, this._then);

  final NativeScript_Any _self;
  final $Res Function(NativeScript_Any) _then;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scripts = null,Object? lengthType = null,Object? scriptsLengthType = null,}) {
  return _then(NativeScript_Any(
scripts: null == scripts ? _self._scripts : scripts // ignore: cast_nullable_to_non_nullable
as List<NativeScript>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,scriptsLengthType: null == scriptsLengthType ? _self.scriptsLengthType : scriptsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class NativeScript_AtLeast extends NativeScript {
  const NativeScript_AtLeast({required this.required, required final  List<NativeScript> scripts, this.lengthType = CborLengthType.definite, this.scriptsLengthType = CborLengthType.definite}): _scripts = scripts,super._();
  

 final  int required;
 final  List<NativeScript> _scripts;
 List<NativeScript> get scripts {
  if (_scripts is EqualUnmodifiableListView) return _scripts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scripts);
}

@override@JsonKey() final  CborLengthType lengthType;
@JsonKey() final  CborLengthType scriptsLengthType;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NativeScript_AtLeastCopyWith<NativeScript_AtLeast> get copyWith => _$NativeScript_AtLeastCopyWithImpl<NativeScript_AtLeast>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NativeScript_AtLeast&&(identical(other.required, required) || other.required == required)&&const DeepCollectionEquality().equals(other._scripts, _scripts)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&(identical(other.scriptsLengthType, scriptsLengthType) || other.scriptsLengthType == scriptsLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,required,const DeepCollectionEquality().hash(_scripts),lengthType,scriptsLengthType);

@override
String toString() {
  return 'NativeScript.atLeast(required: $required, scripts: $scripts, lengthType: $lengthType, scriptsLengthType: $scriptsLengthType)';
}


}

/// @nodoc
abstract mixin class $NativeScript_AtLeastCopyWith<$Res> implements $NativeScriptCopyWith<$Res> {
  factory $NativeScript_AtLeastCopyWith(NativeScript_AtLeast value, $Res Function(NativeScript_AtLeast) _then) = _$NativeScript_AtLeastCopyWithImpl;
@override @useResult
$Res call({
 int required, List<NativeScript> scripts, CborLengthType lengthType, CborLengthType scriptsLengthType
});




}
/// @nodoc
class _$NativeScript_AtLeastCopyWithImpl<$Res>
    implements $NativeScript_AtLeastCopyWith<$Res> {
  _$NativeScript_AtLeastCopyWithImpl(this._self, this._then);

  final NativeScript_AtLeast _self;
  final $Res Function(NativeScript_AtLeast) _then;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = null,Object? scripts = null,Object? lengthType = null,Object? scriptsLengthType = null,}) {
  return _then(NativeScript_AtLeast(
required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as int,scripts: null == scripts ? _self._scripts : scripts // ignore: cast_nullable_to_non_nullable
as List<NativeScript>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,scriptsLengthType: null == scriptsLengthType ? _self.scriptsLengthType : scriptsLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class NativeScript_RequireTimeAfter extends NativeScript {
  const NativeScript_RequireTimeAfter({required this.slot, this.lengthType = CborLengthType.definite}): super._();
  

 final  BigInt slot;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NativeScript_RequireTimeAfterCopyWith<NativeScript_RequireTimeAfter> get copyWith => _$NativeScript_RequireTimeAfterCopyWithImpl<NativeScript_RequireTimeAfter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NativeScript_RequireTimeAfter&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,slot,lengthType);

@override
String toString() {
  return 'NativeScript.requireTimeAfter(slot: $slot, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $NativeScript_RequireTimeAfterCopyWith<$Res> implements $NativeScriptCopyWith<$Res> {
  factory $NativeScript_RequireTimeAfterCopyWith(NativeScript_RequireTimeAfter value, $Res Function(NativeScript_RequireTimeAfter) _then) = _$NativeScript_RequireTimeAfterCopyWithImpl;
@override @useResult
$Res call({
 BigInt slot, CborLengthType lengthType
});




}
/// @nodoc
class _$NativeScript_RequireTimeAfterCopyWithImpl<$Res>
    implements $NativeScript_RequireTimeAfterCopyWith<$Res> {
  _$NativeScript_RequireTimeAfterCopyWithImpl(this._self, this._then);

  final NativeScript_RequireTimeAfter _self;
  final $Res Function(NativeScript_RequireTimeAfter) _then;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? lengthType = null,}) {
  return _then(NativeScript_RequireTimeAfter(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as BigInt,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class NativeScript_RequireTimeBefore extends NativeScript {
  const NativeScript_RequireTimeBefore({required this.slot, this.lengthType = CborLengthType.definite}): super._();
  

 final  BigInt slot;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NativeScript_RequireTimeBeforeCopyWith<NativeScript_RequireTimeBefore> get copyWith => _$NativeScript_RequireTimeBeforeCopyWithImpl<NativeScript_RequireTimeBefore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NativeScript_RequireTimeBefore&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,slot,lengthType);

@override
String toString() {
  return 'NativeScript.requireTimeBefore(slot: $slot, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $NativeScript_RequireTimeBeforeCopyWith<$Res> implements $NativeScriptCopyWith<$Res> {
  factory $NativeScript_RequireTimeBeforeCopyWith(NativeScript_RequireTimeBefore value, $Res Function(NativeScript_RequireTimeBefore) _then) = _$NativeScript_RequireTimeBeforeCopyWithImpl;
@override @useResult
$Res call({
 BigInt slot, CborLengthType lengthType
});




}
/// @nodoc
class _$NativeScript_RequireTimeBeforeCopyWithImpl<$Res>
    implements $NativeScript_RequireTimeBeforeCopyWith<$Res> {
  _$NativeScript_RequireTimeBeforeCopyWithImpl(this._self, this._then);

  final NativeScript_RequireTimeBefore _self;
  final $Res Function(NativeScript_RequireTimeBefore) _then;

/// Create a copy of NativeScript
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? lengthType = null,}) {
  return _then(NativeScript_RequireTimeBefore(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as BigInt,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
