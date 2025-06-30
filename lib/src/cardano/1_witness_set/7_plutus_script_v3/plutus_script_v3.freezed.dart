// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plutus_script_v3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlutusScriptV3 {
  Uint8List get bytes;

  /// Create a copy of PlutusScriptV3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlutusScriptV3CopyWith<PlutusScriptV3> get copyWith =>
      _$PlutusScriptV3CopyWithImpl<PlutusScriptV3>(
          this as PlutusScriptV3, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlutusScriptV3 &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'PlutusScriptV3(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class $PlutusScriptV3CopyWith<$Res> {
  factory $PlutusScriptV3CopyWith(
          PlutusScriptV3 value, $Res Function(PlutusScriptV3) _then) =
      _$PlutusScriptV3CopyWithImpl;
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class _$PlutusScriptV3CopyWithImpl<$Res>
    implements $PlutusScriptV3CopyWith<$Res> {
  _$PlutusScriptV3CopyWithImpl(this._self, this._then);

  final PlutusScriptV3 _self;
  final $Res Function(PlutusScriptV3) _then;

  /// Create a copy of PlutusScriptV3
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

class _PlutusScriptV3 extends PlutusScriptV3 {
  const _PlutusScriptV3({required this.bytes}) : super._();

  @override
  final Uint8List bytes;

  /// Create a copy of PlutusScriptV3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlutusScriptV3CopyWith<_PlutusScriptV3> get copyWith =>
      __$PlutusScriptV3CopyWithImpl<_PlutusScriptV3>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlutusScriptV3 &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'PlutusScriptV3(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class _$PlutusScriptV3CopyWith<$Res>
    implements $PlutusScriptV3CopyWith<$Res> {
  factory _$PlutusScriptV3CopyWith(
          _PlutusScriptV3 value, $Res Function(_PlutusScriptV3) _then) =
      __$PlutusScriptV3CopyWithImpl;
  @override
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$PlutusScriptV3CopyWithImpl<$Res>
    implements _$PlutusScriptV3CopyWith<$Res> {
  __$PlutusScriptV3CopyWithImpl(this._self, this._then);

  final _PlutusScriptV3 _self;
  final $Res Function(_PlutusScriptV3) _then;

  /// Create a copy of PlutusScriptV3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_PlutusScriptV3(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

// dart format on
