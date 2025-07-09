// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Credential {
  CredType get type;
  Uint8List get vKeyHash;

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<Credential> get copyWith =>
      _$CredentialCopyWithImpl<Credential>(this as Credential, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Credential &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.vKeyHash, vKeyHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(vKeyHash));

  @override
  String toString() {
    return 'Credential(type: $type, vKeyHash: $vKeyHash)';
  }
}

/// @nodoc
abstract mixin class $CredentialCopyWith<$Res> {
  factory $CredentialCopyWith(
          Credential value, $Res Function(Credential) _then) =
      _$CredentialCopyWithImpl;
  @useResult
  $Res call({CredType type, Uint8List vKeyHash});
}

/// @nodoc
class _$CredentialCopyWithImpl<$Res> implements $CredentialCopyWith<$Res> {
  _$CredentialCopyWithImpl(this._self, this._then);

  final Credential _self;
  final $Res Function(Credential) _then;

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? vKeyHash = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as CredType,
      vKeyHash: null == vKeyHash
          ? _self.vKeyHash
          : vKeyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _Credential extends Credential {
  const _Credential(this.type, this.vKeyHash) : super._();

  @override
  final CredType type;
  @override
  final Uint8List vKeyHash;

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CredentialCopyWith<_Credential> get copyWith =>
      __$CredentialCopyWithImpl<_Credential>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Credential &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.vKeyHash, vKeyHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(vKeyHash));

  @override
  String toString() {
    return 'Credential(type: $type, vKeyHash: $vKeyHash)';
  }
}

/// @nodoc
abstract mixin class _$CredentialCopyWith<$Res>
    implements $CredentialCopyWith<$Res> {
  factory _$CredentialCopyWith(
          _Credential value, $Res Function(_Credential) _then) =
      __$CredentialCopyWithImpl;
  @override
  @useResult
  $Res call({CredType type, Uint8List vKeyHash});
}

/// @nodoc
class __$CredentialCopyWithImpl<$Res> implements _$CredentialCopyWith<$Res> {
  __$CredentialCopyWithImpl(this._self, this._then);

  final _Credential _self;
  final $Res Function(_Credential) _then;

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? vKeyHash = null,
  }) {
    return _then(_Credential(
      null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as CredType,
      null == vKeyHash
          ? _self.vKeyHash
          : vKeyHash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

// dart format on
