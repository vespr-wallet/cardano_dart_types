// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voting_procedures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VotingProcedures {

 Map<Voter, Map<GovActionId, VotingProcedure>> get voting => throw _privateConstructorUsedError;







/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$VotingProceduresCopyWith<VotingProcedures> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $VotingProceduresCopyWith<$Res>  {
  factory $VotingProceduresCopyWith(VotingProcedures value, $Res Function(VotingProcedures) then) = _$VotingProceduresCopyWithImpl<$Res, VotingProcedures>;
@useResult
$Res call({
 Map<Voter, Map<GovActionId, VotingProcedure>> voting
});



}

/// @nodoc
class _$VotingProceduresCopyWithImpl<$Res,$Val extends VotingProcedures> implements $VotingProceduresCopyWith<$Res> {
  _$VotingProceduresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voting = null,}) {
  return _then(_value.copyWith(
voting: null == voting ? _value.voting : voting // ignore: cast_nullable_to_non_nullable
as Map<Voter, Map<GovActionId, VotingProcedure>>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$VotingProceduresImplCopyWith<$Res> implements $VotingProceduresCopyWith<$Res> {
  factory _$$VotingProceduresImplCopyWith(_$VotingProceduresImpl value, $Res Function(_$VotingProceduresImpl) then) = __$$VotingProceduresImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Map<Voter, Map<GovActionId, VotingProcedure>> voting
});



}

/// @nodoc
class __$$VotingProceduresImplCopyWithImpl<$Res> extends _$VotingProceduresCopyWithImpl<$Res, _$VotingProceduresImpl> implements _$$VotingProceduresImplCopyWith<$Res> {
  __$$VotingProceduresImplCopyWithImpl(_$VotingProceduresImpl _value, $Res Function(_$VotingProceduresImpl) _then)
      : super(_value, _then);


/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voting = null,}) {
  return _then(_$VotingProceduresImpl(
voting: null == voting ? _value._voting : voting // ignore: cast_nullable_to_non_nullable
as Map<Voter, Map<GovActionId, VotingProcedure>>,
  ));
}


}

/// @nodoc


class _$VotingProceduresImpl extends _VotingProcedures  {
  const _$VotingProceduresImpl({required final  Map<Voter, Map<GovActionId, VotingProcedure>> voting}): _voting = voting,super._();

  

 final  Map<Voter, Map<GovActionId, VotingProcedure>> _voting;
@override Map<Voter, Map<GovActionId, VotingProcedure>> get voting {
  if (_voting is EqualUnmodifiableMapView) return _voting;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_voting);
}


@override
String toString() {
  return 'VotingProcedures(voting: $voting)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$VotingProceduresImpl&&const DeepCollectionEquality().equals(other._voting, _voting));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_voting));

/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$VotingProceduresImplCopyWith<_$VotingProceduresImpl> get copyWith => __$$VotingProceduresImplCopyWithImpl<_$VotingProceduresImpl>(this, _$identity);








}


abstract class _VotingProcedures extends VotingProcedures {
  const factory _VotingProcedures({required final  Map<Voter, Map<GovActionId, VotingProcedure>> voting}) = _$VotingProceduresImpl;
  const _VotingProcedures._(): super._();

  

@override Map<Voter, Map<GovActionId, VotingProcedure>> get voting;
/// Create a copy of VotingProcedures
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$VotingProceduresImplCopyWith<_$VotingProceduresImpl> get copyWith => throw _privateConstructorUsedError;

}
