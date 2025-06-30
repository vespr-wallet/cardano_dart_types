// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plutus_script_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlutusScriptV2 {
  Uint8List get bytes;

  /// Create a copy of PlutusScriptV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlutusScriptV2CopyWith<PlutusScriptV2> get copyWith =>
      _$PlutusScriptV2CopyWithImpl<PlutusScriptV2>(
          this as PlutusScriptV2, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlutusScriptV2 &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'PlutusScriptV2(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class $PlutusScriptV2CopyWith<$Res> {
  factory $PlutusScriptV2CopyWith(
          PlutusScriptV2 value, $Res Function(PlutusScriptV2) _then) =
      _$PlutusScriptV2CopyWithImpl;
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class _$PlutusScriptV2CopyWithImpl<$Res>
    implements $PlutusScriptV2CopyWith<$Res> {
  _$PlutusScriptV2CopyWithImpl(this._self, this._then);

  final PlutusScriptV2 _self;
  final $Res Function(PlutusScriptV2) _then;

  /// Create a copy of PlutusScriptV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_self.copyWith(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _PlutusScriptV2 extends PlutusScriptV2 {
  const _PlutusScriptV2({required this.bytes}) : super._();

  @override
  final Uint8List bytes;

  /// Create a copy of PlutusScriptV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlutusScriptV2CopyWith<_PlutusScriptV2> get copyWith =>
      __$PlutusScriptV2CopyWithImpl<_PlutusScriptV2>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlutusScriptV2 &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'PlutusScriptV2(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class _$PlutusScriptV2CopyWith<$Res>
    implements $PlutusScriptV2CopyWith<$Res> {
  factory _$PlutusScriptV2CopyWith(
          _PlutusScriptV2 value, $Res Function(_PlutusScriptV2) _then) =
      __$PlutusScriptV2CopyWithImpl;
  @override
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$PlutusScriptV2CopyWithImpl<$Res>
    implements _$PlutusScriptV2CopyWith<$Res> {
  __$PlutusScriptV2CopyWithImpl(this._self, this._then);

  final _PlutusScriptV2 _self;
  final $Res Function(_PlutusScriptV2) _then;

  /// Create a copy of PlutusScriptV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_PlutusScriptV2(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

// dart format on
