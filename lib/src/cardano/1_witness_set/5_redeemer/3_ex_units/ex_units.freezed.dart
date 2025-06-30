// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ex_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExUnits {

 BigInt get mem => throw _privateConstructorUsedError; BigInt get steps => throw _privateConstructorUsedError;







/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ExUnitsCopyWith<ExUnits> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ExUnitsCopyWith<$Res>  {
  factory $ExUnitsCopyWith(ExUnits value, $Res Function(ExUnits) then) = _$ExUnitsCopyWithImpl<$Res, ExUnits>;
@useResult
$Res call({
 BigInt mem, BigInt steps
});



}

/// @nodoc
class _$ExUnitsCopyWithImpl<$Res,$Val extends ExUnits> implements $ExUnitsCopyWith<$Res> {
  _$ExUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mem = null,Object? steps = null,}) {
  return _then(_value.copyWith(
mem: null == mem ? _value.mem : mem // ignore: cast_nullable_to_non_nullable
as BigInt,steps: null == steps ? _value.steps : steps // ignore: cast_nullable_to_non_nullable
as BigInt,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ExUnitsImplCopyWith<$Res> implements $ExUnitsCopyWith<$Res> {
  factory _$$ExUnitsImplCopyWith(_$ExUnitsImpl value, $Res Function(_$ExUnitsImpl) then) = __$$ExUnitsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 BigInt mem, BigInt steps
});



}

/// @nodoc
class __$$ExUnitsImplCopyWithImpl<$Res> extends _$ExUnitsCopyWithImpl<$Res, _$ExUnitsImpl> implements _$$ExUnitsImplCopyWith<$Res> {
  __$$ExUnitsImplCopyWithImpl(_$ExUnitsImpl _value, $Res Function(_$ExUnitsImpl) _then)
      : super(_value, _then);


/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mem = null,Object? steps = null,}) {
  return _then(_$ExUnitsImpl(
mem: null == mem ? _value.mem : mem // ignore: cast_nullable_to_non_nullable
as BigInt,steps: null == steps ? _value.steps : steps // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$ExUnitsImpl extends _ExUnits  {
  const _$ExUnitsImpl({required this.mem, required this.steps}): super._();

  

@override final  BigInt mem;
@override final  BigInt steps;

@override
String toString() {
  return 'ExUnits(mem: $mem, steps: $steps)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ExUnitsImpl&&(identical(other.mem, mem) || other.mem == mem)&&(identical(other.steps, steps) || other.steps == steps));
}


@override
int get hashCode => Object.hash(runtimeType,mem,steps);

/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ExUnitsImplCopyWith<_$ExUnitsImpl> get copyWith => __$$ExUnitsImplCopyWithImpl<_$ExUnitsImpl>(this, _$identity);








}


abstract class _ExUnits extends ExUnits {
  const factory _ExUnits({required final  BigInt mem, required final  BigInt steps}) = _$ExUnitsImpl;
  const _ExUnits._(): super._();

  

@override BigInt get mem;@override BigInt get steps;
/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ExUnitsImplCopyWith<_$ExUnitsImpl> get copyWith => throw _privateConstructorUsedError;

}
