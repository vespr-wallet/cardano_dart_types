// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stake_pool_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakePoolId {

 Uint8List get poolKeyHash => throw _privateConstructorUsedError;







/// Create a copy of StakePoolId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$StakePoolIdCopyWith<StakePoolId> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $StakePoolIdCopyWith<$Res>  {
  factory $StakePoolIdCopyWith(StakePoolId value, $Res Function(StakePoolId) then) = _$StakePoolIdCopyWithImpl<$Res, StakePoolId>;
@useResult
$Res call({
 Uint8List poolKeyHash
});



}

/// @nodoc
class _$StakePoolIdCopyWithImpl<$Res,$Val extends StakePoolId> implements $StakePoolIdCopyWith<$Res> {
  _$StakePoolIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of StakePoolId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? poolKeyHash = null,}) {
  return _then(_value.copyWith(
poolKeyHash: null == poolKeyHash ? _value.poolKeyHash : poolKeyHash // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$StakePoolIdImplCopyWith<$Res> implements $StakePoolIdCopyWith<$Res> {
  factory _$$StakePoolIdImplCopyWith(_$StakePoolIdImpl value, $Res Function(_$StakePoolIdImpl) then) = __$$StakePoolIdImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uint8List poolKeyHash
});



}

/// @nodoc
class __$$StakePoolIdImplCopyWithImpl<$Res> extends _$StakePoolIdCopyWithImpl<$Res, _$StakePoolIdImpl> implements _$$StakePoolIdImplCopyWith<$Res> {
  __$$StakePoolIdImplCopyWithImpl(_$StakePoolIdImpl _value, $Res Function(_$StakePoolIdImpl) _then)
      : super(_value, _then);


/// Create a copy of StakePoolId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? poolKeyHash = null,}) {
  return _then(_$StakePoolIdImpl(
null == poolKeyHash ? _value.poolKeyHash : poolKeyHash // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$StakePoolIdImpl extends _StakePoolId  {
  const _$StakePoolIdImpl(this.poolKeyHash): super._();

  

@override final  Uint8List poolKeyHash;

@override
String toString() {
  return 'StakePoolId(poolKeyHash: $poolKeyHash)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakePoolIdImpl&&const DeepCollectionEquality().equals(other.poolKeyHash, poolKeyHash));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(poolKeyHash));

/// Create a copy of StakePoolId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakePoolIdImplCopyWith<_$StakePoolIdImpl> get copyWith => __$$StakePoolIdImplCopyWithImpl<_$StakePoolIdImpl>(this, _$identity);








}


abstract class _StakePoolId extends StakePoolId {
  const factory _StakePoolId(final  Uint8List poolKeyHash) = _$StakePoolIdImpl;
  const _StakePoolId._(): super._();

  

@override Uint8List get poolKeyHash;
/// Create a copy of StakePoolId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$StakePoolIdImplCopyWith<_$StakePoolIdImpl> get copyWith => throw _privateConstructorUsedError;

}
