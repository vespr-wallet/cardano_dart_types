// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeemer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Redeemer {

 RedeemerTag get redeemerTag => throw _privateConstructorUsedError; int get index => throw _privateConstructorUsedError; PlutusData get plutusData => throw _privateConstructorUsedError; ExUnits get exUnits => throw _privateConstructorUsedError;







/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$RedeemerCopyWith<Redeemer> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $RedeemerCopyWith<$Res>  {
  factory $RedeemerCopyWith(Redeemer value, $Res Function(Redeemer) then) = _$RedeemerCopyWithImpl<$Res, Redeemer>;
@useResult
$Res call({
 RedeemerTag redeemerTag, int index, PlutusData plutusData, ExUnits exUnits
});


$PlutusDataCopyWith<$Res> get plutusData;$ExUnitsCopyWith<$Res> get exUnits;
}

/// @nodoc
class _$RedeemerCopyWithImpl<$Res,$Val extends Redeemer> implements $RedeemerCopyWith<$Res> {
  _$RedeemerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redeemerTag = null,Object? index = null,Object? plutusData = null,Object? exUnits = null,}) {
  return _then(_value.copyWith(
redeemerTag: null == redeemerTag ? _value.redeemerTag : redeemerTag // ignore: cast_nullable_to_non_nullable
as RedeemerTag,index: null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,plutusData: null == plutusData ? _value.plutusData : plutusData // ignore: cast_nullable_to_non_nullable
as PlutusData,exUnits: null == exUnits ? _value.exUnits : exUnits // ignore: cast_nullable_to_non_nullable
as ExUnits,
  )as $Val);
}
/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlutusDataCopyWith<$Res> get plutusData {
  
  return $PlutusDataCopyWith<$Res>(_value.plutusData, (value) {
    return _then(_value.copyWith(plutusData: value) as $Val);
  });
}/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExUnitsCopyWith<$Res> get exUnits {
  
  return $ExUnitsCopyWith<$Res>(_value.exUnits, (value) {
    return _then(_value.copyWith(exUnits: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$Redeemer_PreConwayImplCopyWith<$Res> implements $RedeemerCopyWith<$Res> {
  factory _$$Redeemer_PreConwayImplCopyWith(_$Redeemer_PreConwayImpl value, $Res Function(_$Redeemer_PreConwayImpl) then) = __$$Redeemer_PreConwayImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 RedeemerTag redeemerTag, int index, PlutusData plutusData, ExUnits exUnits
});


@override $PlutusDataCopyWith<$Res> get plutusData;@override $ExUnitsCopyWith<$Res> get exUnits;
}

/// @nodoc
class __$$Redeemer_PreConwayImplCopyWithImpl<$Res> extends _$RedeemerCopyWithImpl<$Res, _$Redeemer_PreConwayImpl> implements _$$Redeemer_PreConwayImplCopyWith<$Res> {
  __$$Redeemer_PreConwayImplCopyWithImpl(_$Redeemer_PreConwayImpl _value, $Res Function(_$Redeemer_PreConwayImpl) _then)
      : super(_value, _then);


/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redeemerTag = null,Object? index = null,Object? plutusData = null,Object? exUnits = null,}) {
  return _then(_$Redeemer_PreConwayImpl(
redeemerTag: null == redeemerTag ? _value.redeemerTag : redeemerTag // ignore: cast_nullable_to_non_nullable
as RedeemerTag,index: null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,plutusData: null == plutusData ? _value.plutusData : plutusData // ignore: cast_nullable_to_non_nullable
as PlutusData,exUnits: null == exUnits ? _value.exUnits : exUnits // ignore: cast_nullable_to_non_nullable
as ExUnits,
  ));
}


}

/// @nodoc


class _$Redeemer_PreConwayImpl extends Redeemer_PreConway  {
  const _$Redeemer_PreConwayImpl({required this.redeemerTag, required this.index, required this.plutusData, required this.exUnits}): super._();

  

@override final  RedeemerTag redeemerTag;
@override final  int index;
@override final  PlutusData plutusData;
@override final  ExUnits exUnits;

@override
String toString() {
  return 'Redeemer.preConway(redeemerTag: $redeemerTag, index: $index, plutusData: $plutusData, exUnits: $exUnits)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$Redeemer_PreConwayImpl&&(identical(other.redeemerTag, redeemerTag) || other.redeemerTag == redeemerTag)&&(identical(other.index, index) || other.index == index)&&(identical(other.plutusData, plutusData) || other.plutusData == plutusData)&&(identical(other.exUnits, exUnits) || other.exUnits == exUnits));
}


@override
int get hashCode => Object.hash(runtimeType,redeemerTag,index,plutusData,exUnits);

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$Redeemer_PreConwayImplCopyWith<_$Redeemer_PreConwayImpl> get copyWith => __$$Redeemer_PreConwayImplCopyWithImpl<_$Redeemer_PreConwayImpl>(this, _$identity);








}


abstract class Redeemer_PreConway extends Redeemer {
  const factory Redeemer_PreConway({required final  RedeemerTag redeemerTag, required final  int index, required final  PlutusData plutusData, required final  ExUnits exUnits}) = _$Redeemer_PreConwayImpl;
  const Redeemer_PreConway._(): super._();

  

@override RedeemerTag get redeemerTag;@override int get index;@override PlutusData get plutusData;@override ExUnits get exUnits;
/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$Redeemer_PreConwayImplCopyWith<_$Redeemer_PreConwayImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$Redeemer_ConwayImplCopyWith<$Res> implements $RedeemerCopyWith<$Res> {
  factory _$$Redeemer_ConwayImplCopyWith(_$Redeemer_ConwayImpl value, $Res Function(_$Redeemer_ConwayImpl) then) = __$$Redeemer_ConwayImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 RedeemerTag redeemerTag, int index, PlutusData plutusData, ExUnits exUnits
});


@override $PlutusDataCopyWith<$Res> get plutusData;@override $ExUnitsCopyWith<$Res> get exUnits;
}

