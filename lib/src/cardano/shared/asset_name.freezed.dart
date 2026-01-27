// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssetName {

 List<int> get value; CborLengthType get lengthType; List<int> get cborTags;
/// Create a copy of AssetName
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetNameCopyWith<AssetName> get copyWith => _$AssetNameCopyWithImpl<AssetName>(this as AssetName, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetName&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other.cborTags, cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),lengthType,const DeepCollectionEquality().hash(cborTags));

@override
String toString() {
  return 'AssetName(value: $value, lengthType: $lengthType, cborTags: $cborTags)';
}


}

/// @nodoc
abstract mixin class $AssetNameCopyWith<$Res>  {
  factory $AssetNameCopyWith(AssetName value, $Res Function(AssetName) _then) = _$AssetNameCopyWithImpl;
@useResult
$Res call({
 List<int> value, CborLengthType lengthType, List<int> cborTags
});




}
/// @nodoc
class _$AssetNameCopyWithImpl<$Res>
    implements $AssetNameCopyWith<$Res> {
  _$AssetNameCopyWithImpl(this._self, this._then);

  final AssetName _self;
  final $Res Function(AssetName) _then;

/// Create a copy of AssetName
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? lengthType = null,Object? cborTags = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,cborTags: null == cborTags ? _self.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}



/// @nodoc


class _AssetName extends AssetName {
  const _AssetName({required final  List<int> value, this.lengthType = CborLengthType.definite, final  List<int> cborTags = const []}): _value = value,_cborTags = cborTags,super._();
  

 final  List<int> _value;
@override List<int> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}

@override@JsonKey() final  CborLengthType lengthType;
 final  List<int> _cborTags;
@override@JsonKey() List<int> get cborTags {
  if (_cborTags is EqualUnmodifiableListView) return _cborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cborTags);
}


/// Create a copy of AssetName
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetNameCopyWith<_AssetName> get copyWith => __$AssetNameCopyWithImpl<_AssetName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetName&&const DeepCollectionEquality().equals(other._value, _value)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other._cborTags, _cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value),lengthType,const DeepCollectionEquality().hash(_cborTags));

@override
String toString() {
  return 'AssetName(value: $value, lengthType: $lengthType, cborTags: $cborTags)';
}


}

/// @nodoc
abstract mixin class _$AssetNameCopyWith<$Res> implements $AssetNameCopyWith<$Res> {
  factory _$AssetNameCopyWith(_AssetName value, $Res Function(_AssetName) _then) = __$AssetNameCopyWithImpl;
@override @useResult
$Res call({
 List<int> value, CborLengthType lengthType, List<int> cborTags
});




}
/// @nodoc
class __$AssetNameCopyWithImpl<$Res>
    implements _$AssetNameCopyWith<$Res> {
  __$AssetNameCopyWithImpl(this._self, this._then);

  final _AssetName _self;
  final $Res Function(_AssetName) _then;

/// Create a copy of AssetName
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? lengthType = null,Object? cborTags = null,}) {
  return _then(_AssetName(
value: null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,cborTags: null == cborTags ? _self._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
