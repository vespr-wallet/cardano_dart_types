// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VoteInfo {

 GovActionId get action; Vote get vote;
/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoteInfoCopyWith<VoteInfo> get copyWith => _$VoteInfoCopyWithImpl<VoteInfo>(this as VoteInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoteInfo&&(identical(other.action, action) || other.action == action)&&(identical(other.vote, vote) || other.vote == vote));
}


@override
int get hashCode => Object.hash(runtimeType,action,vote);

@override
String toString() {
  return 'VoteInfo(action: $action, vote: $vote)';
}


}

/// @nodoc
abstract mixin class $VoteInfoCopyWith<$Res>  {
  factory $VoteInfoCopyWith(VoteInfo value, $Res Function(VoteInfo) _then) = _$VoteInfoCopyWithImpl;
@useResult
$Res call({
 GovActionId action, Vote vote
});


$GovActionIdCopyWith<$Res> get action;

}
/// @nodoc
class _$VoteInfoCopyWithImpl<$Res>
    implements $VoteInfoCopyWith<$Res> {
  _$VoteInfoCopyWithImpl(this._self, this._then);

  final VoteInfo _self;
  final $Res Function(VoteInfo) _then;

/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? action = null,Object? vote = null,}) {
  return _then(_self.copyWith(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as GovActionId,vote: null == vote ? _self.vote : vote // ignore: cast_nullable_to_non_nullable
as Vote,
  ));
}
/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get action {
  
  return $GovActionIdCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}



/// @nodoc


class _VoteInfo extends VoteInfo {
  const _VoteInfo({required this.action, required this.vote}): super._();
  

@override final  GovActionId action;
@override final  Vote vote;

/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoteInfoCopyWith<_VoteInfo> get copyWith => __$VoteInfoCopyWithImpl<_VoteInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoteInfo&&(identical(other.action, action) || other.action == action)&&(identical(other.vote, vote) || other.vote == vote));
}


@override
int get hashCode => Object.hash(runtimeType,action,vote);

@override
String toString() {
  return 'VoteInfo(action: $action, vote: $vote)';
}


}

/// @nodoc
abstract mixin class _$VoteInfoCopyWith<$Res> implements $VoteInfoCopyWith<$Res> {
  factory _$VoteInfoCopyWith(_VoteInfo value, $Res Function(_VoteInfo) _then) = __$VoteInfoCopyWithImpl;
@override @useResult
$Res call({
 GovActionId action, Vote vote
});


@override $GovActionIdCopyWith<$Res> get action;

}
/// @nodoc
class __$VoteInfoCopyWithImpl<$Res>
    implements _$VoteInfoCopyWith<$Res> {
  __$VoteInfoCopyWithImpl(this._self, this._then);

  final _VoteInfo _self;
  final $Res Function(_VoteInfo) _then;

/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? action = null,Object? vote = null,}) {
  return _then(_VoteInfo(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as GovActionId,vote: null == vote ? _self.vote : vote // ignore: cast_nullable_to_non_nullable
as Vote,
  ));
}

/// Create a copy of VoteInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get action {
  
  return $GovActionIdCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}

// dart format on
