// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drep.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Drep {
  int get type;
  CborLengthType get lengthType;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DrepCopyWith<Drep> get copyWith =>
      _$DrepCopyWithImpl<Drep>(this as Drep, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Drep &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lengthType, lengthType) ||
                other.lengthType == lengthType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, lengthType);

  @override
  String toString() {
    return 'Drep(type: $type, lengthType: $lengthType)';
  }
}

/// @nodoc
abstract mixin class $DrepCopyWith<$Res> {
  factory $DrepCopyWith(Drep value, $Res Function(Drep) _then) =
      _$DrepCopyWithImpl;
  @useResult
  $Res call({CborLengthType lengthType});
}

/// @nodoc
class _$DrepCopyWithImpl<$Res> implements $DrepCopyWith<$Res> {
  _$DrepCopyWithImpl(this._self, this._then);

  final Drep _self;
  final $Res Function(Drep) _then;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lengthType = null,
  }) {
    return _then(_self.copyWith(
      lengthType: null == lengthType
          ? _self.lengthType
          : lengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }
}

/// @nodoc

class Drep_AddrKeyHash extends Drep {
  Drep_AddrKeyHash({required this.hash, required this.lengthType}) : super._();

  final String hash;
  @override
  final CborLengthType lengthType;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Drep_AddrKeyHashCopyWith<Drep_AddrKeyHash> get copyWith =>
      _$Drep_AddrKeyHashCopyWithImpl<Drep_AddrKeyHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Drep_AddrKeyHash &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.lengthType, lengthType) ||
                other.lengthType == lengthType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hash, lengthType);

  @override
  String toString() {
    return 'Drep.addrKeyHash(hash: $hash, lengthType: $lengthType)';
  }
}

/// @nodoc
abstract mixin class $Drep_AddrKeyHashCopyWith<$Res>
    implements $DrepCopyWith<$Res> {
  factory $Drep_AddrKeyHashCopyWith(
          Drep_AddrKeyHash value, $Res Function(Drep_AddrKeyHash) _then) =
      _$Drep_AddrKeyHashCopyWithImpl;
  @override
  @useResult
  $Res call({String hash, CborLengthType lengthType});
}

/// @nodoc
class _$Drep_AddrKeyHashCopyWithImpl<$Res>
    implements $Drep_AddrKeyHashCopyWith<$Res> {
  _$Drep_AddrKeyHashCopyWithImpl(this._self, this._then);

  final Drep_AddrKeyHash _self;
  final $Res Function(Drep_AddrKeyHash) _then;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hash = null,
    Object? lengthType = null,
  }) {
    return _then(Drep_AddrKeyHash(
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      lengthType: null == lengthType
          ? _self.lengthType
          : lengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }
}

/// @nodoc

class Drep_ScriptHash extends Drep {
  Drep_ScriptHash({required this.hash, required this.lengthType}) : super._();

  final String hash;
  @override
  final CborLengthType lengthType;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Drep_ScriptHashCopyWith<Drep_ScriptHash> get copyWith =>
      _$Drep_ScriptHashCopyWithImpl<Drep_ScriptHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Drep_ScriptHash &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.lengthType, lengthType) ||
                other.lengthType == lengthType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hash, lengthType);

  @override
  String toString() {
    return 'Drep.scriptHash(hash: $hash, lengthType: $lengthType)';
  }
}

/// @nodoc
abstract mixin class $Drep_ScriptHashCopyWith<$Res>
    implements $DrepCopyWith<$Res> {
  factory $Drep_ScriptHashCopyWith(
          Drep_ScriptHash value, $Res Function(Drep_ScriptHash) _then) =
      _$Drep_ScriptHashCopyWithImpl;
  @override
  @useResult
  $Res call({String hash, CborLengthType lengthType});
}

/// @nodoc
class _$Drep_ScriptHashCopyWithImpl<$Res>
    implements $Drep_ScriptHashCopyWith<$Res> {
  _$Drep_ScriptHashCopyWithImpl(this._self, this._then);

  final Drep_ScriptHash _self;
  final $Res Function(Drep_ScriptHash) _then;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hash = null,
    Object? lengthType = null,
  }) {
    return _then(Drep_ScriptHash(
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      lengthType: null == lengthType
          ? _self.lengthType
          : lengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }
}

/// @nodoc

class Drep_Abstain extends Drep {
  Drep_Abstain({required this.lengthType}) : super._();

  @override
  final CborLengthType lengthType;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Drep_AbstainCopyWith<Drep_Abstain> get copyWith =>
      _$Drep_AbstainCopyWithImpl<Drep_Abstain>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Drep_Abstain &&
            (identical(other.lengthType, lengthType) ||
                other.lengthType == lengthType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lengthType);

  @override
  String toString() {
    return 'Drep.abstain(lengthType: $lengthType)';
  }
}

/// @nodoc
abstract mixin class $Drep_AbstainCopyWith<$Res>
    implements $DrepCopyWith<$Res> {
  factory $Drep_AbstainCopyWith(
          Drep_Abstain value, $Res Function(Drep_Abstain) _then) =
      _$Drep_AbstainCopyWithImpl;
  @override
  @useResult
  $Res call({CborLengthType lengthType});
}

/// @nodoc
class _$Drep_AbstainCopyWithImpl<$Res> implements $Drep_AbstainCopyWith<$Res> {
  _$Drep_AbstainCopyWithImpl(this._self, this._then);

  final Drep_Abstain _self;
  final $Res Function(Drep_Abstain) _then;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lengthType = null,
  }) {
    return _then(Drep_Abstain(
      lengthType: null == lengthType
          ? _self.lengthType
          : lengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }
}

/// @nodoc

class Drep_NoConfidence extends Drep {
  Drep_NoConfidence({required this.lengthType}) : super._();

  @override
  final CborLengthType lengthType;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Drep_NoConfidenceCopyWith<Drep_NoConfidence> get copyWith =>
      _$Drep_NoConfidenceCopyWithImpl<Drep_NoConfidence>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Drep_NoConfidence &&
            (identical(other.lengthType, lengthType) ||
                other.lengthType == lengthType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lengthType);

  @override
  String toString() {
    return 'Drep.noConfidence(lengthType: $lengthType)';
  }
}

/// @nodoc
abstract mixin class $Drep_NoConfidenceCopyWith<$Res>
    implements $DrepCopyWith<$Res> {
  factory $Drep_NoConfidenceCopyWith(
          Drep_NoConfidence value, $Res Function(Drep_NoConfidence) _then) =
      _$Drep_NoConfidenceCopyWithImpl;
  @override
  @useResult
  $Res call({CborLengthType lengthType});
}

/// @nodoc
class _$Drep_NoConfidenceCopyWithImpl<$Res>
    implements $Drep_NoConfidenceCopyWith<$Res> {
  _$Drep_NoConfidenceCopyWithImpl(this._self, this._then);

  final Drep_NoConfidence _self;
  final $Res Function(Drep_NoConfidence) _then;

  /// Create a copy of Drep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lengthType = null,
  }) {
    return _then(Drep_NoConfidence(
      lengthType: null == lengthType
          ? _self.lengthType
          : lengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }
}

// dart format on
