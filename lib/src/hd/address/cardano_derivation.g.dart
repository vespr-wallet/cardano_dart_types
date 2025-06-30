// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardano_derivation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardanoDerivedAddressImpl _$$CardanoDerivedAddressImplFromJson(Map json) =>
    _$CardanoDerivedAddressImpl(
      type: $enumDecode(_$AddressTypeEnumMap, json['type']),
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardanoDerivedAddressImplToJson(
        _$CardanoDerivedAddressImpl instance) =>
    <String, dynamic>{
      'type': _$AddressTypeEnumMap[instance.type]!,
      'bytes': byteListConverter.toJson(instance.bytes),
      'runtimeType': instance.$type,
    };

const _$AddressTypeEnumMap = {
  AddressType.base: 'base',
  AddressType.pointer: 'pointer',
  AddressType.enterprise: 'enterprise',
  AddressType.reward: 'reward',
  AddressType.byron: 'byron',
};

_$CardanoDerivedDRepImpl _$$CardanoDerivedDRepImplFromJson(Map json) =>
    _$CardanoDerivedDRepImpl(
      value: DRepDerivation.fromJson(
          Map<String, dynamic>.from(json['value'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardanoDerivedDRepImplToJson(
        _$CardanoDerivedDRepImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$CardanoDerivedConstitutionalCommitteeImpl
    _$$CardanoDerivedConstitutionalCommitteeImplFromJson(Map json) =>
        _$CardanoDerivedConstitutionalCommitteeImpl(
          value: ConstitutionalCommitee.fromJson(
              Map<String, dynamic>.from(json['value'] as Map)),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$CardanoDerivedConstitutionalCommitteeImplToJson(
        _$CardanoDerivedConstitutionalCommitteeImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$DRepDerivationImpl _$$DRepDerivationImplFromJson(Map json) =>
    _$DRepDerivationImpl(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
    );

Map<String, dynamic> _$$DRepDerivationImplToJson(
        _$DRepDerivationImpl instance) =>
    <String, dynamic>{
      'bytes': byteListConverter.toJson(instance.bytes),
    };

_$ConstitutionalCommiteeColdImpl _$$ConstitutionalCommiteeColdImplFromJson(
        Map json) =>
    _$ConstitutionalCommiteeColdImpl(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConstitutionalCommiteeColdImplToJson(
        _$ConstitutionalCommiteeColdImpl instance) =>
    <String, dynamic>{
      'bytes': byteListConverter.toJson(instance.bytes),
      'runtimeType': instance.$type,
    };

_$ConstitutionalCommiteeHotImpl _$$ConstitutionalCommiteeHotImplFromJson(
        Map json) =>
    _$ConstitutionalCommiteeHotImpl(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConstitutionalCommiteeHotImplToJson(
        _$ConstitutionalCommiteeHotImpl instance) =>
    <String, dynamic>{
      'bytes': byteListConverter.toJson(instance.bytes),
      'runtimeType': instance.$type,
    };
