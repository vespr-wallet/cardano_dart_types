// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AddressInfo _$AddressInfoFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'byron':
          return AddressInfo_Byron.fromJson(
            json
          );
                case 'shelley':
          return AddressInfo_Shelley.fromJson(
            json
          );
                case 'invalid':
          return AddressInfo_Invalid.fromJson(
            json
          );
                case 'notAnAddress':
          return AddressInfo_NotAnAddress.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'AddressInfo',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$AddressInfo {



  /// Serializes this AddressInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressInfo);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressInfo()';
}


}

/// @nodoc
class $AddressInfoCopyWith<$Res>  {
$AddressInfoCopyWith(AddressInfo _, $Res Function(AddressInfo) __);
}



/// @nodoc
@JsonSerializable()

class AddressInfo_Byron extends AddressInfo {
  const AddressInfo_Byron({final  String? $type}): $type = $type ?? 'byron',super._();
  factory AddressInfo_Byron.fromJson(Map<String, dynamic> json) => _$AddressInfo_ByronFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AddressInfo_ByronToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressInfo_Byron);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressInfo.byron()';
}


}




/// @nodoc
@JsonSerializable()

class AddressInfo_Shelley extends AddressInfo {
  const AddressInfo_Shelley({required this.isEnterprise, required this.isScript, required this.network, final  String? $type}): $type = $type ?? 'shelley',super._();
  factory AddressInfo_Shelley.fromJson(Map<String, dynamic> json) => _$AddressInfo_ShelleyFromJson(json);

 final  bool isEnterprise;
 final  bool isScript;
 final  NetworkId network;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressInfo_ShelleyCopyWith<AddressInfo_Shelley> get copyWith => _$AddressInfo_ShelleyCopyWithImpl<AddressInfo_Shelley>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressInfo_ShelleyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressInfo_Shelley&&(identical(other.isEnterprise, isEnterprise) || other.isEnterprise == isEnterprise)&&(identical(other.isScript, isScript) || other.isScript == isScript)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isEnterprise,isScript,network);

@override
String toString() {
  return 'AddressInfo.shelley(isEnterprise: $isEnterprise, isScript: $isScript, network: $network)';
}


}

/// @nodoc
abstract mixin class $AddressInfo_ShelleyCopyWith<$Res> implements $AddressInfoCopyWith<$Res> {
  factory $AddressInfo_ShelleyCopyWith(AddressInfo_Shelley value, $Res Function(AddressInfo_Shelley) _then) = _$AddressInfo_ShelleyCopyWithImpl;
@useResult
$Res call({
 bool isEnterprise, bool isScript, NetworkId network
});




}
/// @nodoc
class _$AddressInfo_ShelleyCopyWithImpl<$Res>
    implements $AddressInfo_ShelleyCopyWith<$Res> {
  _$AddressInfo_ShelleyCopyWithImpl(this._self, this._then);

  final AddressInfo_Shelley _self;
  final $Res Function(AddressInfo_Shelley) _then;

/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isEnterprise = null,Object? isScript = null,Object? network = null,}) {
  return _then(AddressInfo_Shelley(
isEnterprise: null == isEnterprise ? _self.isEnterprise : isEnterprise // ignore: cast_nullable_to_non_nullable
as bool,isScript: null == isScript ? _self.isScript : isScript // ignore: cast_nullable_to_non_nullable
as bool,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as NetworkId,
  ));
}


}

/// @nodoc
@JsonSerializable()

class AddressInfo_Invalid extends AddressInfo {
  const AddressInfo_Invalid({final  String? $type}): $type = $type ?? 'invalid',super._();
  factory AddressInfo_Invalid.fromJson(Map<String, dynamic> json) => _$AddressInfo_InvalidFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AddressInfo_InvalidToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressInfo_Invalid);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressInfo.invalid()';
}


}




/// @nodoc
@JsonSerializable()

class AddressInfo_NotAnAddress extends AddressInfo {
  const AddressInfo_NotAnAddress({final  String? $type}): $type = $type ?? 'notAnAddress',super._();
  factory AddressInfo_NotAnAddress.fromJson(Map<String, dynamic> json) => _$AddressInfo_NotAnAddressFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AddressInfo_NotAnAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressInfo_NotAnAddress);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressInfo.notAnAddress()';
}


}




StakeAddressInfo _$StakeAddressInfoFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'valid':
          return StakeAddressInfo_Valid.fromJson(
            json
          );
                case 'notAnAddress':
          return StakeAddressInfo_NotAnAddress.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'StakeAddressInfo',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$StakeAddressInfo {



  /// Serializes this StakeAddressInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakeAddressInfo);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StakeAddressInfo()';
}


}

/// @nodoc
class $StakeAddressInfoCopyWith<$Res>  {
$StakeAddressInfoCopyWith(StakeAddressInfo _, $Res Function(StakeAddressInfo) __);
}



/// @nodoc
@JsonSerializable()

class StakeAddressInfo_Valid extends StakeAddressInfo {
  const StakeAddressInfo_Valid({required this.isScript, required this.network, final  String? $type}): $type = $type ?? 'valid',super._();
  factory StakeAddressInfo_Valid.fromJson(Map<String, dynamic> json) => _$StakeAddressInfo_ValidFromJson(json);

 final  bool isScript;
 final  NetworkId network;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of StakeAddressInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StakeAddressInfo_ValidCopyWith<StakeAddressInfo_Valid> get copyWith => _$StakeAddressInfo_ValidCopyWithImpl<StakeAddressInfo_Valid>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StakeAddressInfo_ValidToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakeAddressInfo_Valid&&(identical(other.isScript, isScript) || other.isScript == isScript)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isScript,network);

@override
String toString() {
  return 'StakeAddressInfo.valid(isScript: $isScript, network: $network)';
}


}

/// @nodoc
abstract mixin class $StakeAddressInfo_ValidCopyWith<$Res> implements $StakeAddressInfoCopyWith<$Res> {
  factory $StakeAddressInfo_ValidCopyWith(StakeAddressInfo_Valid value, $Res Function(StakeAddressInfo_Valid) _then) = _$StakeAddressInfo_ValidCopyWithImpl;
@useResult
$Res call({
 bool isScript, NetworkId network
});




}
/// @nodoc
class _$StakeAddressInfo_ValidCopyWithImpl<$Res>
    implements $StakeAddressInfo_ValidCopyWith<$Res> {
  _$StakeAddressInfo_ValidCopyWithImpl(this._self, this._then);

  final StakeAddressInfo_Valid _self;
  final $Res Function(StakeAddressInfo_Valid) _then;

/// Create a copy of StakeAddressInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isScript = null,Object? network = null,}) {
  return _then(StakeAddressInfo_Valid(
isScript: null == isScript ? _self.isScript : isScript // ignore: cast_nullable_to_non_nullable
as bool,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as NetworkId,
  ));
}


}

/// @nodoc
@JsonSerializable()

class StakeAddressInfo_NotAnAddress extends StakeAddressInfo {
  const StakeAddressInfo_NotAnAddress({final  String? $type}): $type = $type ?? 'notAnAddress',super._();
  factory StakeAddressInfo_NotAnAddress.fromJson(Map<String, dynamic> json) => _$StakeAddressInfo_NotAnAddressFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$StakeAddressInfo_NotAnAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakeAddressInfo_NotAnAddress);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StakeAddressInfo.notAnAddress()';
}


}




// dart format on
