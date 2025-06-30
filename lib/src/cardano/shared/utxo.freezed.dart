// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'utxo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Utxo {

 CardanoTransactionInput get identifier => throw _privateConstructorUsedError; CardanoTransactionOutput get content => throw _privateConstructorUsedError;







/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$UtxoCopyWith<Utxo> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $UtxoCopyWith<$Res>  {
  factory $UtxoCopyWith(Utxo value, $Res Function(Utxo) then) = _$UtxoCopyWithImpl<$Res, Utxo>;
@useResult
$Res call({
 CardanoTransactionInput identifier, CardanoTransactionOutput content
});


$CardanoTransactionInputCopyWith<$Res> get identifier;$CardanoTransactionOutputCopyWith<$Res> get content;
}

/// @nodoc
class _$UtxoCopyWithImpl<$Res,$Val extends Utxo> implements $UtxoCopyWith<$Res> {
  _$UtxoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? identifier = null,Object? content = null,}) {
  return _then(_value.copyWith(
identifier: null == identifier ? _value.identifier : identifier // ignore: cast_nullable_to_non_nullable
as CardanoTransactionInput,content: null == content ? _value.content : content // ignore: cast_nullable_to_non_nullable
as CardanoTransactionOutput,
  )as $Val);
}
/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionInputCopyWith<$Res> get identifier {
  
  return $CardanoTransactionInputCopyWith<$Res>(_value.identifier, (value) {
    return _then(_value.copyWith(identifier: value) as $Val);
  });
}/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionOutputCopyWith<$Res> get content {
  
  return $CardanoTransactionOutputCopyWith<$Res>(_value.content, (value) {
    return _then(_value.copyWith(content: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$UtxoImplCopyWith<$Res> implements $UtxoCopyWith<$Res> {
  factory _$$UtxoImplCopyWith(_$UtxoImpl value, $Res Function(_$UtxoImpl) then) = __$$UtxoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CardanoTransactionInput identifier, CardanoTransactionOutput content
});


@override $CardanoTransactionInputCopyWith<$Res> get identifier;@override $CardanoTransactionOutputCopyWith<$Res> get content;
}

/// @nodoc
class __$$UtxoImplCopyWithImpl<$Res> extends _$UtxoCopyWithImpl<$Res, _$UtxoImpl> implements _$$UtxoImplCopyWith<$Res> {
  __$$UtxoImplCopyWithImpl(_$UtxoImpl _value, $Res Function(_$UtxoImpl) _then)
      : super(_value, _then);


/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? identifier = null,Object? content = null,}) {
  return _then(_$UtxoImpl(
identifier: null == identifier ? _value.identifier : identifier // ignore: cast_nullable_to_non_nullable
as CardanoTransactionInput,content: null == content ? _value.content : content // ignore: cast_nullable_to_non_nullable
as CardanoTransactionOutput,
  ));
}


}

/// @nodoc


class _$UtxoImpl extends _Utxo  {
  const _$UtxoImpl({required this.identifier, required this.content}): super._();

  

@override final  CardanoTransactionInput identifier;
@override final  CardanoTransactionOutput content;

@override
String toString() {
  return 'Utxo(identifier: $identifier, content: $content)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UtxoImpl&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,identifier,content);

/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$UtxoImplCopyWith<_$UtxoImpl> get copyWith => __$$UtxoImplCopyWithImpl<_$UtxoImpl>(this, _$identity);








}


abstract class _Utxo extends Utxo {
  const factory _Utxo({required final  CardanoTransactionInput identifier, required final  CardanoTransactionOutput content}) = _$UtxoImpl;
  const _Utxo._(): super._();

  

@override CardanoTransactionInput get identifier;@override CardanoTransactionOutput get content;
/// Create a copy of Utxo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$UtxoImplCopyWith<_$UtxoImpl> get copyWith => throw _privateConstructorUsedError;

}
