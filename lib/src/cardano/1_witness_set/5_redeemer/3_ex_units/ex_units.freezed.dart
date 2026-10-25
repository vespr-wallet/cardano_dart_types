// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ex_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExUnits {

 BigInt get mem; BigInt get steps; CborLengthType get lengthType;
/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExUnitsCopyWith<ExUnits> get copyWith => _$ExUnitsCopyWithImpl<ExUnits>(this as ExUnits, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ExUnits;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExUnits&&(identical(other.mem, _this.mem) || other.mem == _this.mem)&&(identical(other.steps, _this.steps) || other.steps == _this.steps)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType));
}


@override
int get hashCode {
  final _this = this as ExUnits;
  return Object.hash(runtimeType,_this.mem,_this.steps,_this.lengthType);
}

@override
String toString() {
  final _this = this as ExUnits;
  return 'ExUnits(mem: ${_this.mem}, steps: ${_this.steps}, lengthType: ${_this.lengthType})';
}


}

/// @nodoc
abstract mixin class $ExUnitsCopyWith<$Res>  {
  factory $ExUnitsCopyWith(ExUnits value, $Res Function(ExUnits) _then) = _$ExUnitsCopyWithImpl;
@useResult
$Res call({
 BigInt mem, BigInt steps, CborLengthType lengthType
});




}
/// @nodoc
class _$ExUnitsCopyWithImpl<$Res>
    implements $ExUnitsCopyWith<$Res> {
  _$ExUnitsCopyWithImpl(this._self, this._then);

  final ExUnits _self;
  final $Res Function(ExUnits) _then;

/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mem = null,Object? steps = null,Object? lengthType = null,}) {
  return _then(ExUnits(
mem: null == mem ? _self.mem : mem // ignore: cast_nullable_to_non_nullable
as BigInt,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as BigInt,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _ExUnits extends ExUnits {
  const _ExUnits({required this.mem, required this.steps, this.lengthType = CborLengthType.definite}): super._();
  

@override final  BigInt mem;
@override final  BigInt steps;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExUnitsCopyWith<_ExUnits> get copyWith => __$ExUnitsCopyWithImpl<_ExUnits>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExUnits&&(identical(other.mem, mem) || other.mem == mem)&&(identical(other.steps, steps) || other.steps == steps)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,mem,steps,lengthType);
}

@override
String toString() {
    return 'ExUnits(mem: $mem, steps: $steps, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class _$ExUnitsCopyWith<$Res> implements $ExUnitsCopyWith<$Res> {
  factory _$ExUnitsCopyWith(_ExUnits value, $Res Function(_ExUnits) _then) = __$ExUnitsCopyWithImpl;
@override @useResult
$Res call({
 BigInt mem, BigInt steps, CborLengthType lengthType
});




}
/// @nodoc
class __$ExUnitsCopyWithImpl<$Res>
    implements _$ExUnitsCopyWith<$Res> {
  __$ExUnitsCopyWithImpl(this._self, this._then);

  final _ExUnits _self;
  final $Res Function(_ExUnits) _then;

/// Create a copy of ExUnits
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mem = null,Object? steps = null,Object? lengthType = null,}) {
  return _then(_ExUnits(
mem: null == mem ? _self.mem : mem // ignore: cast_nullable_to_non_nullable
as BigInt,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as BigInt,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
