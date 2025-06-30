// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rational_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RationalNumber {
  BigInt get numerator;
  BigInt get denominator;

  /// Create a copy of RationalNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RationalNumberCopyWith<RationalNumber> get copyWith =>
      _$RationalNumberCopyWithImpl<RationalNumber>(
          this as RationalNumber, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RationalNumber &&
            (identical(other.numerator, numerator) ||
                other.numerator == numerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numerator, denominator);

  @override
  String toString() {
    return 'RationalNumber(numerator: $numerator, denominator: $denominator)';
  }
}

/// @nodoc
abstract mixin class $RationalNumberCopyWith<$Res> {
  factory $RationalNumberCopyWith(
          RationalNumber value, $Res Function(RationalNumber) _then) =
      _$RationalNumberCopyWithImpl;
  @useResult
  $Res call({BigInt numerator, BigInt denominator});
}

/// @nodoc
class _$RationalNumberCopyWithImpl<$Res>
    implements $RationalNumberCopyWith<$Res> {
  _$RationalNumberCopyWithImpl(this._self, this._then);

  final RationalNumber _self;
  final $Res Function(RationalNumber) _then;

  /// Create a copy of RationalNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numerator = null,
    Object? denominator = null,
  }) {
    return _then(_self.copyWith(
      numerator: null == numerator
          ? _self.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as BigInt,
      denominator: null == denominator
          ? _self.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _RationalNumber extends RationalNumber {
  _RationalNumber({required this.numerator, required this.denominator})
      : super._();

  @override
  final BigInt numerator;
  @override
  final BigInt denominator;

  /// Create a copy of RationalNumber
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RationalNumberCopyWith<_RationalNumber> get copyWith =>
      __$RationalNumberCopyWithImpl<_RationalNumber>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RationalNumber &&
            (identical(other.numerator, numerator) ||
                other.numerator == numerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numerator, denominator);

  @override
  String toString() {
    return 'RationalNumber(numerator: $numerator, denominator: $denominator)';
  }
}

/// @nodoc
abstract mixin class _$RationalNumberCopyWith<$Res>
    implements $RationalNumberCopyWith<$Res> {
  factory _$RationalNumberCopyWith(
          _RationalNumber value, $Res Function(_RationalNumber) _then) =
      __$RationalNumberCopyWithImpl;
  @override
  @useResult
  $Res call({BigInt numerator, BigInt denominator});
}

/// @nodoc
class __$RationalNumberCopyWithImpl<$Res>
    implements _$RationalNumberCopyWith<$Res> {
  __$RationalNumberCopyWithImpl(this._self, this._then);

  final _RationalNumber _self;
  final $Res Function(_RationalNumber) _then;

  /// Create a copy of RationalNumber
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? numerator = null,
    Object? denominator = null,
  }) {
    return _then(_RationalNumber(
      numerator: null == numerator
          ? _self.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as BigInt,
      denominator: null == denominator
          ? _self.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

// dart format on
