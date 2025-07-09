// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drep_diff_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DRepDiffInfo {
  String get dRepId; // bech32 id
  String? get metadataUrl;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DRepDiffInfo &&
            (identical(other.dRepId, dRepId) || other.dRepId == dRepId) &&
            (identical(other.metadataUrl, metadataUrl) ||
                other.metadataUrl == metadataUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepId, metadataUrl);

  @override
  String toString() {
    return 'DRepDiffInfo(dRepId: $dRepId, metadataUrl: $metadataUrl)';
  }
}

/// @nodoc

class _DRepDiffInfo extends DRepDiffInfo {
  const _DRepDiffInfo({required this.dRepId, required this.metadataUrl})
      : super._();

  @override
  final String dRepId;
// bech32 id
  @override
  final String? metadataUrl;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DRepDiffInfo &&
            (identical(other.dRepId, dRepId) || other.dRepId == dRepId) &&
            (identical(other.metadataUrl, metadataUrl) ||
                other.metadataUrl == metadataUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepId, metadataUrl);

  @override
  String toString() {
    return 'DRepDiffInfo(dRepId: $dRepId, metadataUrl: $metadataUrl)';
  }
}

// dart format on
