// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressInfo_Byron _$AddressInfo_ByronFromJson(Map json) => AddressInfo_Byron(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AddressInfo_ByronToJson(AddressInfo_Byron instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

AddressInfo_Shelley _$AddressInfo_ShelleyFromJson(Map json) =>
    AddressInfo_Shelley(
      isEnterprise: json['isEnterprise'] as bool,
      isScript: json['isScript'] as bool,
      network: $enumDecode(_$NetworkIdEnumMap, json['network']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AddressInfo_ShelleyToJson(
        AddressInfo_Shelley instance) =>
    <String, dynamic>{
      'isEnterprise': instance.isEnterprise,
      'isScript': instance.isScript,
      'network': _$NetworkIdEnumMap[instance.network]!,
      'runtimeType': instance.$type,
    };

const _$NetworkIdEnumMap = {
  NetworkId.testnet: 'testnet',
  NetworkId.mainnet: 'mainnet',
};

AddressInfo_Invalid _$AddressInfo_InvalidFromJson(Map json) =>
    AddressInfo_Invalid(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AddressInfo_InvalidToJson(
        AddressInfo_Invalid instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

AddressInfo_NotAnAddress _$AddressInfo_NotAnAddressFromJson(Map json) =>
    AddressInfo_NotAnAddress(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AddressInfo_NotAnAddressToJson(
        AddressInfo_NotAnAddress instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

StakeAddressInfo_Valid _$StakeAddressInfo_ValidFromJson(Map json) =>
    StakeAddressInfo_Valid(
      isScript: json['isScript'] as bool,
      network: $enumDecode(_$NetworkIdEnumMap, json['network']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StakeAddressInfo_ValidToJson(
        StakeAddressInfo_Valid instance) =>
    <String, dynamic>{
      'isScript': instance.isScript,
      'network': _$NetworkIdEnumMap[instance.network]!,
      'runtimeType': instance.$type,
    };

StakeAddressInfo_NotAnAddress _$StakeAddressInfo_NotAnAddressFromJson(
        Map json) =>
    StakeAddressInfo_NotAnAddress(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StakeAddressInfo_NotAnAddressToJson(
        StakeAddressInfo_NotAnAddress instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
