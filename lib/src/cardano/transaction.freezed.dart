// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardanoTransaction {

 CardanoTransactionBody get body; WitnessSet get witnessSet; bool get isValidDi; CBORMetadata? get auxiliaryData; CborLengthType get lengthType;



@override
bool operator ==(Object other) {
  final _this = this as CardanoTransaction;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoTransaction&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.witnessSet, _this.witnessSet) || other.witnessSet == _this.witnessSet)&&(identical(other.isValidDi, _this.isValidDi) || other.isValidDi == _this.isValidDi)&&(identical(other.auxiliaryData, _this.auxiliaryData) || other.auxiliaryData == _this.auxiliaryData)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType));
}


@override
int get hashCode {
  final _this = this as CardanoTransaction;
  return Object.hash(runtimeType,_this.body,_this.witnessSet,_this.isValidDi,_this.auxiliaryData,_this.lengthType);
}

@override
String toString() {
  final _this = this as CardanoTransaction;
  return 'CardanoTransaction(body: ${_this.body}, witnessSet: ${_this.witnessSet}, isValidDi: ${_this.isValidDi}, auxiliaryData: ${_this.auxiliaryData}, lengthType: ${_this.lengthType})';
}


}





/// @nodoc


class _CardanoTransaction extends CardanoTransaction {
  const _CardanoTransaction({required this.body, required this.witnessSet, required this.isValidDi, required this.auxiliaryData, this.lengthType = CborLengthType.definite}): super._();
  

@override final  CardanoTransactionBody body;
@override final  WitnessSet witnessSet;
@override final  bool isValidDi;
@override final  CBORMetadata? auxiliaryData;
@override@JsonKey() final  CborLengthType lengthType;




@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardanoTransaction&&(identical(other.body, body) || other.body == body)&&(identical(other.witnessSet, witnessSet) || other.witnessSet == witnessSet)&&(identical(other.isValidDi, isValidDi) || other.isValidDi == isValidDi)&&(identical(other.auxiliaryData, auxiliaryData) || other.auxiliaryData == auxiliaryData)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,body,witnessSet,isValidDi,auxiliaryData,lengthType);
}

@override
String toString() {
    return 'CardanoTransaction._hidden(body: $body, witnessSet: $witnessSet, isValidDi: $isValidDi, auxiliaryData: $auxiliaryData, lengthType: $lengthType)';
}


}




// dart format on
