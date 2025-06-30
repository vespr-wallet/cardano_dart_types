// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_procedure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProposalProcedure {

 CborInt get deposit => throw _privateConstructorUsedError; Uint8List get rewardAccount => throw _privateConstructorUsedError; GovAction get govAction => throw _privateConstructorUsedError; Anchor get anchor => throw _privateConstructorUsedError; CborLengthType get cborLengthType => throw _privateConstructorUsedError;







/// Create a copy of ProposalProcedure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ProposalProcedureCopyWith<ProposalProcedure> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ProposalProcedureCopyWith<$Res>  {
  factory $ProposalProcedureCopyWith(ProposalProcedure value, $Res Function(ProposalProcedure) then) = _$ProposalProcedureCopyWithImpl<$Res, ProposalProcedure>;
@useResult
$Res call({
 CborInt deposit, Uint8List rewardAccount, GovAction govAction, Anchor anchor, CborLengthType cborLengthType
});


$GovActionCopyWith<$Res> get govAction;$AnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class _$ProposalProcedureCopyWithImpl<$Res,$Val extends ProposalProcedure> implements $ProposalProcedureCopyWith<$Res> {
  _$ProposalProcedureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ProposalProcedure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deposit = null,Object? rewardAccount = null,Object? govAction = null,Object? anchor = null,Object? cborLengthType = null,}) {
  return _then(_value.copyWith(
deposit: null == deposit ? _value.deposit : deposit // ignore: cast_nullable_to_non_nullable
as CborInt,rewardAccount: null == rewardAccount ? _value.rewardAccount : rewardAccount // ignore: cast_nullable_to_non_nullable
as Uint8List,govAction: null == govAction ? _value.govAction : govAction // ignore: cast_nullable_to_non_nullable
as GovAction,anchor: null == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as Anchor,cborLengthType: null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  )as $Val);
}
/// Create a copy of ProposalProcedure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovActionCopyWith<$Res> get govAction {
  
  return $GovActionCopyWith<$Res>(_value.govAction, (value) {
    return _then(_value.copyWith(govAction: value) as $Val);
  });
}/// Create a copy of ProposalProcedure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnchorCopyWith<$Res> get anchor {
  
  return $AnchorCopyWith<$Res>(_value.anchor, (value) {
    return _then(_value.copyWith(anchor: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ProposalProcedureImplCopyWith<$Res> implements $ProposalProcedureCopyWith<$Res> {
  factory _$$ProposalProcedureImplCopyWith(_$ProposalProcedureImpl value, $Res Function(_$ProposalProcedureImpl) then) = __$$ProposalProcedureImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CborInt deposit, Uint8List rewardAccount, GovAction govAction, Anchor anchor, CborLengthType cborLengthType
});


@override $GovActionCopyWith<$Res> get govAction;@override $AnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class __$$ProposalProcedureImplCopyWithImpl<$Res> extends _$ProposalProcedureCopyWithImpl<$Res, _$ProposalProcedureImpl> implements _$$ProposalProcedureImplCopyWith<$Res> {
  __$$ProposalProcedureImplCopyWithImpl(_$ProposalProcedureImpl _value, $Res Function(_$ProposalProcedureImpl) _then)
      : super(_value, _then);


/// Create a copy of ProposalProcedure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deposit = null,Object? rewardAccount = null,Object? govAction = null,Object? anchor = null,Object? cborLengthType = null,}) {
  return _then(_$ProposalProcedureImpl(
deposit: null == deposit ? _value.deposit : deposit // ignore: cast_nullable_to_non_nullable
as CborInt,rewardAccount: null == rewardAccount ? _value.rewardAccount : rewardAccount // ignore: cast_nullable_to_non_nullable
as Uint8List,govAction: null == govAction ? _value.govAction : govAction // ignore: cast_nullable_to_non_nullable
as GovAction,anchor: null == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as Anchor,cborLengthType: null == cborLengthType ? _value.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

/// @nodoc


class _$ProposalProcedureImpl extends _ProposalProcedure  {
  const _$ProposalProcedureImpl({required this.deposit, required this.rewardAccount, required this.govAction, required this.anchor, this.cborLengthType = CborLengthType.auto}): super._();

  

@override final  CborInt deposit;
@override final  Uint8List rewardAccount;
@override final  GovAction govAction;
@override final  Anchor anchor;
@override@JsonKey() final  CborLengthType cborLengthType;

@override
String toString() {
  return 'ProposalProcedure(deposit: $deposit, rewardAccount: $rewardAccount, govAction: $govAction, anchor: $anchor, cborLengthType: $cborLengthType)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ProposalProcedureImpl&&(identical(other.deposit, deposit) || other.deposit == deposit)&&const DeepCollectionEquality().equals(other.rewardAccount, rewardAccount)&&(identical(other.govAction, govAction) || other.govAction == govAction)&&(identical(other.anchor, anchor) || other.anchor == anchor)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType));
}


@override
int get hashCode => Object.hash(runtimeType,deposit,const DeepCollectionEquality().hash(rewardAccount),govAction,anchor,cborLengthType);

/// Create a copy of ProposalProcedure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ProposalProcedureImplCopyWith<_$ProposalProcedureImpl> get copyWith => __$$ProposalProcedureImplCopyWithImpl<_$ProposalProcedureImpl>(this, _$identity);








}


abstract class _ProposalProcedure extends ProposalProcedure {
  const factory _ProposalProcedure({required final  CborInt deposit, required final  Uint8List rewardAccount, required final  GovAction govAction, required final  Anchor anchor, final  CborLengthType cborLengthType}) = _$ProposalProcedureImpl;
  const _ProposalProcedure._(): super._();

  

@override CborInt get deposit;@override Uint8List get rewardAccount;@override GovAction get govAction;@override Anchor get anchor;@override CborLengthType get cborLengthType;
/// Create a copy of ProposalProcedure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ProposalProcedureImplCopyWith<_$ProposalProcedureImpl> get copyWith => throw _privateConstructorUsedError;

}
