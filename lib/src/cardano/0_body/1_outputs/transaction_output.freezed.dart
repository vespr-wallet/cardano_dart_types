// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardanoTransactionOutput {

 Uint8List get addressBytes => throw _privateConstructorUsedError;// address bytes (convert to bech32 for shelley and base58 for byron)
 Value get value => throw _privateConstructorUsedError; CborLengthType get lengthType => throw _privateConstructorUsedError;







/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CardanoTransactionOutputCopyWith<CardanoTransactionOutput> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CardanoTransactionOutputCopyWith<$Res>  {
  factory $CardanoTransactionOutputCopyWith(CardanoTransactionOutput value, $Res Function(CardanoTransactionOutput) then) = _$CardanoTransactionOutputCopyWithImpl<$Res, CardanoTransactionOutput>;
@useResult
$Res call({
 Uint8List addressBytes, Value value, CborLengthType lengthType
});


$ValueCopyWith<$Res> get value;
}

/// @nodoc
class _$CardanoTransactionOutputCopyWithImpl<$Res,$Val extends CardanoTransactionOutput> implements $CardanoTransactionOutputCopyWith<$Res> {
  _$CardanoTransactionOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressBytes = null,Object? value = null,Object? lengthType = null,}) {
  return _then(_value.copyWith(
addressBytes: null == addressBytes ? _value.addressBytes : addressBytes // ignore: cast_nullable_to_non_nullable
as Uint8List,value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as Value,lengthType: null == lengthType ? _value.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  )as $Val);
}
/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValueCopyWith<$Res> get value {
  
  return $ValueCopyWith<$Res>(_value.value, (value) {
    return _then(_value.copyWith(value: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$CardanoTransactionOutput_LegacyImplCopyWith<$Res> implements $CardanoTransactionOutputCopyWith<$Res> {
  factory _$$CardanoTransactionOutput_LegacyImplCopyWith(_$CardanoTransactionOutput_LegacyImpl value, $Res Function(_$CardanoTransactionOutput_LegacyImpl) then) = __$$CardanoTransactionOutput_LegacyImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List addressBytes, Value value, OutputDatum_Hash? outDatumHash, CborLengthType lengthType
});


@override $ValueCopyWith<$Res> get value;
}

/// @nodoc
class __$$CardanoTransactionOutput_LegacyImplCopyWithImpl<$Res> extends _$CardanoTransactionOutputCopyWithImpl<$Res, _$CardanoTransactionOutput_LegacyImpl> implements _$$CardanoTransactionOutput_LegacyImplCopyWith<$Res> {
  __$$CardanoTransactionOutput_LegacyImplCopyWithImpl(_$CardanoTransactionOutput_LegacyImpl _value, $Res Function(_$CardanoTransactionOutput_LegacyImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressBytes = null,Object? value = null,Object? outDatumHash = freezed,Object? lengthType = null,}) {
  return _then(_$CardanoTransactionOutput_LegacyImpl(
addressBytes: null == addressBytes ? _value.addressBytes : addressBytes // ignore: cast_nullable_to_non_nullable
as Uint8List,value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as Value,outDatumHash: freezed == outDatumHash ? _value.outDatumHash : outDatumHash // ignore: cast_nullable_to_non_nullable
as OutputDatum_Hash?,lengthType: null == lengthType ? _value.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class _$CardanoTransactionOutput_LegacyImpl extends CardanoTransactionOutput_Legacy  {
   _$CardanoTransactionOutput_LegacyImpl({required this.addressBytes, required this.value, required this.outDatumHash, required this.lengthType}): super._();

  

@override final  Uint8List addressBytes;
// address bytes (convert to bech32 for shelley and base58 for byron)
@override final  Value value;
@override final  OutputDatum_Hash? outDatumHash;
@override final  CborLengthType lengthType;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoTransactionOutput_LegacyImpl&&const DeepCollectionEquality().equals(other.addressBytes, addressBytes)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.outDatumHash, outDatumHash)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(addressBytes),value,const DeepCollectionEquality().hash(outDatumHash),lengthType);

/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoTransactionOutput_LegacyImplCopyWith<_$CardanoTransactionOutput_LegacyImpl> get copyWith => __$$CardanoTransactionOutput_LegacyImplCopyWithImpl<_$CardanoTransactionOutput_LegacyImpl>(this, _$identity);








}


abstract class CardanoTransactionOutput_Legacy extends CardanoTransactionOutput {
   factory CardanoTransactionOutput_Legacy({required final  Uint8List addressBytes, required final  Value value, required final  OutputDatum_Hash? outDatumHash, required final  CborLengthType lengthType}) = _$CardanoTransactionOutput_LegacyImpl;
   CardanoTransactionOutput_Legacy._(): super._();

  

@override Uint8List get addressBytes;// address bytes (convert to bech32 for shelley and base58 for byron)
@override Value get value; OutputDatum_Hash? get outDatumHash;@override CborLengthType get lengthType;
/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoTransactionOutput_LegacyImplCopyWith<_$CardanoTransactionOutput_LegacyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CardanoTransactionOutput_PostAlonzoImplCopyWith<$Res> implements $CardanoTransactionOutputCopyWith<$Res> {
  factory _$$CardanoTransactionOutput_PostAlonzoImplCopyWith(_$CardanoTransactionOutput_PostAlonzoImpl value, $Res Function(_$CardanoTransactionOutput_PostAlonzoImpl) then) = __$$CardanoTransactionOutput_PostAlonzoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List addressBytes, Value value, OutputDatum? outDatum, Uint8List? scriptRef, CborLengthType lengthType
});


@override $ValueCopyWith<$Res> get value;$OutputDatumCopyWith<$Res>? get outDatum;
}

/// @nodoc
class __$$CardanoTransactionOutput_PostAlonzoImplCopyWithImpl<$Res> extends _$CardanoTransactionOutputCopyWithImpl<$Res, _$CardanoTransactionOutput_PostAlonzoImpl> implements _$$CardanoTransactionOutput_PostAlonzoImplCopyWith<$Res> {
  __$$CardanoTransactionOutput_PostAlonzoImplCopyWithImpl(_$CardanoTransactionOutput_PostAlonzoImpl _value, $Res Function(_$CardanoTransactionOutput_PostAlonzoImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressBytes = null,Object? value = null,Object? outDatum = freezed,Object? scriptRef = freezed,Object? lengthType = null,}) {
  return _then(_$CardanoTransactionOutput_PostAlonzoImpl(
addressBytes: null == addressBytes ? _value.addressBytes : addressBytes // ignore: cast_nullable_to_non_nullable
as Uint8List,value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as Value,outDatum: freezed == outDatum ? _value.outDatum : outDatum // ignore: cast_nullable_to_non_nullable
as OutputDatum?,scriptRef: freezed == scriptRef ? _value.scriptRef : scriptRef // ignore: cast_nullable_to_non_nullable
as Uint8List?,lengthType: null == lengthType ? _value.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutputDatumCopyWith<$Res>? get outDatum {
    if (_value.outDatum == null) {
    return null;
  }

  return $OutputDatumCopyWith<$Res>(_value.outDatum!, (value) {
    return _then(_value.copyWith(outDatum: value) );
  });
}
}

/// @nodoc


class _$CardanoTransactionOutput_PostAlonzoImpl extends CardanoTransactionOutput_PostAlonzo  {
   _$CardanoTransactionOutput_PostAlonzoImpl({required this.addressBytes, required this.value, required this.outDatum, required this.scriptRef, required this.lengthType}): super._();

  

@override final  Uint8List addressBytes;
// address bytes (convert to bech32 for shelley and base58 for byron)
@override final  Value value;
@override final  OutputDatum? outDatum;
@override final  Uint8List? scriptRef;
@override final  CborLengthType lengthType;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoTransactionOutput_PostAlonzoImpl&&const DeepCollectionEquality().equals(other.addressBytes, addressBytes)&&(identical(other.value, value) || other.value == value)&&(identical(other.outDatum, outDatum) || other.outDatum == outDatum)&&const DeepCollectionEquality().equals(other.scriptRef, scriptRef)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(addressBytes),value,outDatum,const DeepCollectionEquality().hash(scriptRef),lengthType);

/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoTransactionOutput_PostAlonzoImplCopyWith<_$CardanoTransactionOutput_PostAlonzoImpl> get copyWith => __$$CardanoTransactionOutput_PostAlonzoImplCopyWithImpl<_$CardanoTransactionOutput_PostAlonzoImpl>(this, _$identity);








}


abstract class CardanoTransactionOutput_PostAlonzo extends CardanoTransactionOutput {
   factory CardanoTransactionOutput_PostAlonzo({required final  Uint8List addressBytes, required final  Value value, required final  OutputDatum? outDatum, required final  Uint8List? scriptRef, required final  CborLengthType lengthType}) = _$CardanoTransactionOutput_PostAlonzoImpl;
   CardanoTransactionOutput_PostAlonzo._(): super._();

  

@override Uint8List get addressBytes;// address bytes (convert to bech32 for shelley and base58 for byron)
@override Value get value; OutputDatum? get outDatum; Uint8List? get scriptRef;@override CborLengthType get lengthType;
/// Create a copy of CardanoTransactionOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoTransactionOutput_PostAlonzoImplCopyWith<_$CardanoTransactionOutput_PostAlonzoImpl> get copyWith => throw _privateConstructorUsedError;

}
