// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdraw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Withdraw {

 String get stakeAddressBech32; BigInt get coin;
/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawCopyWith<Withdraw> get copyWith => _$WithdrawCopyWithImpl<Withdraw>(this as Withdraw, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Withdraw&&(identical(other.stakeAddressBech32, stakeAddressBech32) || other.stakeAddressBech32 == stakeAddressBech32)&&(identical(other.coin, coin) || other.coin == coin));
}


@override
int get hashCode => Object.hash(runtimeType,stakeAddressBech32,coin);

@override
String toString() {
  return 'Withdraw(stakeAddressBech32: $stakeAddressBech32, coin: $coin)';
}


}

/// @nodoc
abstract mixin class $WithdrawCopyWith<$Res>  {
  factory $WithdrawCopyWith(Withdraw value, $Res Function(Withdraw) _then) = _$WithdrawCopyWithImpl;
@useResult
$Res call({
 String stakeAddressBech32, BigInt coin
});




}
/// @nodoc
class _$WithdrawCopyWithImpl<$Res>
    implements $WithdrawCopyWith<$Res> {
  _$WithdrawCopyWithImpl(this._self, this._then);

  final Withdraw _self;
  final $Res Function(Withdraw) _then;

/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stakeAddressBech32 = null,Object? coin = null,}) {
  return _then(_self.copyWith(
stakeAddressBech32: null == stakeAddressBech32 ? _self.stakeAddressBech32 : stakeAddressBech32 // ignore: cast_nullable_to_non_nullable
as String,coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}



/// @nodoc


class _Withdraw extends Withdraw {
  const _Withdraw(this.stakeAddressBech32, this.coin): super._();
  

@override final  String stakeAddressBech32;
@override final  BigInt coin;

/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawCopyWith<_Withdraw> get copyWith => __$WithdrawCopyWithImpl<_Withdraw>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Withdraw&&(identical(other.stakeAddressBech32, stakeAddressBech32) || other.stakeAddressBech32 == stakeAddressBech32)&&(identical(other.coin, coin) || other.coin == coin));
}


@override
int get hashCode => Object.hash(runtimeType,stakeAddressBech32,coin);

@override
String toString() {
  return 'Withdraw(stakeAddressBech32: $stakeAddressBech32, coin: $coin)';
}


}

/// @nodoc
abstract mixin class _$WithdrawCopyWith<$Res> implements $WithdrawCopyWith<$Res> {
  factory _$WithdrawCopyWith(_Withdraw value, $Res Function(_Withdraw) _then) = __$WithdrawCopyWithImpl;
@override @useResult
$Res call({
 String stakeAddressBech32, BigInt coin
});




}
/// @nodoc
class __$WithdrawCopyWithImpl<$Res>
    implements _$WithdrawCopyWith<$Res> {
  __$WithdrawCopyWithImpl(this._self, this._then);

  final _Withdraw _self;
  final $Res Function(_Withdraw) _then;

/// Create a copy of Withdraw
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stakeAddressBech32 = null,Object? coin = null,}) {
  return _then(_Withdraw(
null == stakeAddressBech32 ? _self.stakeAddressBech32 : stakeAddressBech32 // ignore: cast_nullable_to_non_nullable
as String,null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

// dart format on
