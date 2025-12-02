// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardanoTransaction {

 CardanoTransactionBody get body;// 0
 WitnessSet get witnessSet;// 1
 bool get isValidDi;// 2
 CBORMetadata? get auxiliaryData;
/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoTransactionCopyWith<CardanoTransaction> get copyWith => _$CardanoTransactionCopyWithImpl<CardanoTransaction>(this as CardanoTransaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoTransaction&&(identical(other.body, body) || other.body == body)&&(identical(other.witnessSet, witnessSet) || other.witnessSet == witnessSet)&&(identical(other.isValidDi, isValidDi) || other.isValidDi == isValidDi)&&(identical(other.auxiliaryData, auxiliaryData) || other.auxiliaryData == auxiliaryData));
}


@override
int get hashCode => Object.hash(runtimeType,body,witnessSet,isValidDi,auxiliaryData);

@override
String toString() {
  return 'CardanoTransaction(body: $body, witnessSet: $witnessSet, isValidDi: $isValidDi, auxiliaryData: $auxiliaryData)';
}


}

/// @nodoc
abstract mixin class $CardanoTransactionCopyWith<$Res>  {
  factory $CardanoTransactionCopyWith(CardanoTransaction value, $Res Function(CardanoTransaction) _then) = _$CardanoTransactionCopyWithImpl;
@useResult
$Res call({
 CardanoTransactionBody body, WitnessSet witnessSet, bool isValidDi, CBORMetadata? auxiliaryData
});


$CardanoTransactionBodyCopyWith<$Res> get body;$WitnessSetCopyWith<$Res> get witnessSet;$CBORMetadataCopyWith<$Res>? get auxiliaryData;

}
/// @nodoc
class _$CardanoTransactionCopyWithImpl<$Res>
    implements $CardanoTransactionCopyWith<$Res> {
  _$CardanoTransactionCopyWithImpl(this._self, this._then);

  final CardanoTransaction _self;
  final $Res Function(CardanoTransaction) _then;

/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,Object? witnessSet = null,Object? isValidDi = null,Object? auxiliaryData = freezed,}) {
  return _then(_self.copyWith(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as CardanoTransactionBody,witnessSet: null == witnessSet ? _self.witnessSet : witnessSet // ignore: cast_nullable_to_non_nullable
as WitnessSet,isValidDi: null == isValidDi ? _self.isValidDi : isValidDi // ignore: cast_nullable_to_non_nullable
as bool,auxiliaryData: freezed == auxiliaryData ? _self.auxiliaryData : auxiliaryData // ignore: cast_nullable_to_non_nullable
as CBORMetadata?,
  ));
}
/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionBodyCopyWith<$Res> get body {
  
  return $CardanoTransactionBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WitnessSetCopyWith<$Res> get witnessSet {
  
  return $WitnessSetCopyWith<$Res>(_self.witnessSet, (value) {
    return _then(_self.copyWith(witnessSet: value));
  });
}/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CBORMetadataCopyWith<$Res>? get auxiliaryData {
    if (_self.auxiliaryData == null) {
    return null;
  }

  return $CBORMetadataCopyWith<$Res>(_self.auxiliaryData!, (value) {
    return _then(_self.copyWith(auxiliaryData: value));
  });
}
}



/// @nodoc


class _CardanoTransaction extends CardanoTransaction {
  const _CardanoTransaction({required this.body, required this.witnessSet, required this.isValidDi, required this.auxiliaryData}): super._();
  

@override final  CardanoTransactionBody body;
// 0
@override final  WitnessSet witnessSet;
// 1
@override final  bool isValidDi;
// 2
@override final  CBORMetadata? auxiliaryData;

/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardanoTransactionCopyWith<_CardanoTransaction> get copyWith => __$CardanoTransactionCopyWithImpl<_CardanoTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardanoTransaction&&(identical(other.body, body) || other.body == body)&&(identical(other.witnessSet, witnessSet) || other.witnessSet == witnessSet)&&(identical(other.isValidDi, isValidDi) || other.isValidDi == isValidDi)&&(identical(other.auxiliaryData, auxiliaryData) || other.auxiliaryData == auxiliaryData));
}


@override
int get hashCode => Object.hash(runtimeType,body,witnessSet,isValidDi,auxiliaryData);

@override
String toString() {
  return 'CardanoTransaction._hidden(body: $body, witnessSet: $witnessSet, isValidDi: $isValidDi, auxiliaryData: $auxiliaryData)';
}


}

/// @nodoc
abstract mixin class _$CardanoTransactionCopyWith<$Res> implements $CardanoTransactionCopyWith<$Res> {
  factory _$CardanoTransactionCopyWith(_CardanoTransaction value, $Res Function(_CardanoTransaction) _then) = __$CardanoTransactionCopyWithImpl;
@override @useResult
$Res call({
 CardanoTransactionBody body, WitnessSet witnessSet, bool isValidDi, CBORMetadata? auxiliaryData
});


@override $CardanoTransactionBodyCopyWith<$Res> get body;@override $WitnessSetCopyWith<$Res> get witnessSet;@override $CBORMetadataCopyWith<$Res>? get auxiliaryData;

}
/// @nodoc
class __$CardanoTransactionCopyWithImpl<$Res>
    implements _$CardanoTransactionCopyWith<$Res> {
  __$CardanoTransactionCopyWithImpl(this._self, this._then);

  final _CardanoTransaction _self;
  final $Res Function(_CardanoTransaction) _then;

/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = null,Object? witnessSet = null,Object? isValidDi = null,Object? auxiliaryData = freezed,}) {
  return _then(_CardanoTransaction(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as CardanoTransactionBody,witnessSet: null == witnessSet ? _self.witnessSet : witnessSet // ignore: cast_nullable_to_non_nullable
as WitnessSet,isValidDi: null == isValidDi ? _self.isValidDi : isValidDi // ignore: cast_nullable_to_non_nullable
as bool,auxiliaryData: freezed == auxiliaryData ? _self.auxiliaryData : auxiliaryData // ignore: cast_nullable_to_non_nullable
as CBORMetadata?,
  ));
}

/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionBodyCopyWith<$Res> get body {
  
  return $CardanoTransactionBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WitnessSetCopyWith<$Res> get witnessSet {
  
  return $WitnessSetCopyWith<$Res>(_self.witnessSet, (value) {
    return _then(_self.copyWith(witnessSet: value));
  });
}/// Create a copy of CardanoTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CBORMetadataCopyWith<$Res>? get auxiliaryData {
    if (_self.auxiliaryData == null) {
    return null;
  }

  return $CBORMetadataCopyWith<$Res>(_self.auxiliaryData!, (value) {
    return _then(_self.copyWith(auxiliaryData: value));
  });
}
}

// dart format on
