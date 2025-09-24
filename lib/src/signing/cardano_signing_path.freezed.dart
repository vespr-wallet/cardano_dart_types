// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_signing_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardanoSigningPath {

 List<int> get signingPath;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath&&const DeepCollectionEquality().equals(other.signingPath, signingPath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(signingPath));

@override
String toString() {
  return 'CardanoSigningPath(signingPath: $signingPath)';
}


}

/// @nodoc
class $CardanoSigningPathCopyWith<$Res>  {
$CardanoSigningPathCopyWith(CardanoSigningPath _, $Res Function(CardanoSigningPath) __);
}



/// @nodoc


class CardanoSigningPath_Byron extends CardanoSigningPath {
   CardanoSigningPath_Byron({required this.account, required this.address}): super._();
  

 final  int account;
 final  int address;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoSigningPath_ByronCopyWith<CardanoSigningPath_Byron> get copyWith => _$CardanoSigningPath_ByronCopyWithImpl<CardanoSigningPath_Byron>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath_Byron&&(identical(other.account, account) || other.account == account)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,account,address);

@override
String toString() {
  return 'CardanoSigningPath.byron(account: $account, address: $address)';
}


}

/// @nodoc
abstract mixin class $CardanoSigningPath_ByronCopyWith<$Res> implements $CardanoSigningPathCopyWith<$Res> {
  factory $CardanoSigningPath_ByronCopyWith(CardanoSigningPath_Byron value, $Res Function(CardanoSigningPath_Byron) _then) = _$CardanoSigningPath_ByronCopyWithImpl;
@useResult
$Res call({
 int account, int address
});




}
/// @nodoc
class _$CardanoSigningPath_ByronCopyWithImpl<$Res>
    implements $CardanoSigningPath_ByronCopyWith<$Res> {
  _$CardanoSigningPath_ByronCopyWithImpl(this._self, this._then);

  final CardanoSigningPath_Byron _self;
  final $Res Function(CardanoSigningPath_Byron) _then;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = null,Object? address = null,}) {
  return _then(CardanoSigningPath_Byron(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CardanoSigningPath_Shelley extends CardanoSigningPath {
   CardanoSigningPath_Shelley({required this.account, required this.address, required this.role}): super._();
  

 final  int account;
 final  int address;
 final  Bip32KeyRole role;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoSigningPath_ShelleyCopyWith<CardanoSigningPath_Shelley> get copyWith => _$CardanoSigningPath_ShelleyCopyWithImpl<CardanoSigningPath_Shelley>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath_Shelley&&(identical(other.account, account) || other.account == account)&&(identical(other.address, address) || other.address == address)&&(identical(other.role, role) || other.role == role));
}


@override
int get hashCode => Object.hash(runtimeType,account,address,role);

@override
String toString() {
  return 'CardanoSigningPath.shelley(account: $account, address: $address, role: $role)';
}


}

/// @nodoc
abstract mixin class $CardanoSigningPath_ShelleyCopyWith<$Res> implements $CardanoSigningPathCopyWith<$Res> {
  factory $CardanoSigningPath_ShelleyCopyWith(CardanoSigningPath_Shelley value, $Res Function(CardanoSigningPath_Shelley) _then) = _$CardanoSigningPath_ShelleyCopyWithImpl;
@useResult
$Res call({
 int account, int address, Bip32KeyRole role
});




}
/// @nodoc
class _$CardanoSigningPath_ShelleyCopyWithImpl<$Res>
    implements $CardanoSigningPath_ShelleyCopyWith<$Res> {
  _$CardanoSigningPath_ShelleyCopyWithImpl(this._self, this._then);

  final CardanoSigningPath_Shelley _self;
  final $Res Function(CardanoSigningPath_Shelley) _then;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = null,Object? address = null,Object? role = null,}) {
  return _then(CardanoSigningPath_Shelley(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Bip32KeyRole,
  ));
}


}

/// @nodoc


class CardanoSigningPath_CIP36 extends CardanoSigningPath {
   CardanoSigningPath_CIP36({required this.account, required this.address}): super._();
  

 final  int account;
 final  int address;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoSigningPath_CIP36CopyWith<CardanoSigningPath_CIP36> get copyWith => _$CardanoSigningPath_CIP36CopyWithImpl<CardanoSigningPath_CIP36>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath_CIP36&&(identical(other.account, account) || other.account == account)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,account,address);

@override
String toString() {
  return 'CardanoSigningPath.cip36(account: $account, address: $address)';
}


}

/// @nodoc
abstract mixin class $CardanoSigningPath_CIP36CopyWith<$Res> implements $CardanoSigningPathCopyWith<$Res> {
  factory $CardanoSigningPath_CIP36CopyWith(CardanoSigningPath_CIP36 value, $Res Function(CardanoSigningPath_CIP36) _then) = _$CardanoSigningPath_CIP36CopyWithImpl;
@useResult
$Res call({
 int account, int address
});




}
/// @nodoc
class _$CardanoSigningPath_CIP36CopyWithImpl<$Res>
    implements $CardanoSigningPath_CIP36CopyWith<$Res> {
  _$CardanoSigningPath_CIP36CopyWithImpl(this._self, this._then);

  final CardanoSigningPath_CIP36 _self;
  final $Res Function(CardanoSigningPath_CIP36) _then;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = null,Object? address = null,}) {
  return _then(CardanoSigningPath_CIP36(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CardanoSigningPath_Custom extends CardanoSigningPath {
   CardanoSigningPath_Custom({required final  List<int> path}): _path = path,super._();
  

 final  List<int> _path;
 List<int> get path {
  if (_path is EqualUnmodifiableListView) return _path;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_path);
}


/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoSigningPath_CustomCopyWith<CardanoSigningPath_Custom> get copyWith => _$CardanoSigningPath_CustomCopyWithImpl<CardanoSigningPath_Custom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath_Custom&&const DeepCollectionEquality().equals(other._path, _path));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_path));

@override
String toString() {
  return 'CardanoSigningPath.custom(path: $path)';
}


}

/// @nodoc
abstract mixin class $CardanoSigningPath_CustomCopyWith<$Res> implements $CardanoSigningPathCopyWith<$Res> {
  factory $CardanoSigningPath_CustomCopyWith(CardanoSigningPath_Custom value, $Res Function(CardanoSigningPath_Custom) _then) = _$CardanoSigningPath_CustomCopyWithImpl;
@useResult
$Res call({
 List<int> path
});




}
/// @nodoc
class _$CardanoSigningPath_CustomCopyWithImpl<$Res>
    implements $CardanoSigningPath_CustomCopyWith<$Res> {
  _$CardanoSigningPath_CustomCopyWithImpl(this._self, this._then);

  final CardanoSigningPath_Custom _self;
  final $Res Function(CardanoSigningPath_Custom) _then;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(CardanoSigningPath_Custom(
path: null == path ? _self._path : path // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
