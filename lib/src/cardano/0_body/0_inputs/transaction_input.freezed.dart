// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardanoTransactionInput {

 String get transactionHash => throw _privateConstructorUsedError;//hex
 int get index => throw _privateConstructorUsedError;







/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CardanoTransactionInputCopyWith<CardanoTransactionInput> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CardanoTransactionInputCopyWith<$Res>  {
  factory $CardanoTransactionInputCopyWith(CardanoTransactionInput value, $Res Function(CardanoTransactionInput) then) = _$CardanoTransactionInputCopyWithImpl<$Res, CardanoTransactionInput>;
@useResult
$Res call({
 String transactionHash, int index
});



}

/// @nodoc
class _$CardanoTransactionInputCopyWithImpl<$Res,$Val extends CardanoTransactionInput> implements $CardanoTransactionInputCopyWith<$Res> {
  _$CardanoTransactionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionHash = null,Object? index = null,}) {
  return _then(_value.copyWith(
transactionHash: null == transactionHash ? _value.transactionHash : transactionHash // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CardanoTransactionInputImplCopyWith<$Res> implements $CardanoTransactionInputCopyWith<$Res> {
  factory _$$CardanoTransactionInputImplCopyWith(_$CardanoTransactionInputImpl value, $Res Function(_$CardanoTransactionInputImpl) then) = __$$CardanoTransactionInputImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String transactionHash, int index
});



}

/// @nodoc
class __$$CardanoTransactionInputImplCopyWithImpl<$Res> extends _$CardanoTransactionInputCopyWithImpl<$Res, _$CardanoTransactionInputImpl> implements _$$CardanoTransactionInputImplCopyWith<$Res> {
  __$$CardanoTransactionInputImplCopyWithImpl(_$CardanoTransactionInputImpl _value, $Res Function(_$CardanoTransactionInputImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionHash = null,Object? index = null,}) {
  return _then(_$CardanoTransactionInputImpl(
transactionHash: null == transactionHash ? _value.transactionHash : transactionHash // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$CardanoTransactionInputImpl extends _CardanoTransactionInput  {
  const _$CardanoTransactionInputImpl({required this.transactionHash, required this.index}): super._();

  

@override final  String transactionHash;
//hex
@override final  int index;

@override
String toString() {
  return 'CardanoTransactionInput(transactionHash: $transactionHash, index: $index)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoTransactionInputImpl&&(identical(other.transactionHash, transactionHash) || other.transactionHash == transactionHash)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,transactionHash,index);

/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoTransactionInputImplCopyWith<_$CardanoTransactionInputImpl> get copyWith => __$$CardanoTransactionInputImplCopyWithImpl<_$CardanoTransactionInputImpl>(this, _$identity);








}


abstract class _CardanoTransactionInput extends CardanoTransactionInput {
  const factory _CardanoTransactionInput({required final  String transactionHash, required final  int index}) = _$CardanoTransactionInputImpl;
  const _CardanoTransactionInput._(): super._();

  

@override String get transactionHash;//hex
@override int get index;
/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoTransactionInputImplCopyWith<_$CardanoTransactionInputImpl> get copyWith => throw _privateConstructorUsedError;

}
