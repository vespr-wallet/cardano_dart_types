// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'output_datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutputDatum {










}

/// @nodoc
abstract class $OutputDatumCopyWith<$Res>  {
  factory $OutputDatumCopyWith(OutputDatum value, $Res Function(OutputDatum) then) = _$OutputDatumCopyWithImpl<$Res, OutputDatum>;



}

/// @nodoc
class _$OutputDatumCopyWithImpl<$Res,$Val extends OutputDatum> implements $OutputDatumCopyWith<$Res> {
  _$OutputDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of OutputDatum
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$OutputDatum_HashImplCopyWith<$Res>  {
  factory _$$OutputDatum_HashImplCopyWith(_$OutputDatum_HashImpl value, $Res Function(_$OutputDatum_HashImpl) then) = __$$OutputDatum_HashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Uint8List datumHash
});



}

/// @nodoc
class __$$OutputDatum_HashImplCopyWithImpl<$Res> extends _$OutputDatumCopyWithImpl<$Res, _$OutputDatum_HashImpl> implements _$$OutputDatum_HashImplCopyWith<$Res> {
  __$$OutputDatum_HashImplCopyWithImpl(_$OutputDatum_HashImpl _value, $Res Function(_$OutputDatum_HashImpl) _then)
      : super(_value, _then);


/// Create a copy of OutputDatum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? datumHash = null,}) {
  return _then(_$OutputDatum_HashImpl(
null == datumHash ? _value.datumHash : datumHash // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$OutputDatum_HashImpl extends OutputDatum_Hash  {
   _$OutputDatum_HashImpl(this.datumHash): super._();

  

@override final  Uint8List datumHash;

@override
String toString() {
  return 'OutputDatum.hash(datumHash: $datumHash)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$OutputDatum_HashImpl&&const DeepCollectionEquality().equals(other.datumHash, datumHash));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(datumHash));

/// Create a copy of OutputDatum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$OutputDatum_HashImplCopyWith<_$OutputDatum_HashImpl> get copyWith => __$$OutputDatum_HashImplCopyWithImpl<_$OutputDatum_HashImpl>(this, _$identity);








}


abstract class OutputDatum_Hash extends OutputDatum {
   factory OutputDatum_Hash(final  Uint8List datumHash) = _$OutputDatum_HashImpl;
   OutputDatum_Hash._(): super._();

  

 Uint8List get datumHash;
/// Create a copy of OutputDatum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$OutputDatum_HashImplCopyWith<_$OutputDatum_HashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$OutputDatum_InlineImplCopyWith<$Res>  {
  factory _$$OutputDatum_InlineImplCopyWith(_$OutputDatum_InlineImpl value, $Res Function(_$OutputDatum_InlineImpl) then) = __$$OutputDatum_InlineImplCopyWithImpl<$Res>;
@useResult
$Res call({
 PlutusData plutusData
});


$PlutusDataCopyWith<$Res> get plutusData;
}

/// @nodoc
class __$$OutputDatum_InlineImplCopyWithImpl<$Res> extends _$OutputDatumCopyWithImpl<$Res, _$OutputDatum_InlineImpl> implements _$$OutputDatum_InlineImplCopyWith<$Res> {
  __$$OutputDatum_InlineImplCopyWithImpl(_$OutputDatum_InlineImpl _value, $Res Function(_$OutputDatum_InlineImpl) _then)
      : super(_value, _then);


/// Create a copy of OutputDatum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plutusData = null,}) {
  return _then(_$OutputDatum_InlineImpl(
null == plutusData ? _value.plutusData : plutusData // ignore: cast_nullable_to_non_nullable
as PlutusData,
  ));
}

/// Create a copy of OutputDatum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlutusDataCopyWith<$Res> get plutusData {
  
  return $PlutusDataCopyWith<$Res>(_value.plutusData, (value) {
    return _then(_value.copyWith(plutusData: value) );
  });
}
}

/// @nodoc


class _$OutputDatum_InlineImpl extends OutputDatum_Inline  {
   _$OutputDatum_InlineImpl(this.plutusData): super._();

  

@override final  PlutusData plutusData;

@override
String toString() {
  return 'OutputDatum.inline(plutusData: $plutusData)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$OutputDatum_InlineImpl&&(identical(other.plutusData, plutusData) || other.plutusData == plutusData));
}


@override
int get hashCode => Object.hash(runtimeType,plutusData);

/// Create a copy of OutputDatum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$OutputDatum_InlineImplCopyWith<_$OutputDatum_InlineImpl> get copyWith => __$$OutputDatum_InlineImplCopyWithImpl<_$OutputDatum_InlineImpl>(this, _$identity);








}


abstract class OutputDatum_Inline extends OutputDatum {
   factory OutputDatum_Inline(final  PlutusData plutusData) = _$OutputDatum_InlineImpl;
   OutputDatum_Inline._(): super._();

  

 PlutusData get plutusData;
/// Create a copy of OutputDatum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$OutputDatum_InlineImplCopyWith<_$OutputDatum_InlineImpl> get copyWith => throw _privateConstructorUsedError;

}
