// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Credential {

 CredType get type => throw _privateConstructorUsedError; Uint8List get vKeyHash => throw _privateConstructorUsedError;







/// Create a copy of Credential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CredentialCopyWith<Credential> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CredentialCopyWith<$Res>  {
  factory $CredentialCopyWith(Credential value, $Res Function(Credential) then) = _$CredentialCopyWithImpl<$Res, Credential>;
@useResult
$Res call({
 CredType type, Uint8List vKeyHash
});



}

/// @nodoc
class _$CredentialCopyWithImpl<$Res,$Val extends Credential> implements $CredentialCopyWith<$Res> {
  _$CredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Credential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? vKeyHash = null,}) {
  return _then(_value.copyWith(
type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as CredType,vKeyHash: null == vKeyHash ? _value.vKeyHash : vKeyHash // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CredentialImplCopyWith<$Res> implements $CredentialCopyWith<$Res> {
  factory _$$CredentialImplCopyWith(_$CredentialImpl value, $Res Function(_$CredentialImpl) then) = __$$CredentialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CredType type, Uint8List vKeyHash
});



}

/// @nodoc
class __$$CredentialImplCopyWithImpl<$Res> extends _$CredentialCopyWithImpl<$Res, _$CredentialImpl> implements _$$CredentialImplCopyWith<$Res> {
  __$$CredentialImplCopyWithImpl(_$CredentialImpl _value, $Res Function(_$CredentialImpl) _then)
      : super(_value, _then);


/// Create a copy of Credential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? vKeyHash = null,}) {
  return _then(_$CredentialImpl(
null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as CredType,null == vKeyHash ? _value.vKeyHash : vKeyHash // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$CredentialImpl extends _Credential  {
  const _$CredentialImpl(this.type, this.vKeyHash): super._();

  

@override final  CredType type;
@override final  Uint8List vKeyHash;

@override
String toString() {
  return 'Credential(type: $type, vKeyHash: $vKeyHash)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CredentialImpl&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.vKeyHash, vKeyHash));
}


@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(vKeyHash));

/// Create a copy of Credential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CredentialImplCopyWith<_$CredentialImpl> get copyWith => __$$CredentialImplCopyWithImpl<_$CredentialImpl>(this, _$identity);








}


abstract class _Credential extends Credential {
  const factory _Credential(final  CredType type, final  Uint8List vKeyHash) = _$CredentialImpl;
  const _Credential._(): super._();

  

@override CredType get type;@override Uint8List get vKeyHash;
/// Create a copy of Credential
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CredentialImplCopyWith<_$CredentialImpl> get copyWith => throw _privateConstructorUsedError;

}
