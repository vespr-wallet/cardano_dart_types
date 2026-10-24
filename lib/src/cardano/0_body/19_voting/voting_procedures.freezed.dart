// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voting_procedures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VotingProcedures {

 Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType,)> get voting; CborLengthType get lengthType;
/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VotingProceduresCopyWith<VotingProcedures> get copyWith => _$VotingProceduresCopyWithImpl<VotingProcedures>(this as VotingProcedures, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as VotingProcedures;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VotingProcedures&&const DeepCollectionEquality().equals(other.voting, _this.voting)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType));
}


@override
int get hashCode {
  final _this = this as VotingProcedures;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.voting),_this.lengthType);
}

@override
String toString() {
  final _this = this as VotingProcedures;
  return 'VotingProcedures(voting: ${_this.voting}, lengthType: ${_this.lengthType})';
}


}

/// @nodoc
abstract mixin class $VotingProceduresCopyWith<$Res>  {
  factory $VotingProceduresCopyWith(VotingProcedures value, $Res Function(VotingProcedures) _then) = _$VotingProceduresCopyWithImpl;
@useResult
$Res call({
 Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType,)> voting, CborLengthType lengthType
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
@pragma('vm:prefer-inline') @override $Res call({Object? voting = null,Object? lengthType = null,}) {
  return _then(VotingProcedures(
voting: null == voting ? _self.voting : voting // ignore: cast_nullable_to_non_nullable
as Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType,)>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _VotingProcedures extends VotingProcedures {
  const _VotingProcedures({required  Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType,)> voting, this.lengthType = CborLengthType.definite}): _voting = voting,super._();
  

 final  Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType,)> _voting;
@override Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType,)> get voting {
  if (_voting is EqualUnmodifiableMapView) return _voting;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_voting);
}

@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VotingProceduresCopyWith<_VotingProcedures> get copyWith => __$VotingProceduresCopyWithImpl<_VotingProcedures>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VotingProcedures&&const DeepCollectionEquality().equals(other.voting, _voting)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_voting),lengthType);
}

@override
String toString() {
    return 'VotingProcedures(voting: $voting, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class _$VotingProceduresCopyWith<$Res> implements $VotingProceduresCopyWith<$Res> {
  factory _$VotingProceduresCopyWith(_VotingProcedures value, $Res Function(_VotingProcedures) _then) = __$VotingProceduresCopyWithImpl;
@override @useResult
$Res call({
 Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType,)> voting, CborLengthType lengthType
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
@override @pragma('vm:prefer-inline') $Res call({Object? voting = null,Object? lengthType = null,}) {
  return _then(_VotingProcedures(
voting: null == voting ? _self._voting : voting // ignore: cast_nullable_to_non_nullable
as Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType,)>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
