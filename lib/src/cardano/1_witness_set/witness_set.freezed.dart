// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListWithCborType<T> {

 List<T> get items => throw _privateConstructorUsedError; CborLengthType get cborLengthType => throw _privateConstructorUsedError; List<int>? get tags => throw _privateConstructorUsedError;







/// Create a copy of ListWithCborType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ListWithCborTypeCopyWith<T, ListWithCborType<T>> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ListWithCborTypeCopyWith<T,$Res>  {
  factory $ListWithCborTypeCopyWith(ListWithCborType<T> value, $Res Function(ListWithCborType<T>) then) = _$ListWithCborTypeCopyWithImpl<T, $Res, ListWithCborType<T>>;
@useResult
$Res call({
 List<T> items, CborLengthType cborLengthType, List<int>? tags
});



}

/// @nodoc
class _$ListWithCborTypeCopyWithImpl<T,$Res,$Val extends ListWithCborType<T>> implements $ListWithCborTypeCopyWith<T, $Res> {
  _$ListWithCborTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ListWithCborType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? cborLengthType = null,Object? tags = freezed,}) {
  return _then(_value.copyWith(
items: null == items ? _value.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,cborLengthType: null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,tags: freezed == tags ? _value.tags : tags // ignore: cast_nullable_to_non_nullable
as List<int>?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ListWithCborTypeImplCopyWith<T,$Res> implements $ListWithCborTypeCopyWith<T, $Res> {
  factory _$$ListWithCborTypeImplCopyWith(_$ListWithCborTypeImpl<T> value, $Res Function(_$ListWithCborTypeImpl<T>) then) = __$$ListWithCborTypeImplCopyWithImpl<T, $Res>;
@override @useResult
$Res call({
 List<T> items, CborLengthType cborLengthType, List<int>? tags
});



}

/// @nodoc
class __$$ListWithCborTypeImplCopyWithImpl<T,$Res> extends _$ListWithCborTypeCopyWithImpl<T, $Res, _$ListWithCborTypeImpl<T>> implements _$$ListWithCborTypeImplCopyWith<T, $Res> {
  __$$ListWithCborTypeImplCopyWithImpl(_$ListWithCborTypeImpl<T> _value, $Res Function(_$ListWithCborTypeImpl<T>) _then)
      : super(_value, _then);


/// Create a copy of ListWithCborType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? cborLengthType = null,Object? tags = freezed,}) {
  return _then(_$ListWithCborTypeImpl<T>(
null == items ? _value._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,freezed == tags ? _value._tags : tags // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

/// @nodoc


class _$ListWithCborTypeImpl<T> extends _ListWithCborType<T>  {
  const _$ListWithCborTypeImpl(final  List<T> items, this.cborLengthType, final  List<int>? tags): _items = items,_tags = tags,super._();

  

 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  CborLengthType cborLengthType;
 final  List<int>? _tags;
@override List<int>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


@override
String toString() {
  return 'ListWithCborType<$T>(items: $items, cborLengthType: $cborLengthType, tags: $tags)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ListWithCborTypeImpl<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),cborLengthType,const DeepCollectionEquality().hash(_tags));

/// Create a copy of ListWithCborType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ListWithCborTypeImplCopyWith<T, _$ListWithCborTypeImpl<T>> get copyWith => __$$ListWithCborTypeImplCopyWithImpl<T, _$ListWithCborTypeImpl<T>>(this, _$identity);








}


abstract class _ListWithCborType<T> extends ListWithCborType<T> {
  const factory _ListWithCborType(final  List<T> items, final  CborLengthType cborLengthType, final  List<int>? tags) = _$ListWithCborTypeImpl<T>;
  const _ListWithCborType._(): super._();

  

@override List<T> get items;@override CborLengthType get cborLengthType;@override List<int>? get tags;
/// Create a copy of ListWithCborType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ListWithCborTypeImplCopyWith<T, _$ListWithCborTypeImpl<T>> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$WitnessSet {

 ListWithCborType<WitnessVKey>? get ivkeyWitnesses => throw _privateConstructorUsedError; ListWithCborType<NativeScript>? get inativeScripts => throw _privateConstructorUsedError; ListWithCborType<WitnessBootstrap>? get ibootstrap => throw _privateConstructorUsedError; ListWithCborType<PlutusScriptV1>? get iplutusScriptV1 => throw _privateConstructorUsedError; ListWithCborType<PlutusData>? get iplutusData => throw _privateConstructorUsedError; ListWithCborType<Redeemer>? get iredeemer => throw _privateConstructorUsedError; ListWithCborType<PlutusScriptV2>? get iplutusScriptV2 => throw _privateConstructorUsedError; ListWithCborType<PlutusScriptV3>? get iplutusScriptV3 => throw _privateConstructorUsedError; List<int>? get iCborTags => throw _privateConstructorUsedError;







/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$WitnessSetCopyWith<WitnessSet> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $WitnessSetCopyWith<$Res>  {
  factory $WitnessSetCopyWith(WitnessSet value, $Res Function(WitnessSet) then) = _$WitnessSetCopyWithImpl<$Res, WitnessSet>;
@useResult
$Res call({
 ListWithCborType<WitnessVKey>? ivkeyWitnesses, ListWithCborType<NativeScript>? inativeScripts, ListWithCborType<WitnessBootstrap>? ibootstrap, ListWithCborType<PlutusScriptV1>? iplutusScriptV1, ListWithCborType<PlutusData>? iplutusData, ListWithCborType<Redeemer>? iredeemer, ListWithCborType<PlutusScriptV2>? iplutusScriptV2, ListWithCborType<PlutusScriptV3>? iplutusScriptV3, List<int>? iCborTags
});


$ListWithCborTypeCopyWith<WitnessVKey, $Res>? get ivkeyWitnesses;$ListWithCborTypeCopyWith<NativeScript, $Res>? get inativeScripts;$ListWithCborTypeCopyWith<WitnessBootstrap, $Res>? get ibootstrap;$ListWithCborTypeCopyWith<PlutusScriptV1, $Res>? get iplutusScriptV1;$ListWithCborTypeCopyWith<PlutusData, $Res>? get iplutusData;$ListWithCborTypeCopyWith<Redeemer, $Res>? get iredeemer;$ListWithCborTypeCopyWith<PlutusScriptV2, $Res>? get iplutusScriptV2;$ListWithCborTypeCopyWith<PlutusScriptV3, $Res>? get iplutusScriptV3;
}

/// @nodoc
class _$WitnessSetCopyWithImpl<$Res,$Val extends WitnessSet> implements $WitnessSetCopyWith<$Res> {
  _$WitnessSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ivkeyWitnesses = freezed,Object? inativeScripts = freezed,Object? ibootstrap = freezed,Object? iplutusScriptV1 = freezed,Object? iplutusData = freezed,Object? iredeemer = freezed,Object? iplutusScriptV2 = freezed,Object? iplutusScriptV3 = freezed,Object? iCborTags = freezed,}) {
  return _then(_value.copyWith(
ivkeyWitnesses: freezed == ivkeyWitnesses ? _value.ivkeyWitnesses : ivkeyWitnesses // ignore: cast_nullable_to_non_nullable
as ListWithCborType<WitnessVKey>?,inativeScripts: freezed == inativeScripts ? _value.inativeScripts : inativeScripts // ignore: cast_nullable_to_non_nullable
as ListWithCborType<NativeScript>?,ibootstrap: freezed == ibootstrap ? _value.ibootstrap : ibootstrap // ignore: cast_nullable_to_non_nullable
as ListWithCborType<WitnessBootstrap>?,iplutusScriptV1: freezed == iplutusScriptV1 ? _value.iplutusScriptV1 : iplutusScriptV1 // ignore: cast_nullable_to_non_nullable
as ListWithCborType<PlutusScriptV1>?,iplutusData: freezed == iplutusData ? _value.iplutusData : iplutusData // ignore: cast_nullable_to_non_nullable
as ListWithCborType<PlutusData>?,iredeemer: freezed == iredeemer ? _value.iredeemer : iredeemer // ignore: cast_nullable_to_non_nullable
as ListWithCborType<Redeemer>?,iplutusScriptV2: freezed == iplutusScriptV2 ? _value.iplutusScriptV2 : iplutusScriptV2 // ignore: cast_nullable_to_non_nullable
as ListWithCborType<PlutusScriptV2>?,iplutusScriptV3: freezed == iplutusScriptV3 ? _value.iplutusScriptV3 : iplutusScriptV3 // ignore: cast_nullable_to_non_nullable
as ListWithCborType<PlutusScriptV3>?,iCborTags: freezed == iCborTags ? _value.iCborTags : iCborTags // ignore: cast_nullable_to_non_nullable
as List<int>?,
  )as $Val);
}
/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListWithCborTypeCopyWith<WitnessVKey, $Res>? get ivkeyWitnesses {
    if (_value.ivkeyWitnesses == null) {
    return null;
  }

  return $ListWithCborTypeCopyWith<WitnessVKey, $Res>(_value.ivkeyWitnesses!, (value) {
    return _then(_value.copyWith(ivkeyWitnesses: value) as $Val);
  });
}/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListWithCborTypeCopyWith<NativeScript, $Res>? get inativeScripts {
    if (_value.inativeScripts == null) {
    return null;
  }

  return $ListWithCborTypeCopyWith<NativeScript, $Res>(_value.inativeScripts!, (value) {
    return _then(_value.copyWith(inativeScripts: value) as $Val);
  });
}/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListWithCborTypeCopyWith<WitnessBootstrap, $Res>? get ibootstrap {
    if (_value.ibootstrap == null) {
    return null;
  }

  return $ListWithCborTypeCopyWith<WitnessBootstrap, $Res>(_value.ibootstrap!, (value) {
    return _then(_value.copyWith(ibootstrap: value) as $Val);
  });
}/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListWithCborTypeCopyWith<PlutusScriptV1, $Res>? get iplutusScriptV1 {
    if (_value.iplutusScriptV1 == null) {
    return null;
  }

  return $ListWithCborTypeCopyWith<PlutusScriptV1, $Res>(_value.iplutusScriptV1!, (value) {
    return _then(_value.copyWith(iplutusScriptV1: value) as $Val);
  });
}/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListWithCborTypeCopyWith<PlutusData, $Res>? get iplutusData {
    if (_value.iplutusData == null) {
    return null;
  }

  return $ListWithCborTypeCopyWith<PlutusData, $Res>(_value.iplutusData!, (value) {
    return _then(_value.copyWith(iplutusData: value) as $Val);
  });
}/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListWithCborTypeCopyWith<Redeemer, $Res>? get iredeemer {
    if (_value.iredeemer == null) {
    return null;
  }

  return $ListWithCborTypeCopyWith<Redeemer, $Res>(_value.iredeemer!, (value) {
    return _then(_value.copyWith(iredeemer: value) as $Val);
  });
}/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListWithCborTypeCopyWith<PlutusScriptV2, $Res>? get iplutusScriptV2 {
    if (_value.iplutusScriptV2 == null) {
    return null;
  }

  return $ListWithCborTypeCopyWith<PlutusScriptV2, $Res>(_value.iplutusScriptV2!, (value) {
    return _then(_value.copyWith(iplutusScriptV2: value) as $Val);
  });
}/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListWithCborTypeCopyWith<PlutusScriptV3, $Res>? get iplutusScriptV3 {
    if (_value.iplutusScriptV3 == null) {
    return null;
  }

  return $ListWithCborTypeCopyWith<PlutusScriptV3, $Res>(_value.iplutusScriptV3!, (value) {
    return _then(_value.copyWith(iplutusScriptV3: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$WitnessSetImplCopyWith<$Res> implements $WitnessSetCopyWith<$Res> {
  factory _$$WitnessSetImplCopyWith(_$WitnessSetImpl value, $Res Function(_$WitnessSetImpl) then) = __$$WitnessSetImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ListWithCborType<WitnessVKey>? ivkeyWitnesses, ListWithCborType<NativeScript>? inativeScripts, ListWithCborType<WitnessBootstrap>? ibootstrap, ListWithCborType<PlutusScriptV1>? iplutusScriptV1, ListWithCborType<PlutusData>? iplutusData, ListWithCborType<Redeemer>? iredeemer, ListWithCborType<PlutusScriptV2>? iplutusScriptV2, ListWithCborType<PlutusScriptV3>? iplutusScriptV3, List<int>? iCborTags
});


@override $ListWithCborTypeCopyWith<WitnessVKey, $Res>? get ivkeyWitnesses;@override $ListWithCborTypeCopyWith<NativeScript, $Res>? get inativeScripts;@override $ListWithCborTypeCopyWith<WitnessBootstrap, $Res>? get ibootstrap;@override $ListWithCborTypeCopyWith<PlutusScriptV1, $Res>? get iplutusScriptV1;@override $ListWithCborTypeCopyWith<PlutusData, $Res>? get iplutusData;@override $ListWithCborTypeCopyWith<Redeemer, $Res>? get iredeemer;@override $ListWithCborTypeCopyWith<PlutusScriptV2, $Res>? get iplutusScriptV2;@override $ListWithCborTypeCopyWith<PlutusScriptV3, $Res>? get iplutusScriptV3;
}

/// @nodoc
class __$$WitnessSetImplCopyWithImpl<$Res> extends _$WitnessSetCopyWithImpl<$Res, _$WitnessSetImpl> implements _$$WitnessSetImplCopyWith<$Res> {
  __$$WitnessSetImplCopyWithImpl(_$WitnessSetImpl _value, $Res Function(_$WitnessSetImpl) _then)
      : super(_value, _then);


/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ivkeyWitnesses = freezed,Object? inativeScripts = freezed,Object? ibootstrap = freezed,Object? iplutusScriptV1 = freezed,Object? iplutusData = freezed,Object? iredeemer = freezed,Object? iplutusScriptV2 = freezed,Object? iplutusScriptV3 = freezed,Object? iCborTags = freezed,}) {
  return _then(_$WitnessSetImpl(
ivkeyWitnesses: freezed == ivkeyWitnesses ? _value.ivkeyWitnesses : ivkeyWitnesses // ignore: cast_nullable_to_non_nullable
as ListWithCborType<WitnessVKey>?,inativeScripts: freezed == inativeScripts ? _value.inativeScripts : inativeScripts // ignore: cast_nullable_to_non_nullable
as ListWithCborType<NativeScript>?,ibootstrap: freezed == ibootstrap ? _value.ibootstrap : ibootstrap // ignore: cast_nullable_to_non_nullable
as ListWithCborType<WitnessBootstrap>?,iplutusScriptV1: freezed == iplutusScriptV1 ? _value.iplutusScriptV1 : iplutusScriptV1 // ignore: cast_nullable_to_non_nullable
as ListWithCborType<PlutusScriptV1>?,iplutusData: freezed == iplutusData ? _value.iplutusData : iplutusData // ignore: cast_nullable_to_non_nullable
as ListWithCborType<PlutusData>?,iredeemer: freezed == iredeemer ? _value.iredeemer : iredeemer // ignore: cast_nullable_to_non_nullable
as ListWithCborType<Redeemer>?,iplutusScriptV2: freezed == iplutusScriptV2 ? _value.iplutusScriptV2 : iplutusScriptV2 // ignore: cast_nullable_to_non_nullable
as ListWithCborType<PlutusScriptV2>?,iplutusScriptV3: freezed == iplutusScriptV3 ? _value.iplutusScriptV3 : iplutusScriptV3 // ignore: cast_nullable_to_non_nullable
as ListWithCborType<PlutusScriptV3>?,iCborTags: freezed == iCborTags ? _value._iCborTags : iCborTags // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

/// @nodoc


class _$WitnessSetImpl extends _WitnessSet  {
  const _$WitnessSetImpl({this.ivkeyWitnesses, this.inativeScripts, this.ibootstrap, this.iplutusScriptV1, this.iplutusData, this.iredeemer, this.iplutusScriptV2, this.iplutusScriptV3, final  List<int>? iCborTags}): _iCborTags = iCborTags,super._();

  

@override final  ListWithCborType<WitnessVKey>? ivkeyWitnesses;
@override final  ListWithCborType<NativeScript>? inativeScripts;
@override final  ListWithCborType<WitnessBootstrap>? ibootstrap;
@override final  ListWithCborType<PlutusScriptV1>? iplutusScriptV1;
@override final  ListWithCborType<PlutusData>? iplutusData;
@override final  ListWithCborType<Redeemer>? iredeemer;
@override final  ListWithCborType<PlutusScriptV2>? iplutusScriptV2;
@override final  ListWithCborType<PlutusScriptV3>? iplutusScriptV3;
 final  List<int>? _iCborTags;
@override List<int>? get iCborTags {
  final value = _iCborTags;
  if (value == null) return null;
  if (_iCborTags is EqualUnmodifiableListView) return _iCborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


@override
String toString() {
  return 'WitnessSet(ivkeyWitnesses: $ivkeyWitnesses, inativeScripts: $inativeScripts, ibootstrap: $ibootstrap, iplutusScriptV1: $iplutusScriptV1, iplutusData: $iplutusData, iredeemer: $iredeemer, iplutusScriptV2: $iplutusScriptV2, iplutusScriptV3: $iplutusScriptV3, iCborTags: $iCborTags)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$WitnessSetImpl&&(identical(other.ivkeyWitnesses, ivkeyWitnesses) || other.ivkeyWitnesses == ivkeyWitnesses)&&(identical(other.inativeScripts, inativeScripts) || other.inativeScripts == inativeScripts)&&(identical(other.ibootstrap, ibootstrap) || other.ibootstrap == ibootstrap)&&(identical(other.iplutusScriptV1, iplutusScriptV1) || other.iplutusScriptV1 == iplutusScriptV1)&&(identical(other.iplutusData, iplutusData) || other.iplutusData == iplutusData)&&(identical(other.iredeemer, iredeemer) || other.iredeemer == iredeemer)&&(identical(other.iplutusScriptV2, iplutusScriptV2) || other.iplutusScriptV2 == iplutusScriptV2)&&(identical(other.iplutusScriptV3, iplutusScriptV3) || other.iplutusScriptV3 == iplutusScriptV3)&&const DeepCollectionEquality().equals(other._iCborTags, _iCborTags));
}


@override
int get hashCode => Object.hash(runtimeType,ivkeyWitnesses,inativeScripts,ibootstrap,iplutusScriptV1,iplutusData,iredeemer,iplutusScriptV2,iplutusScriptV3,const DeepCollectionEquality().hash(_iCborTags));

/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$WitnessSetImplCopyWith<_$WitnessSetImpl> get copyWith => __$$WitnessSetImplCopyWithImpl<_$WitnessSetImpl>(this, _$identity);








}


abstract class _WitnessSet extends WitnessSet {
  const factory _WitnessSet({final  ListWithCborType<WitnessVKey>? ivkeyWitnesses, final  ListWithCborType<NativeScript>? inativeScripts, final  ListWithCborType<WitnessBootstrap>? ibootstrap, final  ListWithCborType<PlutusScriptV1>? iplutusScriptV1, final  ListWithCborType<PlutusData>? iplutusData, final  ListWithCborType<Redeemer>? iredeemer, final  ListWithCborType<PlutusScriptV2>? iplutusScriptV2, final  ListWithCborType<PlutusScriptV3>? iplutusScriptV3, final  List<int>? iCborTags}) = _$WitnessSetImpl;
  const _WitnessSet._(): super._();

  

@override ListWithCborType<WitnessVKey>? get ivkeyWitnesses;@override ListWithCborType<NativeScript>? get inativeScripts;@override ListWithCborType<WitnessBootstrap>? get ibootstrap;@override ListWithCborType<PlutusScriptV1>? get iplutusScriptV1;@override ListWithCborType<PlutusData>? get iplutusData;@override ListWithCborType<Redeemer>? get iredeemer;@override ListWithCborType<PlutusScriptV2>? get iplutusScriptV2;@override ListWithCborType<PlutusScriptV3>? get iplutusScriptV3;@override List<int>? get iCborTags;
/// Create a copy of WitnessSet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$WitnessSetImplCopyWith<_$WitnessSetImpl> get copyWith => throw _privateConstructorUsedError;

}
