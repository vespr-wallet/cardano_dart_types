// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rational_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RationalNumber {

 BigInt get numerator => throw _privateConstructorUsedError; BigInt get denominator => throw _privateConstructorUsedError;







/// Create a copy of RationalNumber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$RationalNumberCopyWith<RationalNumber> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $RationalNumberCopyWith<$Res>  {
  factory $RationalNumberCopyWith(RationalNumber value, $Res Function(RationalNumber) then) = _$RationalNumberCopyWithImpl<$Res, RationalNumber>;
@useResult
$Res call({
 BigInt numerator, BigInt denominator
});



}

/// @nodoc
class _$RationalNumberCopyWithImpl<$Res,$Val extends RationalNumber> implements $RationalNumberCopyWith<$Res> {
  _$RationalNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of RationalNumber
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numerator = null,Object? denominator = null,}) {
  return _then(_value.copyWith(
numerator: null == numerator ? _value.numerator : numerator // ignore: cast_nullable_to_non_nullable
as BigInt,denominator: null == denominator ? _value.denominator : denominator // ignore: cast_nullable_to_non_nullable
as BigInt,
  )as $Val);
}

}


/// @nodoc
abstract class _$$RationalNumberImplCopyWith<$Res> implements $RationalNumberCopyWith<$Res> {
  factory _$$RationalNumberImplCopyWith(_$RationalNumberImpl value, $Res Function(_$RationalNumberImpl) then) = __$$RationalNumberImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 BigInt numerator, BigInt denominator
});



}

/// @nodoc
class __$$RationalNumberImplCopyWithImpl<$Res> extends _$RationalNumberCopyWithImpl<$Res, _$RationalNumberImpl> implements _$$RationalNumberImplCopyWith<$Res> {
  __$$RationalNumberImplCopyWithImpl(_$RationalNumberImpl _value, $Res Function(_$RationalNumberImpl) _then)
      : super(_value, _then);


/// Create a copy of RationalNumber
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? numerator = null,Object? denominator = null,}) {
  return _then(_$RationalNumberImpl(
numerator: null == numerator ? _value.numerator : numerator // ignore: cast_nullable_to_non_nullable
as BigInt,denominator: null == denominator ? _value.denominator : denominator // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$RationalNumberImpl extends _RationalNumber  {
   _$RationalNumberImpl({required this.numerator, required this.denominator}): super._();

  

@override final  BigInt numerator;
@override final  BigInt denominator;

@override
String toString() {
  return 'RationalNumber(numerator: $numerator, denominator: $denominator)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RationalNumberImpl&&(identical(other.numerator, numerator) || other.numerator == numerator)&&(identical(other.denominator, denominator) || other.denominator == denominator));
}


@override
int get hashCode => Object.hash(runtimeType,numerator,denominator);

/// Create a copy of RationalNumber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RationalNumberImplCopyWith<_$RationalNumberImpl> get copyWith => __$$RationalNumberImplCopyWithImpl<_$RationalNumberImpl>(this, _$identity);








}


abstract class _RationalNumber extends RationalNumber {
   factory _RationalNumber({required final  BigInt numerator, required final  BigInt denominator}) = _$RationalNumberImpl;
   _RationalNumber._(): super._();

  

@override BigInt get numerator;@override BigInt get denominator;
/// Create a copy of RationalNumber
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$RationalNumberImplCopyWith<_$RationalNumberImpl> get copyWith => throw _privateConstructorUsedError;

}