/// @nodoc
class __$$Redeemer_ConwayImplCopyWithImpl<$Res> extends _$RedeemerCopyWithImpl<$Res, _$Redeemer_ConwayImpl> implements _$$Redeemer_ConwayImplCopyWith<$Res> {
  __$$Redeemer_ConwayImplCopyWithImpl(_$Redeemer_ConwayImpl _value, $Res Function(_$Redeemer_ConwayImpl) _then)
      : super(_value, _then);


/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redeemerTag = null,Object? index = null,Object? plutusData = null,Object? exUnits = null,}) {
  return _then(_$Redeemer_ConwayImpl(
redeemerTag: null == redeemerTag ? _value.redeemerTag : redeemerTag // ignore: cast_nullable_to_non_nullable
as RedeemerTag,index: null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,plutusData: null == plutusData ? _value.plutusData : plutusData // ignore: cast_nullable_to_non_nullable
as PlutusData,exUnits: null == exUnits ? _value.exUnits : exUnits // ignore: cast_nullable_to_non_nullable
as ExUnits,
  ));
}


}

/// @nodoc


class _$Redeemer_ConwayImpl extends Redeemer_Conway  {
  const _$Redeemer_ConwayImpl({required this.redeemerTag, required this.index, required this.plutusData, required this.exUnits}): super._();

  

@override final  RedeemerTag redeemerTag;
@override final  int index;
@override final  PlutusData plutusData;
@override final  ExUnits exUnits;

@override
String toString() {
  return 'Redeemer.conway(redeemerTag: $redeemerTag, index: $index, plutusData: $plutusData, exUnits: $exUnits)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$Redeemer_ConwayImpl&&(identical(other.redeemerTag, redeemerTag) || other.redeemerTag == redeemerTag)&&(identical(other.index, index) || other.index == index)&&(identical(other.plutusData, plutusData) || other.plutusData == plutusData)&&(identical(other.exUnits, exUnits) || other.exUnits == exUnits));
}


@override
int get hashCode => Object.hash(runtimeType,redeemerTag,index,plutusData,exUnits);

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$Redeemer_ConwayImplCopyWith<_$Redeemer_ConwayImpl> get copyWith => __$$Redeemer_ConwayImplCopyWithImpl<_$Redeemer_ConwayImpl>(this, _$identity);








}


abstract class Redeemer_Conway extends Redeemer {
  const factory Redeemer_Conway({required final  RedeemerTag redeemerTag, required final  int index, required final  PlutusData plutusData, required final  ExUnits exUnits}) = _$Redeemer_ConwayImpl;
  const Redeemer_Conway._(): super._();

  

@override RedeemerTag get redeemerTag;@override int get index;@override PlutusData get plutusData;@override ExUnits get exUnits;
/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$Redeemer_ConwayImplCopyWith<_$Redeemer_ConwayImpl> get copyWith => throw _privateConstructorUsedError;

}
