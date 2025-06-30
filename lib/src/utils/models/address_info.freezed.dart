// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) {
        switch (json['runtimeType']) {
                  case 'byron':
          return AddressInfo_Byron.fromJson(json);
                case 'shelley':
          return AddressInfo_Shelley.fromJson(json);
                case 'invalid':
          return AddressInfo_Invalid.fromJson(json);
                case 'notAnAddress':
          return AddressInfo_NotAnAddress.fromJson(json);
        
          default:
            throw CheckedFromJsonException(json, 'runtimeType', 'AddressInfo', 'Invalid union type "${json['runtimeType']}"!');
        }
      
}

/// @nodoc
mixin _$AddressInfo {








/// Serializes this AddressInfo to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $AddressInfoCopyWith<$Res>  {
  factory $AddressInfoCopyWith(AddressInfo value, $Res Function(AddressInfo) then) = _$AddressInfoCopyWithImpl<$Res, AddressInfo>;



}

/// @nodoc
class _$AddressInfoCopyWithImpl<$Res,$Val extends AddressInfo> implements $AddressInfoCopyWith<$Res> {
  _$AddressInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$AddressInfo_ByronImplCopyWith<$Res>  {
  factory _$$AddressInfo_ByronImplCopyWith(_$AddressInfo_ByronImpl value, $Res Function(_$AddressInfo_ByronImpl) then) = __$$AddressInfo_ByronImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$AddressInfo_ByronImplCopyWithImpl<$Res> extends _$AddressInfoCopyWithImpl<$Res, _$AddressInfo_ByronImpl> implements _$$AddressInfo_ByronImplCopyWith<$Res> {
  __$$AddressInfo_ByronImplCopyWithImpl(_$AddressInfo_ByronImpl _value, $Res Function(_$AddressInfo_ByronImpl) _then)
      : super(_value, _then);


/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc
@JsonSerializable()

class _$AddressInfo_ByronImpl extends AddressInfo_Byron  {
  const _$AddressInfo_ByronImpl({final  String? $type}): $type = $type ?? 'byron',super._();

  factory _$AddressInfo_ByronImpl.fromJson(Map<String, dynamic> json) => _$$AddressInfo_ByronImplFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'AddressInfo.byron()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddressInfo_ByronImpl);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;








@override
Map<String, dynamic> toJson() {
  return _$$AddressInfo_ByronImplToJson(this, );
}
}


abstract class AddressInfo_Byron extends AddressInfo {
  const factory AddressInfo_Byron() = _$AddressInfo_ByronImpl;
  const AddressInfo_Byron._(): super._();

  factory AddressInfo_Byron.fromJson(Map<String, dynamic> json) = _$AddressInfo_ByronImpl.fromJson;



}

/// @nodoc
abstract class _$$AddressInfo_ShelleyImplCopyWith<$Res>  {
  factory _$$AddressInfo_ShelleyImplCopyWith(_$AddressInfo_ShelleyImpl value, $Res Function(_$AddressInfo_ShelleyImpl) then) = __$$AddressInfo_ShelleyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 bool isEnterprise, bool isScript, NetworkId network
});



}

/// @nodoc
class __$$AddressInfo_ShelleyImplCopyWithImpl<$Res> extends _$AddressInfoCopyWithImpl<$Res, _$AddressInfo_ShelleyImpl> implements _$$AddressInfo_ShelleyImplCopyWith<$Res> {
  __$$AddressInfo_ShelleyImplCopyWithImpl(_$AddressInfo_ShelleyImpl _value, $Res Function(_$AddressInfo_ShelleyImpl) _then)
      : super(_value, _then);


/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isEnterprise = null,Object? isScript = null,Object? network = null,}) {
  return _then(_$AddressInfo_ShelleyImpl(
isEnterprise: null == isEnterprise ? _value.isEnterprise : isEnterprise // ignore: cast_nullable_to_non_nullable
as bool,isScript: null == isScript ? _value.isScript : isScript // ignore: cast_nullable_to_non_nullable
as bool,network: null == network ? _value.network : network // ignore: cast_nullable_to_non_nullable
as NetworkId,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$AddressInfo_ShelleyImpl extends AddressInfo_Shelley  {
  const _$AddressInfo_ShelleyImpl({required this.isEnterprise, required this.isScript, required this.network, final  String? $type}): $type = $type ?? 'shelley',super._();

  factory _$AddressInfo_ShelleyImpl.fromJson(Map<String, dynamic> json) => _$$AddressInfo_ShelleyImplFromJson(json);

@override final  bool isEnterprise;
@override final  bool isScript;
@override final  NetworkId network;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'AddressInfo.shelley(isEnterprise: $isEnterprise, isScript: $isScript, network: $network)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddressInfo_ShelleyImpl&&(identical(other.isEnterprise, isEnterprise) || other.isEnterprise == isEnterprise)&&(identical(other.isScript, isScript) || other.isScript == isScript)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isEnterprise,isScript,network);

/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$AddressInfo_ShelleyImplCopyWith<_$AddressInfo_ShelleyImpl> get copyWith => __$$AddressInfo_ShelleyImplCopyWithImpl<_$AddressInfo_ShelleyImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$AddressInfo_ShelleyImplToJson(this, );
}
}


abstract class AddressInfo_Shelley extends AddressInfo {
  const factory AddressInfo_Shelley({required final  bool isEnterprise, required final  bool isScript, required final  NetworkId network}) = _$AddressInfo_ShelleyImpl;
  const AddressInfo_Shelley._(): super._();

  factory AddressInfo_Shelley.fromJson(Map<String, dynamic> json) = _$AddressInfo_ShelleyImpl.fromJson;

 bool get isEnterprise; bool get isScript; NetworkId get network;
/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$AddressInfo_ShelleyImplCopyWith<_$AddressInfo_ShelleyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AddressInfo_InvalidImplCopyWith<$Res>  {
  factory _$$AddressInfo_InvalidImplCopyWith(_$AddressInfo_InvalidImpl value, $Res Function(_$AddressInfo_InvalidImpl) then) = __$$AddressInfo_InvalidImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$AddressInfo_InvalidImplCopyWithImpl<$Res> extends _$AddressInfoCopyWithImpl<$Res, _$AddressInfo_InvalidImpl> implements _$$AddressInfo_InvalidImplCopyWith<$Res> {
  __$$AddressInfo_InvalidImplCopyWithImpl(_$AddressInfo_InvalidImpl _value, $Res Function(_$AddressInfo_InvalidImpl) _then)
      : super(_value, _then);


/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc
@JsonSerializable()

class _$AddressInfo_InvalidImpl extends AddressInfo_Invalid  {
  const _$AddressInfo_InvalidImpl({final  String? $type}): $type = $type ?? 'invalid',super._();

  factory _$AddressInfo_InvalidImpl.fromJson(Map<String, dynamic> json) => _$$AddressInfo_InvalidImplFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'AddressInfo.invalid()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddressInfo_InvalidImpl);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;








@override
Map<String, dynamic> toJson() {
  return _$$AddressInfo_InvalidImplToJson(this, );
}
}


abstract class AddressInfo_Invalid extends AddressInfo {
  const factory AddressInfo_Invalid() = _$AddressInfo_InvalidImpl;
  const AddressInfo_Invalid._(): super._();

  factory AddressInfo_Invalid.fromJson(Map<String, dynamic> json) = _$AddressInfo_InvalidImpl.fromJson;



}

/// @nodoc
abstract class _$$AddressInfo_NotAnAddressImplCopyWith<$Res>  {
  factory _$$AddressInfo_NotAnAddressImplCopyWith(_$AddressInfo_NotAnAddressImpl value, $Res Function(_$AddressInfo_NotAnAddressImpl) then) = __$$AddressInfo_NotAnAddressImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$AddressInfo_NotAnAddressImplCopyWithImpl<$Res> extends _$AddressInfoCopyWithImpl<$Res, _$AddressInfo_NotAnAddressImpl> implements _$$AddressInfo_NotAnAddressImplCopyWith<$Res> {
  __$$AddressInfo_NotAnAddressImplCopyWithImpl(_$AddressInfo_NotAnAddressImpl _value, $Res Function(_$AddressInfo_NotAnAddressImpl) _then)
      : super(_value, _then);


/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc
@JsonSerializable()

class _$AddressInfo_NotAnAddressImpl extends AddressInfo_NotAnAddress  {
  const _$AddressInfo_NotAnAddressImpl({final  String? $type}): $type = $type ?? 'notAnAddress',super._();

  factory _$AddressInfo_NotAnAddressImpl.fromJson(Map<String, dynamic> json) => _$$AddressInfo_NotAnAddressImplFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'AddressInfo.notAnAddress()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddressInfo_NotAnAddressImpl);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;








@override
Map<String, dynamic> toJson() {
  return _$$AddressInfo_NotAnAddressImplToJson(this, );
}
}


abstract class AddressInfo_NotAnAddress extends AddressInfo {
  const factory AddressInfo_NotAnAddress() = _$AddressInfo_NotAnAddressImpl;
  const AddressInfo_NotAnAddress._(): super._();

  factory AddressInfo_NotAnAddress.fromJson(Map<String, dynamic> json) = _$AddressInfo_NotAnAddressImpl.fromJson;



}

StakeAddressInfo _$StakeAddressInfoFromJson(Map<String, dynamic> json) {
        switch (json['runtimeType']) {
                  case 'valid':
          return StakeAddressInfo_Valid.fromJson(json);
                case 'notAnAddress':
          return StakeAddressInfo_NotAnAddress.fromJson(json);
        
          default:
            throw CheckedFromJsonException(json, 'runtimeType', 'StakeAddressInfo', 'Invalid union type "${json['runtimeType']}"!');
        }
      
}

/// @nodoc
mixin _$StakeAddressInfo {








/// Serializes this StakeAddressInfo to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $StakeAddressInfoCopyWith<$Res>  {
  factory $StakeAddressInfoCopyWith(StakeAddressInfo value, $Res Function(StakeAddressInfo) then) = _$StakeAddressInfoCopyWithImpl<$Res, StakeAddressInfo>;



}

/// @nodoc
class _$StakeAddressInfoCopyWithImpl<$Res,$Val extends StakeAddressInfo> implements $StakeAddressInfoCopyWith<$Res> {
  _$StakeAddressInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of StakeAddressInfo
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StakeAddressInfo_ValidImplCopyWith<$Res>  {
  factory _$$StakeAddressInfo_ValidImplCopyWith(_$StakeAddressInfo_ValidImpl value, $Res Function(_$StakeAddressInfo_ValidImpl) then) = __$$StakeAddressInfo_ValidImplCopyWithImpl<$Res>;
@useResult
$Res call({
 bool isScript, NetworkId network
});



}

/// @nodoc
class __$$StakeAddressInfo_ValidImplCopyWithImpl<$Res> extends _$StakeAddressInfoCopyWithImpl<$Res, _$StakeAddressInfo_ValidImpl> implements _$$StakeAddressInfo_ValidImplCopyWith<$Res> {
  __$$StakeAddressInfo_ValidImplCopyWithImpl(_$StakeAddressInfo_ValidImpl _value, $Res Function(_$StakeAddressInfo_ValidImpl) _then)
      : super(_value, _then);


/// Create a copy of StakeAddressInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isScript = null,Object? network = null,}) {
  return _then(_$StakeAddressInfo_ValidImpl(
isScript: null == isScript ? _value.isScript : isScript // ignore: cast_nullable_to_non_nullable
as bool,network: null == network ? _value.network : network // ignore: cast_nullable_to_non_nullable
as NetworkId,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$StakeAddressInfo_ValidImpl extends StakeAddressInfo_Valid  {
  const _$StakeAddressInfo_ValidImpl({required this.isScript, required this.network, final  String? $type}): $type = $type ?? 'valid',super._();

  factory _$StakeAddressInfo_ValidImpl.fromJson(Map<String, dynamic> json) => _$$StakeAddressInfo_ValidImplFromJson(json);

@override final  bool isScript;
@override final  NetworkId network;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'StakeAddressInfo.valid(isScript: $isScript, network: $network)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakeAddressInfo_ValidImpl&&(identical(other.isScript, isScript) || other.isScript == isScript)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isScript,network);

/// Create a copy of StakeAddressInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakeAddressInfo_ValidImplCopyWith<_$StakeAddressInfo_ValidImpl> get copyWith => __$$StakeAddressInfo_ValidImplCopyWithImpl<_$StakeAddressInfo_ValidImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$StakeAddressInfo_ValidImplToJson(this, );
}
}


abstract class StakeAddressInfo_Valid extends StakeAddressInfo {
  const factory StakeAddressInfo_Valid({required final  bool isScript, required final  NetworkId network}) = _$StakeAddressInfo_ValidImpl;
  const StakeAddressInfo_Valid._(): super._();

  factory StakeAddressInfo_Valid.fromJson(Map<String, dynamic> json) = _$StakeAddressInfo_ValidImpl.fromJson;

 bool get isScript; NetworkId get network;
/// Create a copy of StakeAddressInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StakeAddressInfo_ValidImplCopyWith<_$StakeAddressInfo_ValidImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakeAddressInfo_NotAnAddressImplCopyWith<$Res>  {
  factory _$$StakeAddressInfo_NotAnAddressImplCopyWith(_$StakeAddressInfo_NotAnAddressImpl value, $Res Function(_$StakeAddressInfo_NotAnAddressImpl) then) = __$$StakeAddressInfo_NotAnAddressImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StakeAddressInfo_NotAnAddressImplCopyWithImpl<$Res> extends _$StakeAddressInfoCopyWithImpl<$Res, _$StakeAddressInfo_NotAnAddressImpl> implements _$$StakeAddressInfo_NotAnAddressImplCopyWith<$Res> {
  __$$StakeAddressInfo_NotAnAddressImplCopyWithImpl(_$StakeAddressInfo_NotAnAddressImpl _value, $Res Function(_$StakeAddressInfo_NotAnAddressImpl) _then)
      : super(_value, _then);


/// Create a copy of StakeAddressInfo
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc
@JsonSerializable()

class _$StakeAddressInfo_NotAnAddressImpl extends StakeAddressInfo_NotAnAddress  {
  const _$StakeAddressInfo_NotAnAddressImpl({final  String? $type}): $type = $type ?? 'notAnAddress',super._();

  factory _$StakeAddressInfo_NotAnAddressImpl.fromJson(Map<String, dynamic> json) => _$$StakeAddressInfo_NotAnAddressImplFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'StakeAddressInfo.notAnAddress()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakeAddressInfo_NotAnAddressImpl);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;








@override
Map<String, dynamic> toJson() {
  return _$$StakeAddressInfo_NotAnAddressImplToJson(this, );
}
}


abstract class StakeAddressInfo_NotAnAddress extends StakeAddressInfo {
  const factory StakeAddressInfo_NotAnAddress() = _$StakeAddressInfo_NotAnAddressImpl;
  const StakeAddressInfo_NotAnAddress._(): super._();

  factory StakeAddressInfo_NotAnAddress.fromJson(Map<String, dynamic> json) = _$StakeAddressInfo_NotAnAddressImpl.fromJson;



}
