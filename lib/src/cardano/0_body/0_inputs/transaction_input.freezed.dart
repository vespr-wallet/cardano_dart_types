// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardanoTransactionInput {

 TransactionHash get transactionHash; int get index; CborLengthType get lengthType; List<int> get cborTags;
/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoTransactionInputCopyWith<CardanoTransactionInput> get copyWith => _$CardanoTransactionInputCopyWithImpl<CardanoTransactionInput>(this as CardanoTransactionInput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoTransactionInput&&(identical(other.transactionHash, transactionHash) || other.transactionHash == transactionHash)&&(identical(other.index, index) || other.index == index)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other.cborTags, cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,transactionHash,index,lengthType,const DeepCollectionEquality().hash(cborTags));

@override
String toString() {
  return 'CardanoTransactionInput(transactionHash: $transactionHash, index: $index, lengthType: $lengthType, cborTags: $cborTags)';
}


}

/// @nodoc
abstract mixin class $CardanoTransactionInputCopyWith<$Res>  {
  factory $CardanoTransactionInputCopyWith(CardanoTransactionInput value, $Res Function(CardanoTransactionInput) _then) = _$CardanoTransactionInputCopyWithImpl;
@useResult
$Res call({
 TransactionHash transactionHash, int index, CborLengthType lengthType, List<int> cborTags
});


$TransactionHashCopyWith<$Res> get transactionHash;

}
/// @nodoc
class _$CardanoTransactionInputCopyWithImpl<$Res>
    implements $CardanoTransactionInputCopyWith<$Res> {
  _$CardanoTransactionInputCopyWithImpl(this._self, this._then);

  final CardanoTransactionInput _self;
  final $Res Function(CardanoTransactionInput) _then;

/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionHash = null,Object? index = null,Object? lengthType = null,Object? cborTags = null,}) {
  return _then(_self.copyWith(
transactionHash: null == transactionHash ? _self.transactionHash : transactionHash // ignore: cast_nullable_to_non_nullable
as TransactionHash,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,cborTags: null == cborTags ? _self.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}
/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionHashCopyWith<$Res> get transactionHash {
  
  return $TransactionHashCopyWith<$Res>(_self.transactionHash, (value) {
    return _then(_self.copyWith(transactionHash: value));
  });
}
}



/// @nodoc


class _CardanoTransactionInput extends CardanoTransactionInput {
  const _CardanoTransactionInput({required this.transactionHash, required this.index, this.lengthType = CborLengthType.definite, final  List<int> cborTags = const []}): _cborTags = cborTags,super._();
  

@override final  TransactionHash transactionHash;
@override final  int index;
@override@JsonKey() final  CborLengthType lengthType;
 final  List<int> _cborTags;
@override@JsonKey() List<int> get cborTags {
  if (_cborTags is EqualUnmodifiableListView) return _cborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cborTags);
}


/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardanoTransactionInputCopyWith<_CardanoTransactionInput> get copyWith => __$CardanoTransactionInputCopyWithImpl<_CardanoTransactionInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardanoTransactionInput&&(identical(other.transactionHash, transactionHash) || other.transactionHash == transactionHash)&&(identical(other.index, index) || other.index == index)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other._cborTags, _cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,transactionHash,index,lengthType,const DeepCollectionEquality().hash(_cborTags));

@override
String toString() {
  return 'CardanoTransactionInput(transactionHash: $transactionHash, index: $index, lengthType: $lengthType, cborTags: $cborTags)';
}


}

/// @nodoc
abstract mixin class _$CardanoTransactionInputCopyWith<$Res> implements $CardanoTransactionInputCopyWith<$Res> {
  factory _$CardanoTransactionInputCopyWith(_CardanoTransactionInput value, $Res Function(_CardanoTransactionInput) _then) = __$CardanoTransactionInputCopyWithImpl;
@override @useResult
$Res call({
 TransactionHash transactionHash, int index, CborLengthType lengthType, List<int> cborTags
});


@override $TransactionHashCopyWith<$Res> get transactionHash;

}
/// @nodoc
class __$CardanoTransactionInputCopyWithImpl<$Res>
    implements _$CardanoTransactionInputCopyWith<$Res> {
  __$CardanoTransactionInputCopyWithImpl(this._self, this._then);

  final _CardanoTransactionInput _self;
  final $Res Function(_CardanoTransactionInput) _then;

/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionHash = null,Object? index = null,Object? lengthType = null,Object? cborTags = null,}) {
  return _then(_CardanoTransactionInput(
transactionHash: null == transactionHash ? _self.transactionHash : transactionHash // ignore: cast_nullable_to_non_nullable
as TransactionHash,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,cborTags: null == cborTags ? _self._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

/// Create a copy of CardanoTransactionInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionHashCopyWith<$Res> get transactionHash {
  
  return $TransactionHashCopyWith<$Res>(_self.transactionHash, (value) {
    return _then(_self.copyWith(transactionHash: value));
  });
}
}

// dart format on
