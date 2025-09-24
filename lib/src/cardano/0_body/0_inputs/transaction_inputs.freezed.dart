// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_inputs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardanoTransactionInputs {

 List<CardanoTransactionInput> get data; List<int> get cborTags;
/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoTransactionInputsCopyWith<CardanoTransactionInputs> get copyWith => _$CardanoTransactionInputsCopyWithImpl<CardanoTransactionInputs>(this as CardanoTransactionInputs, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoTransactionInputs&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.cborTags, cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(cborTags));

@override
String toString() {
  return 'CardanoTransactionInputs(data: $data, cborTags: $cborTags)';
}


}

/// @nodoc
abstract mixin class $CardanoTransactionInputsCopyWith<$Res>  {
  factory $CardanoTransactionInputsCopyWith(CardanoTransactionInputs value, $Res Function(CardanoTransactionInputs) _then) = _$CardanoTransactionInputsCopyWithImpl;
@useResult
$Res call({
 List<CardanoTransactionInput> data, List<int> cborTags
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
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? cborTags = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CardanoTransactionInput>,cborTags: null == cborTags ? _self.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}



/// @nodoc


class _CardanoTransactionInputs extends CardanoTransactionInputs {
  const _CardanoTransactionInputs({required final  List<CardanoTransactionInput> data, required final  List<int> cborTags}): _data = data,_cborTags = cborTags,super._();
  

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


/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardanoTransactionInputsCopyWith<_CardanoTransactionInputs> get copyWith => __$CardanoTransactionInputsCopyWithImpl<_CardanoTransactionInputs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardanoTransactionInputs&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._cborTags, _cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_cborTags));

@override
String toString() {
  return 'CardanoTransactionInputs(data: $data, cborTags: $cborTags)';
}


}

/// @nodoc
abstract mixin class _$CardanoTransactionInputsCopyWith<$Res> implements $CardanoTransactionInputsCopyWith<$Res> {
  factory _$CardanoTransactionInputsCopyWith(_CardanoTransactionInputs value, $Res Function(_CardanoTransactionInputs) _then) = __$CardanoTransactionInputsCopyWithImpl;
@override @useResult
$Res call({
 List<CardanoTransactionInput> data, List<int> cborTags
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
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? cborTags = null,}) {
  return _then(_CardanoTransactionInputs(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CardanoTransactionInput>,cborTags: null == cborTags ? _self._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
