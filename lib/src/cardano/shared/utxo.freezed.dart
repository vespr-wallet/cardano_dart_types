// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'utxo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Utxo {
  CardanoTransactionInput get identifier;
  CardanoTransactionOutput get content;

  /// Create a copy of Utxo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UtxoCopyWith<Utxo> get copyWith =>
      _$UtxoCopyWithImpl<Utxo>(this as Utxo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Utxo &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier, content);

  @override
  String toString() {
    return 'Utxo(identifier: $identifier, content: $content)';
  }
}

/// @nodoc
abstract mixin class $UtxoCopyWith<$Res> {
  factory $UtxoCopyWith(Utxo value, $Res Function(Utxo) _then) =
      _$UtxoCopyWithImpl;
  @useResult
  $Res call(
      {CardanoTransactionInput identifier, CardanoTransactionOutput content});

  $CardanoTransactionInputCopyWith<$Res> get identifier;
  $CardanoTransactionOutputCopyWith<$Res> get content;
}

/// @nodoc
class _$UtxoCopyWithImpl<$Res> implements $UtxoCopyWith<$Res> {
  _$UtxoCopyWithImpl(this._self, this._then);

  final Utxo _self;
  final $Res Function(Utxo) _then;

  /// Create a copy of Utxo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      identifier: null == identifier
          ? _self.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as CardanoTransactionInput,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as CardanoTransactionOutput,
    ));
  }

  /// Create a copy of Utxo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardanoTransactionInputCopyWith<$Res> get identifier {
    return $CardanoTransactionInputCopyWith<$Res>(_self.identifier, (value) {
      return _then(_self.copyWith(identifier: value));
    });
  }

  /// Create a copy of Utxo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardanoTransactionOutputCopyWith<$Res> get content {
    return $CardanoTransactionOutputCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _Utxo extends Utxo {
  const _Utxo({required this.identifier, required this.content}) : super._();

  @override
  final CardanoTransactionInput identifier;
  @override
  final CardanoTransactionOutput content;

  /// Create a copy of Utxo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UtxoCopyWith<_Utxo> get copyWith =>
      __$UtxoCopyWithImpl<_Utxo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Utxo &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier, content);

  @override
  String toString() {
    return 'Utxo(identifier: $identifier, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$UtxoCopyWith<$Res> implements $UtxoCopyWith<$Res> {
  factory _$UtxoCopyWith(_Utxo value, $Res Function(_Utxo) _then) =
      __$UtxoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CardanoTransactionInput identifier, CardanoTransactionOutput content});

  @override
  $CardanoTransactionInputCopyWith<$Res> get identifier;
  @override
  $CardanoTransactionOutputCopyWith<$Res> get content;
}

/// @nodoc
class __$UtxoCopyWithImpl<$Res> implements _$UtxoCopyWith<$Res> {
  __$UtxoCopyWithImpl(this._self, this._then);

  final _Utxo _self;
  final $Res Function(_Utxo) _then;

  /// Create a copy of Utxo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? identifier = null,
    Object? content = null,
  }) {
    return _then(_Utxo(
      identifier: null == identifier
          ? _self.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as CardanoTransactionInput,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as CardanoTransactionOutput,
    ));
  }

  /// Create a copy of Utxo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardanoTransactionInputCopyWith<$Res> get identifier {
    return $CardanoTransactionInputCopyWith<$Res>(_self.identifier, (value) {
      return _then(_self.copyWith(identifier: value));
    });
  }

  /// Create a copy of Utxo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardanoTransactionOutputCopyWith<$Res> get content {
    return $CardanoTransactionOutputCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

// dart format on
