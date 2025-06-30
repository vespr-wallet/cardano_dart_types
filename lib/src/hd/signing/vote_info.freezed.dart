// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoteInfo {

 GovActionId get action => throw _privateConstructorUsedError; Vote get vote => throw _privateConstructorUsedError;







/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$VoteInfoCopyWith<VoteInfo> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $VoteInfoCopyWith<$Res>  {
  factory $VoteInfoCopyWith(VoteInfo value, $Res Function(VoteInfo) then) = _$VoteInfoCopyWithImpl<$Res, VoteInfo>;
@useResult
$Res call({
 GovActionId action, Vote vote
});


$GovActionIdCopyWith<$Res> get action;
}

/// @nodoc
class _$VoteInfoCopyWithImpl<$Res,$Val extends VoteInfo> implements $VoteInfoCopyWith<$Res> {
  _$VoteInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? action = null,Object? vote = null,}) {
  return _then(_value.copyWith(
action: null == action ? _value.action : action // ignore: cast_nullable_to_non_nullable
as GovActionId,vote: null == vote ? _value.vote : vote // ignore: cast_nullable_to_non_nullable
as Vote,
  )as $Val);
}
/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get action {
  
  return $GovActionIdCopyWith<$Res>(_value.action, (value) {
    return _then(_value.copyWith(action: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$VoteInfoImplCopyWith<$Res> implements $VoteInfoCopyWith<$Res> {
  factory _$$VoteInfoImplCopyWith(_$VoteInfoImpl value, $Res Function(_$VoteInfoImpl) then) = __$$VoteInfoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 GovActionId action, Vote vote
});


@override $GovActionIdCopyWith<$Res> get action;
}

/// @nodoc
class __$$VoteInfoImplCopyWithImpl<$Res> extends _$VoteInfoCopyWithImpl<$Res, _$VoteInfoImpl> implements _$$VoteInfoImplCopyWith<$Res> {
  __$$VoteInfoImplCopyWithImpl(_$VoteInfoImpl _value, $Res Function(_$VoteInfoImpl) _then)
      : super(_value, _then);


/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? action = null,Object? vote = null,}) {
  return _then(_$VoteInfoImpl(
action: null == action ? _value.action : action // ignore: cast_nullable_to_non_nullable
as GovActionId,vote: null == vote ? _value.vote : vote // ignore: cast_nullable_to_non_nullable
as Vote,
  ));
}


}

/// @nodoc


class _$VoteInfoImpl extends _VoteInfo  {
  const _$VoteInfoImpl({required this.action, required this.vote}): super._();

  

@override final  GovActionId action;
@override final  Vote vote;

@override
String toString() {
  return 'VoteInfo(action: $action, vote: $vote)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$VoteInfoImpl&&(identical(other.action, action) || other.action == action)&&(identical(other.vote, vote) || other.vote == vote));
}


@override
int get hashCode => Object.hash(runtimeType,action,vote);

/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$VoteInfoImplCopyWith<_$VoteInfoImpl> get copyWith => __$$VoteInfoImplCopyWithImpl<_$VoteInfoImpl>(this, _$identity);








}


abstract class _VoteInfo extends VoteInfo {
  const factory _VoteInfo({required final  GovActionId action, required final  Vote vote}) = _$VoteInfoImpl;
  const _VoteInfo._(): super._();

  

@override GovActionId get action;@override Vote get vote;
/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$VoteInfoImplCopyWith<_$VoteInfoImpl> get copyWith => throw _privateConstructorUsedError;

}
