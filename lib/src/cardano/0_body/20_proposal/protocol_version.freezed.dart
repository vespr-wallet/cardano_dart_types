// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProtocolVersion {
  int get major;
  int get minor;

  /// Create a copy of ProtocolVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProtocolVersionCopyWith<ProtocolVersion> get copyWith =>
      _$ProtocolVersionCopyWithImpl<ProtocolVersion>(
          this as ProtocolVersion, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProtocolVersion &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, major, minor);

  @override
  String toString() {
    return 'ProtocolVersion(major: $major, minor: $minor)';
  }
}

/// @nodoc
abstract mixin class $ProtocolVersionCopyWith<$Res> {
  factory $ProtocolVersionCopyWith(
          ProtocolVersion value, $Res Function(ProtocolVersion) _then) =
      _$ProtocolVersionCopyWithImpl;
  @useResult
  $Res call({int major, int minor});
}

/// @nodoc
class _$ProtocolVersionCopyWithImpl<$Res>
    implements $ProtocolVersionCopyWith<$Res> {
  _$ProtocolVersionCopyWithImpl(this._self, this._then);

  final ProtocolVersion _self;
  final $Res Function(ProtocolVersion) _then;

  /// Create a copy of ProtocolVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
  }) {
    return _then(_self.copyWith(
      major: null == major
          ? _self.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _self.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _ProtocolVersion extends ProtocolVersion {
  const _ProtocolVersion({required this.major, required this.minor})
      : super._();

  @override
  final int major;
  @override
  final int minor;

  /// Create a copy of ProtocolVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProtocolVersionCopyWith<_ProtocolVersion> get copyWith =>
      __$ProtocolVersionCopyWithImpl<_ProtocolVersion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProtocolVersion &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, major, minor);

  @override
  String toString() {
    return 'ProtocolVersion(major: $major, minor: $minor)';
  }
}

/// @nodoc
abstract mixin class _$ProtocolVersionCopyWith<$Res>
    implements $ProtocolVersionCopyWith<$Res> {
  factory _$ProtocolVersionCopyWith(
          _ProtocolVersion value, $Res Function(_ProtocolVersion) _then) =
      __$ProtocolVersionCopyWithImpl;
  @override
  @useResult
  $Res call({int major, int minor});
}

/// @nodoc
class __$ProtocolVersionCopyWithImpl<$Res>
    implements _$ProtocolVersionCopyWith<$Res> {
  __$ProtocolVersionCopyWithImpl(this._self, this._then);

  final _ProtocolVersion _self;
  final $Res Function(_ProtocolVersion) _then;

  /// Create a copy of ProtocolVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? major = null,
    Object? minor = null,
  }) {
    return _then(_ProtocolVersion(
      major: null == major
          ? _self.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _self.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
