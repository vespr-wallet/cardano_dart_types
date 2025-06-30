// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'output_datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OutputDatum {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OutputDatum);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OutputDatum()';
  }
}

/// @nodoc
class $OutputDatumCopyWith<$Res> {
  $OutputDatumCopyWith(OutputDatum _, $Res Function(OutputDatum) __);
}

/// @nodoc

class OutputDatum_Hash extends OutputDatum {
  OutputDatum_Hash(this.datumHash) : super._();

  final Uint8List datumHash;

  /// Create a copy of OutputDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OutputDatum_HashCopyWith<OutputDatum_Hash> get copyWith =>
      _$OutputDatum_HashCopyWithImpl<OutputDatum_Hash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OutputDatum_Hash &&
            const DeepCollectionEquality().equals(other.datumHash, datumHash));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(datumHash));

  @override
  String toString() {
    return 'OutputDatum.hash(datumHash: $datumHash)';
  }
}

/// @nodoc
abstract mixin class $OutputDatum_HashCopyWith<$Res>
    implements $OutputDatumCopyWith<$Res> {
  factory $OutputDatum_HashCopyWith(
          OutputDatum_Hash value, $Res Function(OutputDatum_Hash) _then) =
      _$OutputDatum_HashCopyWithImpl;
  @useResult
  $Res call({Uint8List datumHash});
}

/// @nodoc
class _$OutputDatum_HashCopyWithImpl<$Res>
    implements $OutputDatum_HashCopyWith<$Res> {
  _$OutputDatum_HashCopyWithImpl(this._self, this._then);

  final OutputDatum_Hash _self;
  final $Res Function(OutputDatum_Hash) _then;

  /// Create a copy of OutputDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? datumHash = null,
  }) {
    return _then(OutputDatum_Hash(
      null == datumHash
          ? _self.datumHash
          : datumHash // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class OutputDatum_Inline extends OutputDatum {
  OutputDatum_Inline(this.plutusData) : super._();

  final PlutusData plutusData;

  /// Create a copy of OutputDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OutputDatum_InlineCopyWith<OutputDatum_Inline> get copyWith =>
      _$OutputDatum_InlineCopyWithImpl<OutputDatum_Inline>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OutputDatum_Inline &&
            (identical(other.plutusData, plutusData) ||
                other.plutusData == plutusData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plutusData);

  @override
  String toString() {
    return 'OutputDatum.inline(plutusData: $plutusData)';
  }
}

/// @nodoc
abstract mixin class $OutputDatum_InlineCopyWith<$Res>
    implements $OutputDatumCopyWith<$Res> {
  factory $OutputDatum_InlineCopyWith(
          OutputDatum_Inline value, $Res Function(OutputDatum_Inline) _then) =
      _$OutputDatum_InlineCopyWithImpl;
  @useResult
  $Res call({PlutusData plutusData});

  $PlutusDataCopyWith<$Res> get plutusData;
}

/// @nodoc
class _$OutputDatum_InlineCopyWithImpl<$Res>
    implements $OutputDatum_InlineCopyWith<$Res> {
  _$OutputDatum_InlineCopyWithImpl(this._self, this._then);

  final OutputDatum_Inline _self;
  final $Res Function(OutputDatum_Inline) _then;

  /// Create a copy of OutputDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? plutusData = null,
  }) {
    return _then(OutputDatum_Inline(
      null == plutusData
          ? _self.plutusData
          : plutusData // ignore: cast_nullable_to_non_nullable
              as PlutusData,
    ));
  }

  /// Create a copy of OutputDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlutusDataCopyWith<$Res> get plutusData {
    return $PlutusDataCopyWith<$Res>(_self.plutusData, (value) {
      return _then(_self.copyWith(plutusData: value));
    });
  }
}

// dart format on
