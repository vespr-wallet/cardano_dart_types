// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voting_procedures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VotingProcedures {

 Map<Voter, Map<GovActionId, VotingProcedure>> get voting; CborLengthType get lengthType;/// Length type of each voter's inner `{gov_action_id => voting_procedure}` map. Voters missing
/// from this map (e.g. added via copyWith) are encoded with definite length.
 Map<Voter, CborLengthType> get votesLengthTypes;
/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VotingProceduresCopyWith<VotingProcedures> get copyWith => _$VotingProceduresCopyWithImpl<VotingProcedures>(this as VotingProcedures, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VotingProcedures&&const DeepCollectionEquality().equals(other.voting, voting)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other.votesLengthTypes, votesLengthTypes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(voting),lengthType,const DeepCollectionEquality().hash(votesLengthTypes));

@override
String toString() {
  return 'VotingProcedures(voting: $voting, lengthType: $lengthType, votesLengthTypes: $votesLengthTypes)';
}


}

/// @nodoc
abstract mixin class $VotingProceduresCopyWith<$Res>  {
  factory $VotingProceduresCopyWith(VotingProcedures value, $Res Function(VotingProcedures) _then) = _$VotingProceduresCopyWithImpl;
@useResult
$Res call({
 Map<Voter, Map<GovActionId, VotingProcedure>> voting, CborLengthType lengthType, Map<Voter, CborLengthType> votesLengthTypes
});




}
/// @nodoc
class _$VotingProceduresCopyWithImpl<$Res>
    implements $VotingProceduresCopyWith<$Res> {
  _$VotingProceduresCopyWithImpl(this._self, this._then);

  final VotingProcedures _self;
  final $Res Function(VotingProcedures) _then;

/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voting = null,Object? lengthType = null,Object? votesLengthTypes = null,}) {
  return _then(_self.copyWith(
voting: null == voting ? _self.voting : voting // ignore: cast_nullable_to_non_nullable
as Map<Voter, Map<GovActionId, VotingProcedure>>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,votesLengthTypes: null == votesLengthTypes ? _self.votesLengthTypes : votesLengthTypes // ignore: cast_nullable_to_non_nullable
as Map<Voter, CborLengthType>,
  ));
}

}



/// @nodoc


class _VotingProcedures extends VotingProcedures {
  const _VotingProcedures({required final  Map<Voter, Map<GovActionId, VotingProcedure>> voting, this.lengthType = CborLengthType.definite, final  Map<Voter, CborLengthType> votesLengthTypes = const <Voter, CborLengthType>{}}): _voting = voting,_votesLengthTypes = votesLengthTypes,super._();
  

 final  Map<Voter, Map<GovActionId, VotingProcedure>> _voting;
@override Map<Voter, Map<GovActionId, VotingProcedure>> get voting {
  if (_voting is EqualUnmodifiableMapView) return _voting;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_voting);
}

@override@JsonKey() final  CborLengthType lengthType;
/// Length type of each voter's inner `{gov_action_id => voting_procedure}` map. Voters missing
/// from this map (e.g. added via copyWith) are encoded with definite length.
 final  Map<Voter, CborLengthType> _votesLengthTypes;
/// Length type of each voter's inner `{gov_action_id => voting_procedure}` map. Voters missing
/// from this map (e.g. added via copyWith) are encoded with definite length.
@override@JsonKey() Map<Voter, CborLengthType> get votesLengthTypes {
  if (_votesLengthTypes is EqualUnmodifiableMapView) return _votesLengthTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_votesLengthTypes);
}


/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VotingProceduresCopyWith<_VotingProcedures> get copyWith => __$VotingProceduresCopyWithImpl<_VotingProcedures>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VotingProcedures&&const DeepCollectionEquality().equals(other._voting, _voting)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&const DeepCollectionEquality().equals(other._votesLengthTypes, _votesLengthTypes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_voting),lengthType,const DeepCollectionEquality().hash(_votesLengthTypes));

@override
String toString() {
  return 'VotingProcedures(voting: $voting, lengthType: $lengthType, votesLengthTypes: $votesLengthTypes)';
}


}

/// @nodoc
abstract mixin class _$VotingProceduresCopyWith<$Res> implements $VotingProceduresCopyWith<$Res> {
  factory _$VotingProceduresCopyWith(_VotingProcedures value, $Res Function(_VotingProcedures) _then) = __$VotingProceduresCopyWithImpl;
@override @useResult
$Res call({
 Map<Voter, Map<GovActionId, VotingProcedure>> voting, CborLengthType lengthType, Map<Voter, CborLengthType> votesLengthTypes
});




}
/// @nodoc
class __$VotingProceduresCopyWithImpl<$Res>
    implements _$VotingProceduresCopyWith<$Res> {
  __$VotingProceduresCopyWithImpl(this._self, this._then);

  final _VotingProcedures _self;
  final $Res Function(_VotingProcedures) _then;

/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? voting = null,Object? lengthType = null,Object? votesLengthTypes = null,}) {
  return _then(_VotingProcedures(
voting: null == voting ? _self._voting : voting // ignore: cast_nullable_to_non_nullable
as Map<Voter, Map<GovActionId, VotingProcedure>>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,votesLengthTypes: null == votesLengthTypes ? _self._votesLengthTypes : votesLengthTypes // ignore: cast_nullable_to_non_nullable
as Map<Voter, CborLengthType>,
  ));
}


}

// dart format on
