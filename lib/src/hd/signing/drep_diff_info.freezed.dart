// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drep_diff_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DRepDiffInfo {

 String get dRepId => throw _privateConstructorUsedError;// bech32 id
 String? get metadataUrl => throw _privateConstructorUsedError;








}









/// @nodoc


class _$DRepDiffInfoImpl extends _DRepDiffInfo  {
  const _$DRepDiffInfoImpl({required this.dRepId, required this.metadataUrl}): super._();

  

@override final  String dRepId;
// bech32 id
@override final  String? metadataUrl;

@override
String toString() {
  return 'DRepDiffInfo(dRepId: $dRepId, metadataUrl: $metadataUrl)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DRepDiffInfoImpl&&(identical(other.dRepId, dRepId) || other.dRepId == dRepId)&&(identical(other.metadataUrl, metadataUrl) || other.metadataUrl == metadataUrl));
}


@override
int get hashCode => Object.hash(runtimeType,dRepId,metadataUrl);









}


abstract class _DRepDiffInfo extends DRepDiffInfo {
  const factory _DRepDiffInfo({required final  String dRepId, required final  String? metadataUrl}) = _$DRepDiffInfoImpl;
  const _DRepDiffInfo._(): super._();

  

@override String get dRepId;// bech32 id
@override String? get metadataUrl;

}
