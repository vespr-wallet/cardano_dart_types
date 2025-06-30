// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DataSignature _$DataSignatureFromJson(Map json) => _DataSignature(
      coseKeyHex: json['key'] as String,
      coseSignHex: json['signature'] as String,
    );

Map<String, dynamic> _$DataSignatureToJson(_DataSignature instance) =>
    <String, dynamic>{
      'key': instance.coseKeyHex,
      'signature': instance.coseSignHex,
    };
