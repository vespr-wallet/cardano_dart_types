// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_inputs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardanoTransactionInputs {

 List<CardanoTransactionInput> get data; List<int> get cborTags; CborLengthType get lengthType;
/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoTransactionInputsCopyWith<CardanoTransactionInputs> get copyWith => _$CardanoTransactionInputsCopyWithImpl<CardanoTransactionInputs>(this as CardanoTransactionInputs, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CardanoTransactionInputs;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoTransactionInputs&&const DeepCollectionEquality().equals(other.data, _this.data)&&const DeepCollectionEquality().equals(other.cborTags, _this.cborTags)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType));
}


@override
int get hashCode {
  final _this = this as CardanoTransactionInputs;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),const DeepCollectionEquality().hash(_this.cborTags),_this.lengthType);
}

@override
String toString() {
  final _this = this as CardanoTransactionInputs;
  return 'CardanoTransactionInputs(data: ${_this.data}, cborTags: ${_this.cborTags}, lengthType: ${_this.lengthType})';
}


}

/// @nodoc
abstract mixin class $CardanoTransactionInputsCopyWith<$Res>  {
  factory $CardanoTransactionInputsCopyWith(CardanoTransactionInputs value, $Res Function(CardanoTransactionInputs) _then) = _$CardanoTransactionInputsCopyWithImpl;
@useResult
$Res call({
 List<CardanoTransactionInput> data, List<int> cborTags, CborLengthType lengthType
});




}
/// @nodoc
class _$CardanoTransactionInputsCopyWithImpl<$Res>
    implements $CardanoTransactionInputsCopyWith<$Res> {
  _$CardanoTransactionInputsCopyWithImpl(this._self, this._then);

  final CardanoTransactionInputs _self;
  final $Res Function(CardanoTransactionInputs) _then;

/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? cborTags = null,Object? lengthType = null,}) {
  return _then(CardanoTransactionInputs(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CardanoTransactionInput>,cborTags: null == cborTags ? _self.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _CardanoTransactionInputs extends CardanoTransactionInputs {
  const _CardanoTransactionInputs({required  List<CardanoTransactionInput> data, required  List<int> cborTags, this.lengthType = CborLengthType.definite}): _data = data,_cborTags = cborTags,super._();
  

 final  List<CardanoTransactionInput> _data;
@override List<CardanoTransactionInput> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

 final  List<int> _cborTags;
@override List<int> get cborTags {
  if (_cborTags is EqualUnmodifiableListView) return _cborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cborTags);
}

@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardanoTransactionInputsCopyWith<_CardanoTransactionInputs> get copyWith => __$CardanoTransactionInputsCopyWithImpl<_CardanoTransactionInputs>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardanoTransactionInputs&&const DeepCollectionEquality().equals(other.data, _data)&&const DeepCollectionEquality().equals(other.cborTags, _cborTags)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_cborTags),lengthType);
}

@override
String toString() {
    return 'CardanoTransactionInputs(data: $data, cborTags: $cborTags, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class _$CardanoTransactionInputsCopyWith<$Res> implements $CardanoTransactionInputsCopyWith<$Res> {
  factory _$CardanoTransactionInputsCopyWith(_CardanoTransactionInputs value, $Res Function(_CardanoTransactionInputs) _then) = __$CardanoTransactionInputsCopyWithImpl;
@override @useResult
$Res call({
 List<CardanoTransactionInput> data, List<int> cborTags, CborLengthType lengthType
});




}
/// @nodoc
class __$CardanoTransactionInputsCopyWithImpl<$Res>
    implements _$CardanoTransactionInputsCopyWith<$Res> {
  __$CardanoTransactionInputsCopyWithImpl(this._self, this._then);

  final _CardanoTransactionInputs _self;
  final $Res Function(_CardanoTransactionInputs) _then;

/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? cborTags = null,Object? lengthType = null,}) {
  return _then(_CardanoTransactionInputs(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CardanoTransactionInput>,cborTags: null == cborTags ? _self._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
