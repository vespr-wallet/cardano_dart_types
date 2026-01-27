// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_hash.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionHash {

 List<int> get value; CborLengthType get lengthType; List<int> get cborTags;
/// Create a copy of TransactionHash
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHashCopyWith<TransactionHash> get copyWith => _$TransactionHashCopyWithImpl<TransactionHash>(this as TransactionHash, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHash&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other.cborTags, cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),lengthType,const DeepCollectionEquality().hash(cborTags));

@override
String toString() {
  return 'TransactionHash(value: $value, lengthType: $lengthType, cborTags: $cborTags)';
}


}

/// @nodoc
abstract mixin class $TransactionHashCopyWith<$Res>  {
  factory $TransactionHashCopyWith(TransactionHash value, $Res Function(TransactionHash) _then) = _$TransactionHashCopyWithImpl;
@useResult
$Res call({
 List<int> value, CborLengthType lengthType, List<int> cborTags
});




}
/// @nodoc
class _$TransactionHashCopyWithImpl<$Res>
    implements $TransactionHashCopyWith<$Res> {
  _$TransactionHashCopyWithImpl(this._self, this._then);

  final TransactionHash _self;
  final $Res Function(TransactionHash) _then;

/// Create a copy of TransactionHash
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? lengthType = null,Object? cborTags = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,cborTags: null == cborTags ? _self.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}



/// @nodoc


class _TransactionHash extends TransactionHash {
  const _TransactionHash({required final  List<int> value, this.lengthType = CborLengthType.definite, final  List<int> cborTags = const []}): _value = value,_cborTags = cborTags,super._();
  

 final  List<int> _value;
@override List<int> get value {
  if (_value is EqualUnmodifiableListView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_value);
}

@override@JsonKey() final  CborLengthType lengthType;
 final  List<int> _cborTags;
@override@JsonKey() List<int> get cborTags {
  if (_cborTags is EqualUnmodifiableListView) return _cborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cborTags);
}


/// Create a copy of TransactionHash
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHashCopyWith<_TransactionHash> get copyWith => __$TransactionHashCopyWithImpl<_TransactionHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHash&&const DeepCollectionEquality().equals(other._value, _value)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other._cborTags, _cborTags));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value),lengthType,const DeepCollectionEquality().hash(_cborTags));

@override
String toString() {
  return 'TransactionHash(value: $value, lengthType: $lengthType, cborTags: $cborTags)';
}


}

/// @nodoc
abstract mixin class _$TransactionHashCopyWith<$Res> implements $TransactionHashCopyWith<$Res> {
  factory _$TransactionHashCopyWith(_TransactionHash value, $Res Function(_TransactionHash) _then) = __$TransactionHashCopyWithImpl;
@override @useResult
$Res call({
 List<int> value, CborLengthType lengthType, List<int> cborTags
});




}
/// @nodoc
class __$TransactionHashCopyWithImpl<$Res>
    implements _$TransactionHashCopyWith<$Res> {
  __$TransactionHashCopyWithImpl(this._self, this._then);

  final _TransactionHash _self;
  final $Res Function(_TransactionHash) _then;

/// Create a copy of TransactionHash
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? lengthType = null,Object? cborTags = null,}) {
  return _then(_TransactionHash(
value: null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,cborTags: null == cborTags ? _self._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
