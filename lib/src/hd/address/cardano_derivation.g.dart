// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardano_derivation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardanoDerivedAddress _$CardanoDerivedAddressFromJson(Map json) =>
    CardanoDerivedAddress(
      type: $enumDecode(_$AddressTypeEnumMap, json['type']),
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CardanoDerivedAddressToJson(
        CardanoDerivedAddress instance) =>
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

CardanoDerivedDRep _$CardanoDerivedDRepFromJson(Map json) => CardanoDerivedDRep(
      value: DRepDerivation.fromJson(
          Map<String, dynamic>.from(json['value'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CardanoDerivedDRepToJson(CardanoDerivedDRep instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

CardanoDerivedConstitutionalCommittee
    _$CardanoDerivedConstitutionalCommitteeFromJson(Map json) =>
        CardanoDerivedConstitutionalCommittee(
          value: ConstitutionalCommitee.fromJson(
              Map<String, dynamic>.from(json['value'] as Map)),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$CardanoDerivedConstitutionalCommitteeToJson(
        CardanoDerivedConstitutionalCommittee instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_DRepDerivation _$DRepDerivationFromJson(Map json) => _DRepDerivation(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
    );

Map<String, dynamic> _$DRepDerivationToJson(_DRepDerivation instance) =>
    <String, dynamic>{
      'bytes': byteListConverter.toJson(instance.bytes),
    };

ConstitutionalCommiteeCold _$ConstitutionalCommiteeColdFromJson(Map json) =>
    ConstitutionalCommiteeCold(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ConstitutionalCommiteeColdToJson(
        ConstitutionalCommiteeCold instance) =>
    <String, dynamic>{
      'bytes': byteListConverter.toJson(instance.bytes),
      'runtimeType': instance.$type,
    };

ConstitutionalCommiteeHot _$ConstitutionalCommiteeHotFromJson(Map json) =>
    ConstitutionalCommiteeHot(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ConstitutionalCommiteeHotToJson(
        ConstitutionalCommiteeHot instance) =>
    <String, dynamic>{
      'bytes': byteListConverter.toJson(instance.bytes),
      'runtimeType': instance.$type,
    };
