// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voting_procedure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VotingProcedure {

 Vote get vote => throw _privateConstructorUsedError; Anchor? get anchor => throw _privateConstructorUsedError;







/// Create a copy of VotingProcedure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$VotingProcedureCopyWith<VotingProcedure> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $VotingProcedureCopyWith<$Res>  {
  factory $VotingProcedureCopyWith(VotingProcedure value, $Res Function(VotingProcedure) then) = _$VotingProcedureCopyWithImpl<$Res, VotingProcedure>;
@useResult
$Res call({
 Vote vote, Anchor? anchor
});


$AnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$VotingProcedureCopyWithImpl<$Res,$Val extends VotingProcedure> implements $VotingProcedureCopyWith<$Res> {
  _$VotingProcedureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of VotingProcedure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vote = null,Object? anchor = freezed,}) {
  return _then(_value.copyWith(
vote: null == vote ? _value.vote : vote // ignore: cast_nullable_to_non_nullable
as Vote,anchor: freezed == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as Anchor?,
  )as $Val);
}
/// Create a copy of VotingProcedure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnchorCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
    return null;
  }

  return $AnchorCopyWith<$Res>(_value.anchor!, (value) {
    return _then(_value.copyWith(anchor: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$VotingProcedureImplCopyWith<$Res> implements $VotingProcedureCopyWith<$Res> {
  factory _$$VotingProcedureImplCopyWith(_$VotingProcedureImpl value, $Res Function(_$VotingProcedureImpl) then) = __$$VotingProcedureImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Vote vote, Anchor? anchor
});


@override $AnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$VotingProcedureImplCopyWithImpl<$Res> extends _$VotingProcedureCopyWithImpl<$Res, _$VotingProcedureImpl> implements _$$VotingProcedureImplCopyWith<$Res> {
  __$$VotingProcedureImplCopyWithImpl(_$VotingProcedureImpl _value, $Res Function(_$VotingProcedureImpl) _then)
      : super(_value, _then);


/// Create a copy of VotingProcedure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vote = null,Object? anchor = freezed,}) {
  return _then(_$VotingProcedureImpl(
vote: null == vote ? _value.vote : vote // ignore: cast_nullable_to_non_nullable
as Vote,anchor: freezed == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as Anchor?,
  ));
}


}

/// @nodoc


class _$VotingProcedureImpl extends _VotingProcedure  {
  const _$VotingProcedureImpl({required this.vote, required this.anchor}): super._();

  

@override final  Vote vote;
@override final  Anchor? anchor;

@override
String toString() {
  return 'VotingProcedure(vote: $vote, anchor: $anchor)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$VotingProcedureImpl&&(identical(other.vote, vote) || other.vote == vote)&&(identical(other.anchor, anchor) || other.anchor == anchor));
}


@override
int get hashCode => Object.hash(runtimeType,vote,anchor);

/// Create a copy of VotingProcedure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$VotingProcedureImplCopyWith<_$VotingProcedureImpl> get copyWith => __$$VotingProcedureImplCopyWithImpl<_$VotingProcedureImpl>(this, _$identity);








}


abstract class _VotingProcedure extends VotingProcedure {
  const factory _VotingProcedure({required final  Vote vote, required final  Anchor? anchor}) = _$VotingProcedureImpl;
  const _VotingProcedure._(): super._();

  

@override Vote get vote;@override Anchor? get anchor;
/// Create a copy of VotingProcedure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$VotingProcedureImplCopyWith<_$VotingProcedureImpl> get copyWith => throw _privateConstructorUsedError;

}
