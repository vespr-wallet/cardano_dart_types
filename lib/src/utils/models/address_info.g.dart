// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressInfo_ByronImpl _$$AddressInfo_ByronImplFromJson(Map json) =>
    _$AddressInfo_ByronImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddressInfo_ByronImplToJson(
        _$AddressInfo_ByronImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AddressInfo_ShelleyImpl _$$AddressInfo_ShelleyImplFromJson(Map json) =>
    _$AddressInfo_ShelleyImpl(
      isEnterprise: json['isEnterprise'] as bool,
      isScript: json['isScript'] as bool,
      network: $enumDecode(_$NetworkIdEnumMap, json['network']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddressInfo_ShelleyImplToJson(
        _$AddressInfo_ShelleyImpl instance) =>
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

_$AddressInfo_InvalidImpl _$$AddressInfo_InvalidImplFromJson(Map json) =>
    _$AddressInfo_InvalidImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddressInfo_InvalidImplToJson(
        _$AddressInfo_InvalidImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AddressInfo_NotAnAddressImpl _$$AddressInfo_NotAnAddressImplFromJson(
        Map json) =>
    _$AddressInfo_NotAnAddressImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddressInfo_NotAnAddressImplToJson(
        _$AddressInfo_NotAnAddressImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$StakeAddressInfo_ValidImpl _$$StakeAddressInfo_ValidImplFromJson(Map json) =>
    _$StakeAddressInfo_ValidImpl(
      isScript: json['isScript'] as bool,
      network: $enumDecode(_$NetworkIdEnumMap, json['network']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StakeAddressInfo_ValidImplToJson(
        _$StakeAddressInfo_ValidImpl instance) =>
    <String, dynamic>{
      'isScript': instance.isScript,
      'network': _$NetworkIdEnumMap[instance.network]!,
      'runtimeType': instance.$type,
    };

_$StakeAddressInfo_NotAnAddressImpl
    _$$StakeAddressInfo_NotAnAddressImplFromJson(Map json) =>
        _$StakeAddressInfo_NotAnAddressImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$StakeAddressInfo_NotAnAddressImplToJson(
        _$StakeAddressInfo_NotAnAddressImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
