// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constitution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Constitution {
  Anchor get anchor;
  String? get scriptHash;

  /// Create a copy of Constitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConstitutionCopyWith<Constitution> get copyWith =>
      _$ConstitutionCopyWithImpl<Constitution>(
          this as Constitution, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Constitution &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.scriptHash, scriptHash) ||
                other.scriptHash == scriptHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, anchor, scriptHash);

  @override
  String toString() {
    return 'Constitution(anchor: $anchor, scriptHash: $scriptHash)';
  }
}

/// @nodoc
abstract mixin class $ConstitutionCopyWith<$Res> {
  factory $ConstitutionCopyWith(
          Constitution value, $Res Function(Constitution) _then) =
      _$ConstitutionCopyWithImpl;
  @useResult
  $Res call({Anchor anchor, String? scriptHash});

  $AnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class _$ConstitutionCopyWithImpl<$Res> implements $ConstitutionCopyWith<$Res> {
  _$ConstitutionCopyWithImpl(this._self, this._then);

  final Constitution _self;
  final $Res Function(Constitution) _then;

  /// Create a copy of Constitution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anchor = null,
    Object? scriptHash = freezed,
  }) {
    return _then(_self.copyWith(
      anchor: null == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor,
      scriptHash: freezed == scriptHash
          ? _self.scriptHash
          : scriptHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Constitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnchorCopyWith<$Res> get anchor {
    return $AnchorCopyWith<$Res>(_self.anchor, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class _Constitution extends Constitution {
  const _Constitution({required this.anchor, required this.scriptHash})
      : super._();

  @override
  final Anchor anchor;
  @override
  final String? scriptHash;

  /// Create a copy of Constitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConstitutionCopyWith<_Constitution> get copyWith =>
      __$ConstitutionCopyWithImpl<_Constitution>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Constitution &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.scriptHash, scriptHash) ||
                other.scriptHash == scriptHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, anchor, scriptHash);

  @override
  String toString() {
    return 'Constitution(anchor: $anchor, scriptHash: $scriptHash)';
  }
}

/// @nodoc
abstract mixin class _$ConstitutionCopyWith<$Res>
    implements $ConstitutionCopyWith<$Res> {
  factory _$ConstitutionCopyWith(
          _Constitution value, $Res Function(_Constitution) _then) =
      __$ConstitutionCopyWithImpl;
  @override
  @useResult
  $Res call({Anchor anchor, String? scriptHash});

  @override
  $AnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class __$ConstitutionCopyWithImpl<$Res>
    implements _$ConstitutionCopyWith<$Res> {
  __$ConstitutionCopyWithImpl(this._self, this._then);

  final _Constitution _self;
  final $Res Function(_Constitution) _then;

  /// Create a copy of Constitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? anchor = null,
    Object? scriptHash = freezed,
  }) {
    return _then(_Constitution(
      anchor: null == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as Anchor,
      scriptHash: freezed == scriptHash
          ? _self.scriptHash
          : scriptHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Constitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnchorCopyWith<$Res> get anchor {
    return $AnchorCopyWith<$Res>(_self.anchor, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

// dart format on
