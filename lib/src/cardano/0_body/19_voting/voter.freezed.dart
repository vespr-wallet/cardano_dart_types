// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Voter {

 VoterType get voterType => throw _privateConstructorUsedError; Uint8List get vKeyHash => throw _privateConstructorUsedError;







/// Create a copy of Voter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$VoterCopyWith<Voter> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $VoterCopyWith<$Res>  {
  factory $VoterCopyWith(Voter value, $Res Function(Voter) then) = _$VoterCopyWithImpl<$Res, Voter>;
@useResult
$Res call({
 VoterType voterType, Uint8List vKeyHash
});



}

/// @nodoc
class _$VoterCopyWithImpl<$Res,$Val extends Voter> implements $VoterCopyWith<$Res> {
  _$VoterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Voter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voterType = null,Object? vKeyHash = null,}) {
  return _then(_value.copyWith(
voterType: null == voterType ? _value.voterType : voterType // ignore: cast_nullable_to_non_nullable
as VoterType,vKeyHash: null == vKeyHash ? _value.vKeyHash : vKeyHash // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$VoterImplCopyWith<$Res> implements $VoterCopyWith<$Res> {
  factory _$$VoterImplCopyWith(_$VoterImpl value, $Res Function(_$VoterImpl) then) = __$$VoterImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 VoterType voterType, Uint8List vKeyHash
});



}

/// @nodoc
class __$$VoterImplCopyWithImpl<$Res> extends _$VoterCopyWithImpl<$Res, _$VoterImpl> implements _$$VoterImplCopyWith<$Res> {
  __$$VoterImplCopyWithImpl(_$VoterImpl _value, $Res Function(_$VoterImpl) _then)
      : super(_value, _then);


/// Create a copy of Voter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voterType = null,Object? vKeyHash = null,}) {
  return _then(_$VoterImpl(
voterType: null == voterType ? _value.voterType : voterType // ignore: cast_nullable_to_non_nullable
as VoterType,vKeyHash: null == vKeyHash ? _value.vKeyHash : vKeyHash // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$VoterImpl extends _Voter  {
  const _$VoterImpl({required this.voterType, required this.vKeyHash}): super._();

  

@override final  VoterType voterType;
@override final  Uint8List vKeyHash;

@override
String toString() {
  return 'Voter(voterType: $voterType, vKeyHash: $vKeyHash)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$VoterImpl&&(identical(other.voterType, voterType) || other.voterType == voterType)&&const DeepCollectionEquality().equals(other.vKeyHash, vKeyHash));
}


@override
int get hashCode => Object.hash(runtimeType,voterType,const DeepCollectionEquality().hash(vKeyHash));

/// Create a copy of Voter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$VoterImplCopyWith<_$VoterImpl> get copyWith => __$$VoterImplCopyWithImpl<_$VoterImpl>(this, _$identity);








}


abstract class _Voter extends Voter {
  const factory _Voter({required final  VoterType voterType, required final  Uint8List vKeyHash}) = _$VoterImpl;
  const _Voter._(): super._();

  

@override VoterType get voterType;@override Uint8List get vKeyHash;
/// Create a copy of Voter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$VoterImplCopyWith<_$VoterImpl> get copyWith => throw _privateConstructorUsedError;

}
