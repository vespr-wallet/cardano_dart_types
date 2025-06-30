// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CardanoTransactionOutput {
  OutputDatum? get datum;
  Uint8List
      get addressBytes; // address bytes (convert to bech32 for shelley and base58 for byron)
  Value get value;
  CborLengthType get lengthType;

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardanoTransactionOutputCopyWith<CardanoTransactionOutput> get copyWith =>
      _$CardanoTransactionOutputCopyWithImpl<CardanoTransactionOutput>(
          this as CardanoTransactionOutput, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardanoTransactionOutput &&
            (identical(other.datum, datum) || other.datum == datum) &&
            const DeepCollectionEquality()
                .equals(other.addressBytes, addressBytes) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.lengthType, lengthType) ||
                other.lengthType == lengthType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datum,
      const DeepCollectionEquality().hash(addressBytes), value, lengthType);
}

/// @nodoc
abstract mixin class $CardanoTransactionOutputCopyWith<$Res> {
  factory $CardanoTransactionOutputCopyWith(CardanoTransactionOutput value,
          $Res Function(CardanoTransactionOutput) _then) =
      _$CardanoTransactionOutputCopyWithImpl;
  @useResult
  $Res call({Uint8List addressBytes, Value value, CborLengthType lengthType});

  $ValueCopyWith<$Res> get value;
}

/// @nodoc
class _$CardanoTransactionOutputCopyWithImpl<$Res>
    implements $CardanoTransactionOutputCopyWith<$Res> {
  _$CardanoTransactionOutputCopyWithImpl(this._self, this._then);

  final CardanoTransactionOutput _self;
  final $Res Function(CardanoTransactionOutput) _then;

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressBytes = null,
    Object? value = null,
    Object? lengthType = null,
  }) {
    return _then(_self.copyWith(
      addressBytes: null == addressBytes
          ? _self.addressBytes
          : addressBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value,
      lengthType: null == lengthType
          ? _self.lengthType
          : lengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueCopyWith<$Res> get value {
    return $ValueCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc

class CardanoTransactionOutput_Legacy extends CardanoTransactionOutput {
  CardanoTransactionOutput_Legacy(
      {required this.addressBytes,
      required this.value,
      required this.outDatumHash,
      required this.lengthType})
      : super._();

  @override
  final Uint8List addressBytes;
// address bytes (convert to bech32 for shelley and base58 for byron)
  @override
  final Value value;
  final OutputDatum_Hash? outDatumHash;
  @override
  final CborLengthType lengthType;

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardanoTransactionOutput_LegacyCopyWith<CardanoTransactionOutput_Legacy>
      get copyWith => _$CardanoTransactionOutput_LegacyCopyWithImpl<
          CardanoTransactionOutput_Legacy>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardanoTransactionOutput_Legacy &&
            const DeepCollectionEquality()
                .equals(other.addressBytes, addressBytes) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.outDatumHash, outDatumHash) &&
            (identical(other.lengthType, lengthType) ||
                other.lengthType == lengthType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressBytes),
      value,
      const DeepCollectionEquality().hash(outDatumHash),
      lengthType);
}

/// @nodoc
abstract mixin class $CardanoTransactionOutput_LegacyCopyWith<$Res>
    implements $CardanoTransactionOutputCopyWith<$Res> {
  factory $CardanoTransactionOutput_LegacyCopyWith(
          CardanoTransactionOutput_Legacy value,
          $Res Function(CardanoTransactionOutput_Legacy) _then) =
      _$CardanoTransactionOutput_LegacyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uint8List addressBytes,
      Value value,
      OutputDatum_Hash? outDatumHash,
      CborLengthType lengthType});

  @override
  $ValueCopyWith<$Res> get value;
}

