// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_diff_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProposalDiffInfo {

 GovActionId get proposalId => throw _privateConstructorUsedError; GovAction get proposal => throw _privateConstructorUsedError;







/// Create a copy of ProposalDiffInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ProposalDiffInfoCopyWith<ProposalDiffInfo> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ProposalDiffInfoCopyWith<$Res>  {
  factory $ProposalDiffInfoCopyWith(ProposalDiffInfo value, $Res Function(ProposalDiffInfo) then) = _$ProposalDiffInfoCopyWithImpl<$Res, ProposalDiffInfo>;
@useResult
$Res call({
 GovActionId proposalId, GovAction proposal
});


$GovActionIdCopyWith<$Res> get proposalId;$GovActionCopyWith<$Res> get proposal;
}

/// @nodoc
class _$ProposalDiffInfoCopyWithImpl<$Res,$Val extends ProposalDiffInfo> implements $ProposalDiffInfoCopyWith<$Res> {
  _$ProposalDiffInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ProposalDiffInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? proposalId = null,Object? proposal = null,}) {
  return _then(_value.copyWith(
proposalId: null == proposalId ? _value.proposalId : proposalId // ignore: cast_nullable_to_non_nullable
as GovActionId,proposal: null == proposal ? _value.proposal : proposal // ignore: cast_nullable_to_non_nullable
as GovAction,
  )as $Val);
}
/// Create a copy of ProposalDiffInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionIdCopyWith<$Res> get proposalId {
  
  return $GovActionIdCopyWith<$Res>(_value.proposalId, (value) {
    return _then(_value.copyWith(proposalId: value) as $Val);
  });
}/// Create a copy of ProposalDiffInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionCopyWith<$Res> get proposal {
  
  return $GovActionCopyWith<$Res>(_value.proposal, (value) {
    return _then(_value.copyWith(proposal: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ProposalDiffInfoImplCopyWith<$Res> implements $ProposalDiffInfoCopyWith<$Res> {
  factory _$$ProposalDiffInfoImplCopyWith(_$ProposalDiffInfoImpl value, $Res Function(_$ProposalDiffInfoImpl) then) = __$$ProposalDiffInfoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 GovActionId proposalId, GovAction proposal
});


@override $GovActionIdCopyWith<$Res> get proposalId;@override $GovActionCopyWith<$Res> get proposal;
}

/// @nodoc
class __$$ProposalDiffInfoImplCopyWithImpl<$Res> extends _$ProposalDiffInfoCopyWithImpl<$Res, _$ProposalDiffInfoImpl> implements _$$ProposalDiffInfoImplCopyWith<$Res> {
  __$$ProposalDiffInfoImplCopyWithImpl(_$ProposalDiffInfoImpl _value, $Res Function(_$ProposalDiffInfoImpl) _then)
      : super(_value, _then);


/// Create a copy of ProposalDiffInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? proposalId = null,Object? proposal = null,}) {
  return _then(_$ProposalDiffInfoImpl(
proposalId: null == proposalId ? _value.proposalId : proposalId // ignore: cast_nullable_to_non_nullable
as GovActionId,proposal: null == proposal ? _value.proposal : proposal // ignore: cast_nullable_to_non_nullable
as GovAction,
  ));
}


}

/// @nodoc


class _$ProposalDiffInfoImpl extends _ProposalDiffInfo  {
  const _$ProposalDiffInfoImpl({required this.proposalId, required this.proposal}): super._();

  

@override final  GovActionId proposalId;
@override final  GovAction proposal;

@override
String toString() {
  return 'ProposalDiffInfo(proposalId: $proposalId, proposal: $proposal)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ProposalDiffInfoImpl&&(identical(other.proposalId, proposalId) || other.proposalId == proposalId)&&(identical(other.proposal, proposal) || other.proposal == proposal));
}


@override
int get hashCode => Object.hash(runtimeType,proposalId,proposal);

/// Create a copy of ProposalDiffInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ProposalDiffInfoImplCopyWith<_$ProposalDiffInfoImpl> get copyWith => __$$ProposalDiffInfoImplCopyWithImpl<_$ProposalDiffInfoImpl>(this, _$identity);








}


abstract class _ProposalDiffInfo extends ProposalDiffInfo {
  const factory _ProposalDiffInfo({required final  GovActionId proposalId, required final  GovAction proposal}) = _$ProposalDiffInfoImpl;
  const _ProposalDiffInfo._(): super._();

  

@override GovActionId get proposalId;@override GovAction get proposal;
/// Create a copy of ProposalDiffInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ProposalDiffInfoImplCopyWith<_$ProposalDiffInfoImpl> get copyWith => throw _privateConstructorUsedError;

}
