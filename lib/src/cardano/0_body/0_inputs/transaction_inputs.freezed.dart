// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_inputs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardanoTransactionInputs {

 List<CardanoTransactionInput> get data => throw _privateConstructorUsedError; List<int> get cborTags => throw _privateConstructorUsedError;







/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CardanoTransactionInputsCopyWith<CardanoTransactionInputs> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CardanoTransactionInputsCopyWith<$Res>  {
  factory $CardanoTransactionInputsCopyWith(CardanoTransactionInputs value, $Res Function(CardanoTransactionInputs) then) = _$CardanoTransactionInputsCopyWithImpl<$Res, CardanoTransactionInputs>;
@useResult
$Res call({
 List<CardanoTransactionInput> data, List<int> cborTags
});



}

/// @nodoc
class _$CardanoTransactionInputsCopyWithImpl<$Res,$Val extends CardanoTransactionInputs> implements $CardanoTransactionInputsCopyWith<$Res> {
  _$CardanoTransactionInputsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? cborTags = null,}) {
  return _then(_value.copyWith(
data: null == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as List<CardanoTransactionInput>,cborTags: null == cborTags ? _value.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CardanoTransactionInputsImplCopyWith<$Res> implements $CardanoTransactionInputsCopyWith<$Res> {
  factory _$$CardanoTransactionInputsImplCopyWith(_$CardanoTransactionInputsImpl value, $Res Function(_$CardanoTransactionInputsImpl) then) = __$$CardanoTransactionInputsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<CardanoTransactionInput> data, List<int> cborTags
});



}

/// @nodoc
class __$$CardanoTransactionInputsImplCopyWithImpl<$Res> extends _$CardanoTransactionInputsCopyWithImpl<$Res, _$CardanoTransactionInputsImpl> implements _$$CardanoTransactionInputsImplCopyWith<$Res> {
  __$$CardanoTransactionInputsImplCopyWithImpl(_$CardanoTransactionInputsImpl _value, $Res Function(_$CardanoTransactionInputsImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? cborTags = null,}) {
  return _then(_$CardanoTransactionInputsImpl(
data: null == data ? _value._data : data // ignore: cast_nullable_to_non_nullable
as List<CardanoTransactionInput>,cborTags: null == cborTags ? _value._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _$CardanoTransactionInputsImpl extends _CardanoTransactionInputs  {
  const _$CardanoTransactionInputsImpl({required final  List<CardanoTransactionInput> data, required final  List<int> cborTags}): _data = data,_cborTags = cborTags,super._();

  

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


@override
String toString() {
  return 'CardanoTransactionInputs(data: $data, cborTags: $cborTags)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoTransactionInputsImpl&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._cborTags, _cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_cborTags));

/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoTransactionInputsImplCopyWith<_$CardanoTransactionInputsImpl> get copyWith => __$$CardanoTransactionInputsImplCopyWithImpl<_$CardanoTransactionInputsImpl>(this, _$identity);








}


abstract class _CardanoTransactionInputs extends CardanoTransactionInputs {
  const factory _CardanoTransactionInputs({required final  List<CardanoTransactionInput> data, required final  List<int> cborTags}) = _$CardanoTransactionInputsImpl;
  const _CardanoTransactionInputs._(): super._();

  

@override List<CardanoTransactionInput> get data;@override List<int> get cborTags;
/// Create a copy of CardanoTransactionInputs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoTransactionInputsImplCopyWith<_$CardanoTransactionInputsImpl> get copyWith => throw _privateConstructorUsedError;

}
