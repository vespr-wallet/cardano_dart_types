// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plutus_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlutusData {










}

/// @nodoc
abstract class $PlutusDataCopyWith<$Res>  {
  factory $PlutusDataCopyWith(PlutusData value, $Res Function(PlutusData) then) = _$PlutusDataCopyWithImpl<$Res, PlutusData>;



}

/// @nodoc
class _$PlutusDataCopyWithImpl<$Res,$Val extends PlutusData> implements $PlutusDataCopyWith<$Res> {
  _$PlutusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$PlutusData_BigIntImplCopyWith<$Res>  {
  factory _$$PlutusData_BigIntImplCopyWith(_$PlutusData_BigIntImpl value, $Res Function(_$PlutusData_BigIntImpl) then) = __$$PlutusData_BigIntImplCopyWithImpl<$Res>;
@useResult
$Res call({
 BigInt value
});



}

/// @nodoc
class __$$PlutusData_BigIntImplCopyWithImpl<$Res> extends _$PlutusDataCopyWithImpl<$Res, _$PlutusData_BigIntImpl> implements _$$PlutusData_BigIntImplCopyWith<$Res> {
  __$$PlutusData_BigIntImplCopyWithImpl(_$PlutusData_BigIntImpl _value, $Res Function(_$PlutusData_BigIntImpl) _then)
      : super(_value, _then);


/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_$PlutusData_BigIntImpl(
null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$PlutusData_BigIntImpl extends PlutusData_BigInt  {
   _$PlutusData_BigIntImpl(this.value): super._();

  

@override final  BigInt value;

@override
String toString() {
  return 'PlutusData.bigInt(value: $value)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusData_BigIntImpl&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusData_BigIntImplCopyWith<_$PlutusData_BigIntImpl> get copyWith => __$$PlutusData_BigIntImplCopyWithImpl<_$PlutusData_BigIntImpl>(this, _$identity);








}


abstract class PlutusData_BigInt extends PlutusData {
   factory PlutusData_BigInt(final  BigInt value) = _$PlutusData_BigIntImpl;
   PlutusData_BigInt._(): super._();

  

 BigInt get value;
/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusData_BigIntImplCopyWith<_$PlutusData_BigIntImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PlutusData_DefiniteBytesImplCopyWith<$Res>  {
  factory _$$PlutusData_DefiniteBytesImplCopyWith(_$PlutusData_DefiniteBytesImpl value, $Res Function(_$PlutusData_DefiniteBytesImpl) then) = __$$PlutusData_DefiniteBytesImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<int> bytes, List<int> tags
});



}

/// @nodoc
class __$$PlutusData_DefiniteBytesImplCopyWithImpl<$Res> extends _$PlutusDataCopyWithImpl<$Res, _$PlutusData_DefiniteBytesImpl> implements _$$PlutusData_DefiniteBytesImplCopyWith<$Res> {
  __$$PlutusData_DefiniteBytesImplCopyWithImpl(_$PlutusData_DefiniteBytesImpl _value, $Res Function(_$PlutusData_DefiniteBytesImpl) _then)
      : super(_value, _then);


/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,Object? tags = null,}) {
  return _then(_$PlutusData_DefiniteBytesImpl(
null == bytes ? _value._bytes : bytes // ignore: cast_nullable_to_non_nullable
as List<int>,null == tags ? _value._tags : tags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _$PlutusData_DefiniteBytesImpl extends PlutusData_DefiniteBytes  {
   _$PlutusData_DefiniteBytesImpl(final  List<int> bytes, final  List<int> tags): _bytes = bytes,_tags = tags,super._();

  

 final  List<int> _bytes;
@override List<int> get bytes {
  if (_bytes is EqualUnmodifiableListView) return _bytes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bytes);
}

 final  List<int> _tags;
@override List<int> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


@override
String toString() {
  return 'PlutusData.definiteBytes(bytes: $bytes, tags: $tags)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusData_DefiniteBytesImpl&&const DeepCollectionEquality().equals(other._bytes, _bytes)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bytes),const DeepCollectionEquality().hash(_tags));

/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusData_DefiniteBytesImplCopyWith<_$PlutusData_DefiniteBytesImpl> get copyWith => __$$PlutusData_DefiniteBytesImplCopyWithImpl<_$PlutusData_DefiniteBytesImpl>(this, _$identity);








}


abstract class PlutusData_DefiniteBytes extends PlutusData {
   factory PlutusData_DefiniteBytes(final  List<int> bytes, final  List<int> tags) = _$PlutusData_DefiniteBytesImpl;
   PlutusData_DefiniteBytes._(): super._();

  

 List<int> get bytes; List<int> get tags;
/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusData_DefiniteBytesImplCopyWith<_$PlutusData_DefiniteBytesImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PlutusData_IndefiniteBytesImplCopyWith<$Res>  {
  factory _$$PlutusData_IndefiniteBytesImplCopyWith(_$PlutusData_IndefiniteBytesImpl value, $Res Function(_$PlutusData_IndefiniteBytesImpl) then) = __$$PlutusData_IndefiniteBytesImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<List<int>> bytesList, List<int> tags
});



}

/// @nodoc
class __$$PlutusData_IndefiniteBytesImplCopyWithImpl<$Res> extends _$PlutusDataCopyWithImpl<$Res, _$PlutusData_IndefiniteBytesImpl> implements _$$PlutusData_IndefiniteBytesImplCopyWith<$Res> {
  __$$PlutusData_IndefiniteBytesImplCopyWithImpl(_$PlutusData_IndefiniteBytesImpl _value, $Res Function(_$PlutusData_IndefiniteBytesImpl) _then)
      : super(_value, _then);


/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytesList = null,Object? tags = null,}) {
  return _then(_$PlutusData_IndefiniteBytesImpl(
null == bytesList ? _value._bytesList : bytesList // ignore: cast_nullable_to_non_nullable
as List<List<int>>,null == tags ? _value._tags : tags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _$PlutusData_IndefiniteBytesImpl extends PlutusData_IndefiniteBytes  {
   _$PlutusData_IndefiniteBytesImpl(final  List<List<int>> bytesList, final  List<int> tags): _bytesList = bytesList,_tags = tags,super._();

  

 final  List<List<int>> _bytesList;
@override List<List<int>> get bytesList {
  if (_bytesList is EqualUnmodifiableListView) return _bytesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bytesList);
}

 final  List<int> _tags;
@override List<int> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


@override
String toString() {
  return 'PlutusData.indefiniteBytes(bytesList: $bytesList, tags: $tags)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusData_IndefiniteBytesImpl&&const DeepCollectionEquality().equals(other._bytesList, _bytesList)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bytesList),const DeepCollectionEquality().hash(_tags));

/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusData_IndefiniteBytesImplCopyWith<_$PlutusData_IndefiniteBytesImpl> get copyWith => __$$PlutusData_IndefiniteBytesImplCopyWithImpl<_$PlutusData_IndefiniteBytesImpl>(this, _$identity);








}


abstract class PlutusData_IndefiniteBytes extends PlutusData {
   factory PlutusData_IndefiniteBytes(final  List<List<int>> bytesList, final  List<int> tags) = _$PlutusData_IndefiniteBytesImpl;
   PlutusData_IndefiniteBytes._(): super._();

  

 List<List<int>> get bytesList; List<int> get tags;
/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusData_IndefiniteBytesImplCopyWith<_$PlutusData_IndefiniteBytesImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PlutusData_ConstrImplCopyWith<$Res>  {
  factory _$$PlutusData_ConstrImplCopyWith(_$PlutusData_ConstrImpl value, $Res Function(_$PlutusData_ConstrImpl) then) = __$$PlutusData_ConstrImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int alternative, PlutusData_List data, List<int> tags, CborLengthType cborLengthType
});



}

/// @nodoc
class __$$PlutusData_ConstrImplCopyWithImpl<$Res> extends _$PlutusDataCopyWithImpl<$Res, _$PlutusData_ConstrImpl> implements _$$PlutusData_ConstrImplCopyWith<$Res> {
  __$$PlutusData_ConstrImplCopyWithImpl(_$PlutusData_ConstrImpl _value, $Res Function(_$PlutusData_ConstrImpl) _then)
      : super(_value, _then);


/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? alternative = null,Object? data = freezed,Object? tags = null,Object? cborLengthType = null,}) {
  return _then(_$PlutusData_ConstrImpl(
null == alternative ? _value.alternative : alternative // ignore: cast_nullable_to_non_nullable
as int,freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as PlutusData_List,null == tags ? _value._tags : tags // ignore: cast_nullable_to_non_nullable
as List<int>,null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class _$PlutusData_ConstrImpl extends PlutusData_Constr  {
   _$PlutusData_ConstrImpl(this.alternative, this.data, final  List<int> tags, this.cborLengthType): _tags = tags,super._();

  

@override final  int alternative;
@override final  PlutusData_List data;
 final  List<int> _tags;
@override List<int> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  CborLengthType cborLengthType;

@override
String toString() {
  return 'PlutusData.constr(alternative: $alternative, data: $data, tags: $tags, cborLengthType: $cborLengthType)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusData_ConstrImpl&&(identical(other.alternative, alternative) || other.alternative == alternative)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,alternative,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(_tags),cborLengthType);

/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusData_ConstrImplCopyWith<_$PlutusData_ConstrImpl> get copyWith => __$$PlutusData_ConstrImplCopyWithImpl<_$PlutusData_ConstrImpl>(this, _$identity);








}


abstract class PlutusData_Constr extends PlutusData {
   factory PlutusData_Constr(final  int alternative, final  PlutusData_List data, final  List<int> tags, final  CborLengthType cborLengthType) = _$PlutusData_ConstrImpl;
   PlutusData_Constr._(): super._();

  

 int get alternative; PlutusData_List get data; List<int> get tags; CborLengthType get cborLengthType;
/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusData_ConstrImplCopyWith<_$PlutusData_ConstrImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PlutusData_ListImplCopyWith<$Res>  {
  factory _$$PlutusData_ListImplCopyWith(_$PlutusData_ListImpl value, $Res Function(_$PlutusData_ListImpl) then) = __$$PlutusData_ListImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<PlutusData> data, List<int> tags, CborLengthType cborLengthType
});



}

/// @nodoc
class __$$PlutusData_ListImplCopyWithImpl<$Res> extends _$PlutusDataCopyWithImpl<$Res, _$PlutusData_ListImpl> implements _$$PlutusData_ListImplCopyWith<$Res> {
  __$$PlutusData_ListImplCopyWithImpl(_$PlutusData_ListImpl _value, $Res Function(_$PlutusData_ListImpl) _then)
      : super(_value, _then);


/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? tags = null,Object? cborLengthType = null,}) {
  return _then(_$PlutusData_ListImpl(
null == data ? _value._data : data // ignore: cast_nullable_to_non_nullable
as List<PlutusData>,null == tags ? _value._tags : tags // ignore: cast_nullable_to_non_nullable
as List<int>,null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class _$PlutusData_ListImpl extends PlutusData_List  {
   _$PlutusData_ListImpl(final  List<PlutusData> data, final  List<int> tags, this.cborLengthType): _data = data,_tags = tags,super._();

  

 final  List<PlutusData> _data;
@override List<PlutusData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

 final  List<int> _tags;
@override List<int> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  CborLengthType cborLengthType;

@override
String toString() {
  return 'PlutusData.list(data: $data, tags: $tags, cborLengthType: $cborLengthType)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusData_ListImpl&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_tags),cborLengthType);

/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusData_ListImplCopyWith<_$PlutusData_ListImpl> get copyWith => __$$PlutusData_ListImplCopyWithImpl<_$PlutusData_ListImpl>(this, _$identity);








}


abstract class PlutusData_List extends PlutusData {
   factory PlutusData_List(final  List<PlutusData> data, final  List<int> tags, final  CborLengthType cborLengthType) = _$PlutusData_ListImpl;
   PlutusData_List._(): super._();

  

 List<PlutusData> get data; List<int> get tags; CborLengthType get cborLengthType;
/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusData_ListImplCopyWith<_$PlutusData_ListImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PlutusData_MapImplCopyWith<$Res>  {
  factory _$$PlutusData_MapImplCopyWith(_$PlutusData_MapImpl value, $Res Function(_$PlutusData_MapImpl) then) = __$$PlutusData_MapImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Map<PlutusData, PlutusData> data, List<int> tags, CborLengthType cborLengthType
});



}

/// @nodoc
class __$$PlutusData_MapImplCopyWithImpl<$Res> extends _$PlutusDataCopyWithImpl<$Res, _$PlutusData_MapImpl> implements _$$PlutusData_MapImplCopyWith<$Res> {
  __$$PlutusData_MapImplCopyWithImpl(_$PlutusData_MapImpl _value, $Res Function(_$PlutusData_MapImpl) _then)
      : super(_value, _then);


/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? tags = null,Object? cborLengthType = null,}) {
  return _then(_$PlutusData_MapImpl(
null == data ? _value._data : data // ignore: cast_nullable_to_non_nullable
as Map<PlutusData, PlutusData>,null == tags ? _value._tags : tags // ignore: cast_nullable_to_non_nullable
as List<int>,null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class _$PlutusData_MapImpl extends PlutusData_Map  {
   _$PlutusData_MapImpl(final  Map<PlutusData, PlutusData> data, final  List<int> tags, this.cborLengthType): _data = data,_tags = tags,super._();

  

 final  Map<PlutusData, PlutusData> _data;
@override Map<PlutusData, PlutusData> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

 final  List<int> _tags;
@override List<int> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  CborLengthType cborLengthType;

@override
String toString() {
  return 'PlutusData.map(data: $data, tags: $tags, cborLengthType: $cborLengthType)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PlutusData_MapImpl&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_tags),cborLengthType);

/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PlutusData_MapImplCopyWith<_$PlutusData_MapImpl> get copyWith => __$$PlutusData_MapImplCopyWithImpl<_$PlutusData_MapImpl>(this, _$identity);








}


abstract class PlutusData_Map extends PlutusData {
   factory PlutusData_Map(final  Map<PlutusData, PlutusData> data, final  List<int> tags, final  CborLengthType cborLengthType) = _$PlutusData_MapImpl;
   PlutusData_Map._(): super._();

  

 Map<PlutusData, PlutusData> get data; List<int> get tags; CborLengthType get cborLengthType;
/// Create a copy of PlutusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PlutusData_MapImplCopyWith<_$PlutusData_MapImpl> get copyWith => throw _privateConstructorUsedError;

}
