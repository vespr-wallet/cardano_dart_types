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

 int get address;
/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoSigningPathCopyWith<CardanoSigningPath> get copyWith => _$CardanoSigningPathCopyWithImpl<CardanoSigningPath>(this as CardanoSigningPath, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'CardanoSigningPath(address: $address)';
}


}

/// @nodoc
abstract mixin class $CardanoSigningPathCopyWith<$Res>  {
  factory $CardanoSigningPathCopyWith(CardanoSigningPath value, $Res Function(CardanoSigningPath) _then) = _$CardanoSigningPathCopyWithImpl;
@useResult
$Res call({
 int address
});




}
/// @nodoc
class _$CardanoSigningPathCopyWithImpl<$Res>
    implements $CardanoSigningPathCopyWith<$Res> {
  _$CardanoSigningPathCopyWithImpl(this._self, this._then);

  final CardanoSigningPath _self;
  final $Res Function(CardanoSigningPath) _then;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}



/// @nodoc


class CardanoSigningPath_Byron extends CardanoSigningPath {
   CardanoSigningPath_Byron({required this.address}): super._();
  

@override final  int address;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoSigningPath_ByronCopyWith<CardanoSigningPath_Byron> get copyWith => _$CardanoSigningPath_ByronCopyWithImpl<CardanoSigningPath_Byron>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath_Byron&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'CardanoSigningPath.byron(address: $address)';
}


}

/// @nodoc
abstract mixin class $CardanoSigningPath_ByronCopyWith<$Res> implements $CardanoSigningPathCopyWith<$Res> {
  factory $CardanoSigningPath_ByronCopyWith(CardanoSigningPath_Byron value, $Res Function(CardanoSigningPath_Byron) _then) = _$CardanoSigningPath_ByronCopyWithImpl;
@override @useResult
$Res call({
 int address
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
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(CardanoSigningPath_Byron(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CardanoSigningPath_Shelley extends CardanoSigningPath {
   CardanoSigningPath_Shelley({required this.address, required this.role}): super._();
  

@override final  int address;
 final  Bip32KeyRole role;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoSigningPath_ShelleyCopyWith<CardanoSigningPath_Shelley> get copyWith => _$CardanoSigningPath_ShelleyCopyWithImpl<CardanoSigningPath_Shelley>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath_Shelley&&(identical(other.address, address) || other.address == address)&&(identical(other.role, role) || other.role == role));
}


@override
int get hashCode => Object.hash(runtimeType,address,role);

@override
String toString() {
  return 'CardanoSigningPath.shelley(address: $address, role: $role)';
}


}

/// @nodoc
abstract mixin class $CardanoSigningPath_ShelleyCopyWith<$Res> implements $CardanoSigningPathCopyWith<$Res> {
  factory $CardanoSigningPath_ShelleyCopyWith(CardanoSigningPath_Shelley value, $Res Function(CardanoSigningPath_Shelley) _then) = _$CardanoSigningPath_ShelleyCopyWithImpl;
@override @useResult
$Res call({
 int address, Bip32KeyRole role
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
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? role = null,}) {
  return _then(CardanoSigningPath_Shelley(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Bip32KeyRole,
  ));
}


}

/// @nodoc


class CardanoSigningPath_CIP36 extends CardanoSigningPath {
   CardanoSigningPath_CIP36({required this.address}): super._();
  

@override final  int address;

/// Create a copy of CardanoSigningPath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoSigningPath_CIP36CopyWith<CardanoSigningPath_CIP36> get copyWith => _$CardanoSigningPath_CIP36CopyWithImpl<CardanoSigningPath_CIP36>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoSigningPath_CIP36&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'CardanoSigningPath.cip36(address: $address)';
}


}

/// @nodoc
abstract mixin class $CardanoSigningPath_CIP36CopyWith<$Res> implements $CardanoSigningPathCopyWith<$Res> {
  factory $CardanoSigningPath_CIP36CopyWith(CardanoSigningPath_CIP36 value, $Res Function(CardanoSigningPath_CIP36) _then) = _$CardanoSigningPath_CIP36CopyWithImpl;
@override @useResult
$Res call({
 int address
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
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(CardanoSigningPath_CIP36(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
