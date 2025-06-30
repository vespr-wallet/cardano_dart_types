// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdraw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Withdraw {

 String get stakeAddressBech32 => throw _privateConstructorUsedError; BigInt get coin => throw _privateConstructorUsedError;







/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$WithdrawCopyWith<Withdraw> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $WithdrawCopyWith<$Res>  {
  factory $WithdrawCopyWith(Withdraw value, $Res Function(Withdraw) then) = _$WithdrawCopyWithImpl<$Res, Withdraw>;
@useResult
$Res call({
 String stakeAddressBech32, BigInt coin
});



}

/// @nodoc
class _$WithdrawCopyWithImpl<$Res,$Val extends Withdraw> implements $WithdrawCopyWith<$Res> {
  _$WithdrawCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stakeAddressBech32 = null,Object? coin = null,}) {
  return _then(_value.copyWith(
stakeAddressBech32: null == stakeAddressBech32 ? _value.stakeAddressBech32 : stakeAddressBech32 // ignore: cast_nullable_to_non_nullable
as String,coin: null == coin ? _value.coin : coin // ignore: cast_nullable_to_non_nullable
as BigInt,
  )as $Val);
}

}


/// @nodoc
abstract class _$$WithdrawImplCopyWith<$Res> implements $WithdrawCopyWith<$Res> {
  factory _$$WithdrawImplCopyWith(_$WithdrawImpl value, $Res Function(_$WithdrawImpl) then) = __$$WithdrawImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String stakeAddressBech32, BigInt coin
});



}

/// @nodoc
class __$$WithdrawImplCopyWithImpl<$Res> extends _$WithdrawCopyWithImpl<$Res, _$WithdrawImpl> implements _$$WithdrawImplCopyWith<$Res> {
  __$$WithdrawImplCopyWithImpl(_$WithdrawImpl _value, $Res Function(_$WithdrawImpl) _then)
      : super(_value, _then);


/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stakeAddressBech32 = null,Object? coin = null,}) {
  return _then(_$WithdrawImpl(
null == stakeAddressBech32 ? _value.stakeAddressBech32 : stakeAddressBech32 // ignore: cast_nullable_to_non_nullable
as String,null == coin ? _value.coin : coin // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$WithdrawImpl extends _Withdraw  {
  const _$WithdrawImpl(this.stakeAddressBech32, this.coin): super._();

  

@override final  String stakeAddressBech32;
@override final  BigInt coin;

@override
String toString() {
  return 'Withdraw(stakeAddressBech32: $stakeAddressBech32, coin: $coin)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$WithdrawImpl&&(identical(other.stakeAddressBech32, stakeAddressBech32) || other.stakeAddressBech32 == stakeAddressBech32)&&(identical(other.coin, coin) || other.coin == coin));
}


@override
int get hashCode => Object.hash(runtimeType,stakeAddressBech32,coin);

/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$WithdrawImplCopyWith<_$WithdrawImpl> get copyWith => __$$WithdrawImplCopyWithImpl<_$WithdrawImpl>(this, _$identity);








}


abstract class _Withdraw extends Withdraw {
  const factory _Withdraw(final  String stakeAddressBech32, final  BigInt coin) = _$WithdrawImpl;
  const _Withdraw._(): super._();

  

@override String get stakeAddressBech32;@override BigInt get coin;
/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$WithdrawImplCopyWith<_$WithdrawImpl> get copyWith => throw _privateConstructorUsedError;

}
