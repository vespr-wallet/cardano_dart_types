// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeemer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Redeemer {

 RedeemerTag get redeemerTag; int get index; PlutusData get plutusData; ExUnits get exUnits;
/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedeemerCopyWith<Redeemer> get copyWith => _$RedeemerCopyWithImpl<Redeemer>(this as Redeemer, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Redeemer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Redeemer&&(identical(other.redeemerTag, _this.redeemerTag) || other.redeemerTag == _this.redeemerTag)&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.plutusData, _this.plutusData) || other.plutusData == _this.plutusData)&&(identical(other.exUnits, _this.exUnits) || other.exUnits == _this.exUnits));
}


@override
int get hashCode {
  final _this = this as Redeemer;
  return Object.hash(runtimeType,_this.redeemerTag,_this.index,_this.plutusData,_this.exUnits);
}

@override
String toString() {
  final _this = this as Redeemer;
  return 'Redeemer(redeemerTag: ${_this.redeemerTag}, index: ${_this.index}, plutusData: ${_this.plutusData}, exUnits: ${_this.exUnits})';
}


}

/// @nodoc
abstract mixin class $RedeemerCopyWith<$Res>  {
  factory $RedeemerCopyWith(Redeemer value, $Res Function(Redeemer) _then) = _$RedeemerCopyWithImpl;
@useResult
$Res call({
 RedeemerTag redeemerTag, int index, PlutusData plutusData, ExUnits exUnits
});


$PlutusDataCopyWith<$Res> get plutusData;$ExUnitsCopyWith<$Res> get exUnits;

}
/// @nodoc
class _$RedeemerCopyWithImpl<$Res>
    implements $RedeemerCopyWith<$Res> {
  _$RedeemerCopyWithImpl(this._self, this._then);

  final Redeemer _self;
  final $Res Function(Redeemer) _then;

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redeemerTag = null,Object? index = null,Object? plutusData = null,Object? exUnits = null,}) {
  return _then(_self.copyWith(
redeemerTag: null == redeemerTag ? _self.redeemerTag : redeemerTag // ignore: cast_nullable_to_non_nullable
as RedeemerTag,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,plutusData: null == plutusData ? _self.plutusData : plutusData // ignore: cast_nullable_to_non_nullable
as PlutusData,exUnits: null == exUnits ? _self.exUnits : exUnits // ignore: cast_nullable_to_non_nullable
as ExUnits,
  ));
}
/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlutusDataCopyWith<$Res> get plutusData {
  
  return $PlutusDataCopyWith<$Res>(_self.plutusData, (value) {
    return _then(_self.copyWith(plutusData: value));
  });
}/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExUnitsCopyWith<$Res> get exUnits {
  
  return $ExUnitsCopyWith<$Res>(_self.exUnits, (value) {
    return _then(_self.copyWith(exUnits: value));
  });
}
}



/// @nodoc


class Redeemer_PreConway extends Redeemer {
  const Redeemer_PreConway({required this.redeemerTag, required this.index, required this.plutusData, required this.exUnits, this.lengthType = CborLengthType.definite}): super._();
  

@override final  RedeemerTag redeemerTag;
@override final  int index;
@override final  PlutusData plutusData;
@override final  ExUnits exUnits;
@JsonKey() final  CborLengthType lengthType;

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Redeemer_PreConwayCopyWith<Redeemer_PreConway> get copyWith => _$Redeemer_PreConwayCopyWithImpl<Redeemer_PreConway>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Redeemer_PreConway&&(identical(other.redeemerTag, redeemerTag) || other.redeemerTag == redeemerTag)&&(identical(other.index, index) || other.index == index)&&(identical(other.plutusData, plutusData) || other.plutusData == plutusData)&&(identical(other.exUnits, exUnits) || other.exUnits == exUnits)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,redeemerTag,index,plutusData,exUnits,lengthType);
}

