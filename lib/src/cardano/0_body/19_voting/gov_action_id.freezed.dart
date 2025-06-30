// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gov_action_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GovActionId {

 String get transactionId => throw _privateConstructorUsedError; int get govActionIndex => throw _privateConstructorUsedError;







/// Create a copy of GovActionId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$GovActionIdCopyWith<GovActionId> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GovActionIdCopyWith<$Res>  {
  factory $GovActionIdCopyWith(GovActionId value, $Res Function(GovActionId) then) = _$GovActionIdCopyWithImpl<$Res, GovActionId>;
@useResult
$Res call({
 String transactionId, int govActionIndex
});



}

/// @nodoc
class _$GovActionIdCopyWithImpl<$Res,$Val extends GovActionId> implements $GovActionIdCopyWith<$Res> {
  _$GovActionIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GovActionId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? govActionIndex = null,}) {
  return _then(_value.copyWith(
transactionId: null == transactionId ? _value.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,govActionIndex: null == govActionIndex ? _value.govActionIndex : govActionIndex // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GovActionIdImplCopyWith<$Res> implements $GovActionIdCopyWith<$Res> {
  factory _$$GovActionIdImplCopyWith(_$GovActionIdImpl value, $Res Function(_$GovActionIdImpl) then) = __$$GovActionIdImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String transactionId, int govActionIndex
});



}

/// @nodoc
class __$$GovActionIdImplCopyWithImpl<$Res> extends _$GovActionIdCopyWithImpl<$Res, _$GovActionIdImpl> implements _$$GovActionIdImplCopyWith<$Res> {
  __$$GovActionIdImplCopyWithImpl(_$GovActionIdImpl _value, $Res Function(_$GovActionIdImpl) _then)
      : super(_value, _then);


/// Create a copy of GovActionId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? govActionIndex = null,}) {
  return _then(_$GovActionIdImpl(
transactionId: null == transactionId ? _value.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,govActionIndex: null == govActionIndex ? _value.govActionIndex : govActionIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$GovActionIdImpl extends _GovActionId  {
   _$GovActionIdImpl({required this.transactionId, required this.govActionIndex}): super._();

  

@override final  String transactionId;
@override final  int govActionIndex;

@override
String toString() {
  return 'GovActionId(transactionId: $transactionId, govActionIndex: $govActionIndex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GovActionIdImpl&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.govActionIndex, govActionIndex) || other.govActionIndex == govActionIndex));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,govActionIndex);

/// Create a copy of GovActionId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GovActionIdImplCopyWith<_$GovActionIdImpl> get copyWith => __$$GovActionIdImplCopyWithImpl<_$GovActionIdImpl>(this, _$identity);








}


abstract class _GovActionId extends GovActionId {
   factory _GovActionId({required final  String transactionId, required final  int govActionIndex}) = _$GovActionIdImpl;
   _GovActionId._(): super._();

  

@override String get transactionId;@override int get govActionIndex;
/// Create a copy of GovActionId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$GovActionIdImplCopyWith<_$GovActionIdImpl> get copyWith => throw _privateConstructorUsedError;

}
