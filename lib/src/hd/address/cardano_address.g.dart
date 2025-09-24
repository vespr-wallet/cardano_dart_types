// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardano_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardanoAddressByron _$CardanoAddressByronFromJson(Map json) =>
    CardanoAddressByron(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CardanoAddressByronToJson(
  CardanoAddressByron instance,
) => <String, dynamic>{
  'bytes': byteListConverter.toJson(instance.bytes),
  'runtimeType': instance.$type,
};

CardanoAddressPointer _$CardanoAddressPointerFromJson(Map json) =>
    CardanoAddressPointer(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CardanoAddressPointerToJson(
  CardanoAddressPointer instance,
) => <String, dynamic>{
  'bytes': byteListConverter.toJson(instance.bytes),
  'runtimeType': instance.$type,
};

CardanoAddressBase _$CardanoAddressBaseFromJson(Map json) => CardanoAddressBase(
  bytes: byteListConverter.fromJson(json['bytes'] as List),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$CardanoAddressBaseToJson(CardanoAddressBase instance) =>
    <String, dynamic>{
      'bytes': byteListConverter.toJson(instance.bytes),
      'runtimeType': instance.$type,
    };

CardanoAddressEnterprise _$CardanoAddressEnterpriseFromJson(Map json) =>
    CardanoAddressEnterprise(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CardanoAddressEnterpriseToJson(
  CardanoAddressEnterprise instance,
) => <String, dynamic>{
  'bytes': byteListConverter.toJson(instance.bytes),
  'runtimeType': instance.$type,
};

CardanoAddressReward _$CardanoAddressRewardFromJson(Map json) =>
    CardanoAddressReward(
      bytes: byteListConverter.fromJson(json['bytes'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CardanoAddressRewardToJson(
  CardanoAddressReward instance,
) => <String, dynamic>{
  'bytes': byteListConverter.toJson(instance.bytes),
  'runtimeType': instance.$type,
};
