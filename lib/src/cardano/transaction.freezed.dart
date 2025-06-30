// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardanoTransaction {

 CardanoTransactionBody get body => throw _privateConstructorUsedError;// 0
 WitnessSet get witnessSet => throw _privateConstructorUsedError;// 1
 bool get isValidDi => throw _privateConstructorUsedError;// 2
 CBORMetadata? get auxiliaryData => throw _privateConstructorUsedError;







/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CardanoTransactionCopyWith<CardanoTransaction> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CardanoTransactionCopyWith<$Res>  {
  factory $CardanoTransactionCopyWith(CardanoTransaction value, $Res Function(CardanoTransaction) then) = _$CardanoTransactionCopyWithImpl<$Res, CardanoTransaction>;
@useResult
$Res call({
 CardanoTransactionBody body, WitnessSet witnessSet, bool isValidDi, CBORMetadata? auxiliaryData
});


$WitnessSetCopyWith<$Res> get witnessSet;$CBORMetadataCopyWith<$Res>? get auxiliaryData;
}

/// @nodoc
class _$CardanoTransactionCopyWithImpl<$Res,$Val extends CardanoTransaction> implements $CardanoTransactionCopyWith<$Res> {
  _$CardanoTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,Object? witnessSet = null,Object? isValidDi = null,Object? auxiliaryData = freezed,}) {
  return _then(_value.copyWith(
body: null == body ? _value.body : body // ignore: cast_nullable_to_non_nullable
as CardanoTransactionBody,witnessSet: null == witnessSet ? _value.witnessSet : witnessSet // ignore: cast_nullable_to_non_nullable
as WitnessSet,isValidDi: null == isValidDi ? _value.isValidDi : isValidDi // ignore: cast_nullable_to_non_nullable
as bool,auxiliaryData: freezed == auxiliaryData ? _value.auxiliaryData : auxiliaryData // ignore: cast_nullable_to_non_nullable
as CBORMetadata?,
  )as $Val);
}
/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WitnessSetCopyWith<$Res> get witnessSet {
  
  return $WitnessSetCopyWith<$Res>(_value.witnessSet, (value) {
    return _then(_value.copyWith(witnessSet: value) as $Val);
  });
}/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CBORMetadataCopyWith<$Res>? get auxiliaryData {
    if (_value.auxiliaryData == null) {
    return null;
  }

  return $CBORMetadataCopyWith<$Res>(_value.auxiliaryData!, (value) {
    return _then(_value.copyWith(auxiliaryData: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$CardanoTransactionImplCopyWith<$Res> implements $CardanoTransactionCopyWith<$Res> {
  factory _$$CardanoTransactionImplCopyWith(_$CardanoTransactionImpl value, $Res Function(_$CardanoTransactionImpl) then) = __$$CardanoTransactionImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CardanoTransactionBody body, WitnessSet witnessSet, bool isValidDi, CBORMetadata? auxiliaryData
});


@override $WitnessSetCopyWith<$Res> get witnessSet;@override $CBORMetadataCopyWith<$Res>? get auxiliaryData;
}

/// @nodoc
class __$$CardanoTransactionImplCopyWithImpl<$Res> extends _$CardanoTransactionCopyWithImpl<$Res, _$CardanoTransactionImpl> implements _$$CardanoTransactionImplCopyWith<$Res> {
  __$$CardanoTransactionImplCopyWithImpl(_$CardanoTransactionImpl _value, $Res Function(_$CardanoTransactionImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,Object? witnessSet = null,Object? isValidDi = null,Object? auxiliaryData = freezed,}) {
  return _then(_$CardanoTransactionImpl(
body: null == body ? _value.body : body // ignore: cast_nullable_to_non_nullable
as CardanoTransactionBody,witnessSet: null == witnessSet ? _value.witnessSet : witnessSet // ignore: cast_nullable_to_non_nullable
as WitnessSet,isValidDi: null == isValidDi ? _value.isValidDi : isValidDi // ignore: cast_nullable_to_non_nullable
as bool,auxiliaryData: freezed == auxiliaryData ? _value.auxiliaryData : auxiliaryData // ignore: cast_nullable_to_non_nullable
as CBORMetadata?,
  ));
}


}

/// @nodoc


class _$CardanoTransactionImpl extends _CardanoTransaction  {
  const _$CardanoTransactionImpl({required this.body, required this.witnessSet, required this.isValidDi, required this.auxiliaryData}): super._();

  

@override final  CardanoTransactionBody body;
// 0
@override final  WitnessSet witnessSet;
// 1
@override final  bool isValidDi;
// 2
@override final  CBORMetadata? auxiliaryData;

@override
String toString() {
  return 'CardanoTransaction._hidden(body: $body, witnessSet: $witnessSet, isValidDi: $isValidDi, auxiliaryData: $auxiliaryData)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoTransactionImpl&&(identical(other.body, body) || other.body == body)&&(identical(other.witnessSet, witnessSet) || other.witnessSet == witnessSet)&&(identical(other.isValidDi, isValidDi) || other.isValidDi == isValidDi)&&(identical(other.auxiliaryData, auxiliaryData) || other.auxiliaryData == auxiliaryData));
}


@override
int get hashCode => Object.hash(runtimeType,body,witnessSet,isValidDi,auxiliaryData);

/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoTransactionImplCopyWith<_$CardanoTransactionImpl> get copyWith => __$$CardanoTransactionImplCopyWithImpl<_$CardanoTransactionImpl>(this, _$identity);








}


abstract class _CardanoTransaction extends CardanoTransaction {
  const factory _CardanoTransaction({required final  CardanoTransactionBody body, required final  WitnessSet witnessSet, required final  bool isValidDi, required final  CBORMetadata? auxiliaryData}) = _$CardanoTransactionImpl;
  const _CardanoTransaction._(): super._();

  

@override CardanoTransactionBody get body;// 0
@override WitnessSet get witnessSet;// 1
@override bool get isValidDi;// 2
@override CBORMetadata? get auxiliaryData;
/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoTransactionImplCopyWith<_$CardanoTransactionImpl> get copyWith => throw _privateConstructorUsedError;

}