@override
String toString() {
    return 'Redeemer.preConway(redeemerTag: $redeemerTag, index: $index, plutusData: $plutusData, exUnits: $exUnits, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $Redeemer_PreConwayCopyWith<$Res> implements $RedeemerCopyWith<$Res> {
  factory $Redeemer_PreConwayCopyWith(Redeemer_PreConway value, $Res Function(Redeemer_PreConway) _then) = _$Redeemer_PreConwayCopyWithImpl;
@override @useResult
$Res call({
 RedeemerTag redeemerTag, int index, PlutusData plutusData, ExUnits exUnits, CborLengthType lengthType
});


@override $PlutusDataCopyWith<$Res> get plutusData;@override $ExUnitsCopyWith<$Res> get exUnits;

}
/// @nodoc
class _$Redeemer_PreConwayCopyWithImpl<$Res>
    implements $Redeemer_PreConwayCopyWith<$Res> {
  _$Redeemer_PreConwayCopyWithImpl(this._self, this._then);

  final Redeemer_PreConway _self;
  final $Res Function(Redeemer_PreConway) _then;

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redeemerTag = null,Object? index = null,Object? plutusData = null,Object? exUnits = null,Object? lengthType = null,}) {
  return _then(Redeemer_PreConway(
redeemerTag: null == redeemerTag ? _self.redeemerTag : redeemerTag // ignore: cast_nullable_to_non_nullable
as RedeemerTag,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,plutusData: null == plutusData ? _self.plutusData : plutusData // ignore: cast_nullable_to_non_nullable
as PlutusData,exUnits: null == exUnits ? _self.exUnits : exUnits // ignore: cast_nullable_to_non_nullable
as ExUnits,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlutusDataCopyWith<$Res> get plutusData {
  
  return $PlutusDataCopyWith<$Res>(_self.plutusData, (value) {
    return _then(_self.copyWith(plutusData: value));
  });
}/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExUnitsCopyWith<$Res> get exUnits {
  
  return $ExUnitsCopyWith<$Res>(_self.exUnits, (value) {
    return _then(_self.copyWith(exUnits: value));
  });
}
}

/// @nodoc


class Redeemer_Conway extends Redeemer {
  const Redeemer_Conway({required this.redeemerTag, required this.index, required this.plutusData, required this.exUnits, this.keyLengthType = CborLengthType.definite, this.valueLengthType = CborLengthType.definite}): super._();
  

@override final  RedeemerTag redeemerTag;
@override final  int index;
@override final  PlutusData plutusData;
@override final  ExUnits exUnits;
@JsonKey() final  CborLengthType keyLengthType;
@JsonKey() final  CborLengthType valueLengthType;

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Redeemer_ConwayCopyWith<Redeemer_Conway> get copyWith => _$Redeemer_ConwayCopyWithImpl<Redeemer_Conway>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Redeemer_Conway&&(identical(other.redeemerTag, redeemerTag) || other.redeemerTag == redeemerTag)&&(identical(other.index, index) || other.index == index)&&(identical(other.plutusData, plutusData) || other.plutusData == plutusData)&&(identical(other.exUnits, exUnits) || other.exUnits == exUnits)&&(identical(other.keyLengthType, keyLengthType) || other.keyLengthType == keyLengthType)&&(identical(other.valueLengthType, valueLengthType) || other.valueLengthType == valueLengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,redeemerTag,index,plutusData,exUnits,keyLengthType,valueLengthType);
}

@override
String toString() {
    return 'Redeemer.conway(redeemerTag: $redeemerTag, index: $index, plutusData: $plutusData, exUnits: $exUnits, keyLengthType: $keyLengthType, valueLengthType: $valueLengthType)';
}


}

/// @nodoc
abstract mixin class $Redeemer_ConwayCopyWith<$Res> implements $RedeemerCopyWith<$Res> {
  factory $Redeemer_ConwayCopyWith(Redeemer_Conway value, $Res Function(Redeemer_Conway) _then) = _$Redeemer_ConwayCopyWithImpl;
@override @useResult
$Res call({
 RedeemerTag redeemerTag, int index, PlutusData plutusData, ExUnits exUnits, CborLengthType keyLengthType, CborLengthType valueLengthType
});


@override $PlutusDataCopyWith<$Res> get plutusData;@override $ExUnitsCopyWith<$Res> get exUnits;

}
/// @nodoc
class _$Redeemer_ConwayCopyWithImpl<$Res>
    implements $Redeemer_ConwayCopyWith<$Res> {
  _$Redeemer_ConwayCopyWithImpl(this._self, this._then);

  final Redeemer_Conway _self;
  final $Res Function(Redeemer_Conway) _then;

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redeemerTag = null,Object? index = null,Object? plutusData = null,Object? exUnits = null,Object? keyLengthType = null,Object? valueLengthType = null,}) {
  return _then(Redeemer_Conway(
redeemerTag: null == redeemerTag ? _self.redeemerTag : redeemerTag // ignore: cast_nullable_to_non_nullable
as RedeemerTag,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,plutusData: null == plutusData ? _self.plutusData : plutusData // ignore: cast_nullable_to_non_nullable
as PlutusData,exUnits: null == exUnits ? _self.exUnits : exUnits // ignore: cast_nullable_to_non_nullable
as ExUnits,keyLengthType: null == keyLengthType ? _self.keyLengthType : keyLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,valueLengthType: null == valueLengthType ? _self.valueLengthType : valueLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlutusDataCopyWith<$Res> get plutusData {
  
  return $PlutusDataCopyWith<$Res>(_self.plutusData, (value) {
    return _then(_self.copyWith(plutusData: value));
  });
}/// Create a copy of Redeemer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExUnitsCopyWith<$Res> get exUnits {
  
  return $ExUnitsCopyWith<$Res>(_self.exUnits, (value) {
    return _then(_self.copyWith(exUnits: value));
  });
}
}

// dart format on
