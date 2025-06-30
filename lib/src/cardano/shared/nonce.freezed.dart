// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nonce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Nonce {
  Uint8List? get nonceHash;

  /// Create a copy of Nonce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NonceCopyWith<Nonce> get copyWith =>
      _$NonceCopyWithImpl<Nonce>(this as Nonce, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Nonce &&
            const DeepCollectionEquality().equals(other.nonceHash, nonceHash));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nonceHash));

  @override
  String toString() {
    return 'Nonce(nonceHash: $nonceHash)';
  }
}

/// @nodoc
abstract mixin class $NonceCopyWith<$Res> {
  factory $NonceCopyWith(Nonce value, $Res Function(Nonce) _then) =
      _$NonceCopyWithImpl;
  @useResult
  $Res call({Uint8List? nonceHash});
}

/// @nodoc
class _$NonceCopyWithImpl<$Res> implements $NonceCopyWith<$Res> {
  _$NonceCopyWithImpl(this._self, this._then);

  final Nonce _self;
  final $Res Function(Nonce) _then;

  /// Create a copy of Nonce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonceHash = freezed,
  }) {
    return _then(_self.copyWith(
      nonceHash: freezed == nonceHash
          ? _self.nonceHash
          : nonceHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _Nonce extends Nonce {
  const _Nonce({required this.nonceHash}) : super._();

  @override
  final Uint8List? nonceHash;

  /// Create a copy of Nonce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NonceCopyWith<_Nonce> get copyWith =>
      __$NonceCopyWithImpl<_Nonce>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nonce &&
            const DeepCollectionEquality().equals(other.nonceHash, nonceHash));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nonceHash));

  @override
  String toString() {
    return 'Nonce(nonceHash: $nonceHash)';
  }
}

/// @nodoc
abstract mixin class _$NonceCopyWith<$Res> implements $NonceCopyWith<$Res> {
  factory _$NonceCopyWith(_Nonce value, $Res Function(_Nonce) _then) =
      __$NonceCopyWithImpl;
  @override
  @useResult
  $Res call({Uint8List? nonceHash});
}

/// @nodoc
class __$NonceCopyWithImpl<$Res> implements _$NonceCopyWith<$Res> {
  __$NonceCopyWithImpl(this._self, this._then);

  final _Nonce _self;
  final $Res Function(_Nonce) _then;

  /// Create a copy of Nonce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nonceHash = freezed,
  }) {
    return _then(_Nonce(
      nonceHash: freezed == nonceHash
          ? _self.nonceHash
          : nonceHash // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

// dart format on