/// @nodoc
class _$CardanoTransactionOutput_LegacyCopyWithImpl<$Res>
    implements $CardanoTransactionOutput_LegacyCopyWith<$Res> {
  _$CardanoTransactionOutput_LegacyCopyWithImpl(this._self, this._then);

  final CardanoTransactionOutput_Legacy _self;
  final $Res Function(CardanoTransactionOutput_Legacy) _then;

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addressBytes = null,
    Object? value = null,
    Object? outDatumHash = freezed,
    Object? lengthType = null,
  }) {
    return _then(CardanoTransactionOutput_Legacy(
      addressBytes: null == addressBytes
          ? _self.addressBytes
          : addressBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value,
      outDatumHash: freezed == outDatumHash
          ? _self.outDatumHash
          : outDatumHash // ignore: cast_nullable_to_non_nullable
              as OutputDatum_Hash?,
      lengthType: null == lengthType
          ? _self.lengthType
          : lengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueCopyWith<$Res> get value {
    return $ValueCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc

class CardanoTransactionOutput_PostAlonzo extends CardanoTransactionOutput {
  CardanoTransactionOutput_PostAlonzo(
      {required this.addressBytes,
      required this.value,
      required this.outDatum,
      required this.scriptRef,
      required this.lengthType})
      : super._();

  @override
  final Uint8List addressBytes;
// address bytes (convert to bech32 for shelley and base58 for byron)
  @override
  final Value value;
  final OutputDatum? outDatum;
  final Uint8List? scriptRef;
  @override
  final CborLengthType lengthType;

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardanoTransactionOutput_PostAlonzoCopyWith<
          CardanoTransactionOutput_PostAlonzo>
      get copyWith => _$CardanoTransactionOutput_PostAlonzoCopyWithImpl<
          CardanoTransactionOutput_PostAlonzo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardanoTransactionOutput_PostAlonzo &&
            const DeepCollectionEquality()
                .equals(other.addressBytes, addressBytes) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.outDatum, outDatum) ||
                other.outDatum == outDatum) &&
            const DeepCollectionEquality().equals(other.scriptRef, scriptRef) &&
            (identical(other.lengthType, lengthType) ||
                other.lengthType == lengthType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressBytes),
      value,
      outDatum,
      const DeepCollectionEquality().hash(scriptRef),
      lengthType);
}

/// @nodoc
abstract mixin class $CardanoTransactionOutput_PostAlonzoCopyWith<$Res>
    implements $CardanoTransactionOutputCopyWith<$Res> {
  factory $CardanoTransactionOutput_PostAlonzoCopyWith(
          CardanoTransactionOutput_PostAlonzo value,
          $Res Function(CardanoTransactionOutput_PostAlonzo) _then) =
      _$CardanoTransactionOutput_PostAlonzoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uint8List addressBytes,
      Value value,
      OutputDatum? outDatum,
      Uint8List? scriptRef,
      CborLengthType lengthType});

  @override
  $ValueCopyWith<$Res> get value;
  $OutputDatumCopyWith<$Res>? get outDatum;
}

/// @nodoc
class _$CardanoTransactionOutput_PostAlonzoCopyWithImpl<$Res>
    implements $CardanoTransactionOutput_PostAlonzoCopyWith<$Res> {
  _$CardanoTransactionOutput_PostAlonzoCopyWithImpl(this._self, this._then);

  final CardanoTransactionOutput_PostAlonzo _self;
  final $Res Function(CardanoTransactionOutput_PostAlonzo) _then;

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addressBytes = null,
    Object? value = null,
    Object? outDatum = freezed,
    Object? scriptRef = freezed,
    Object? lengthType = null,
  }) {
    return _then(CardanoTransactionOutput_PostAlonzo(
      addressBytes: null == addressBytes
          ? _self.addressBytes
          : addressBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value,
      outDatum: freezed == outDatum
          ? _self.outDatum
          : outDatum // ignore: cast_nullable_to_non_nullable
              as OutputDatum?,
      scriptRef: freezed == scriptRef
          ? _self.scriptRef
          : scriptRef // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      lengthType: null == lengthType
          ? _self.lengthType
          : lengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueCopyWith<$Res> get value {
    return $ValueCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }

  /// Create a copy of CardanoTransactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutputDatumCopyWith<$Res>? get outDatum {
    if (_self.outDatum == null) {
      return null;
    }

    return $OutputDatumCopyWith<$Res>(_self.outDatum!, (value) {
      return _then(_self.copyWith(outDatum: value));
    });
  }
}

// dart format on
