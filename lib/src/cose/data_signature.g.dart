// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataSignatureImpl _$$DataSignatureImplFromJson(Map json) =>
    _$DataSignatureImpl(
      coseKeyHex: json['key'] as String,
      coseSignHex: json['signature'] as String,
    );

Map<String, dynamic> _$$DataSignatureImplToJson(_$DataSignatureImpl instance) =>
    <String, dynamic>{
      'key': instance.coseKeyHex,
      'signature': instance.coseSignHex,
    };
