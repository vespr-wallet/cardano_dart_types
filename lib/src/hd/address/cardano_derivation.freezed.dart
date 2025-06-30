// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_derivation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CardanoDerivation _$CardanoDerivationFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'address':
      return CardanoDerivedAddress.fromJson(json);
    case 'dRep':
      return CardanoDerivedDRep.fromJson(json);
    case 'constitutionalCommittee':
      return CardanoDerivedConstitutionalCommittee.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CardanoDerivation',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CardanoDerivation {
  ByteList get pubKey; // bytes
  Lazy<Uint8List> get _credentialsBytes; // hex
  Lazy<String> get _credentialsHex;
  Lazy<String> get _keyHex;

  /// Serializes this CardanoDerivation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardanoDerivation &&
            const DeepCollectionEquality().equals(other.pubKey, pubKey) &&
            (identical(other._credentialsBytes, _credentialsBytes) ||
                other._credentialsBytes == _credentialsBytes) &&
            (identical(other._credentialsHex, _credentialsHex) ||
                other._credentialsHex == _credentialsHex) &&
            (identical(other._keyHex, _keyHex) || other._keyHex == _keyHex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pubKey),
      _credentialsBytes,
      _credentialsHex,
      _keyHex);

  @override
  String toString() {
    return 'CardanoDerivation(pubKey: $pubKey, _credentialsBytes: $_credentialsBytes, _credentialsHex: $_credentialsHex, _keyHex: $_keyHex)';
  }
}

/// @nodoc
class $CardanoDerivationCopyWith<$Res> {
  $CardanoDerivationCopyWith(
      CardanoDerivation _, $Res Function(CardanoDerivation) __);
}

/// @nodoc
@JsonSerializable()
class CardanoDerivedAddress extends CardanoDerivation {
  CardanoDerivedAddress(
      {required this.type,
      @byteListConverter required this.bytes,
      final String? $type})
      : $type = $type ?? 'address',
        super._();
  factory CardanoDerivedAddress.fromJson(Map<String, dynamic> json) =>
      _$CardanoDerivedAddressFromJson(json);

  final AddressType type;
  @byteListConverter
  final ByteList bytes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of CardanoDerivation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardanoDerivedAddressCopyWith<CardanoDerivedAddress> get copyWith =>
      _$CardanoDerivedAddressCopyWithImpl<CardanoDerivedAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CardanoDerivedAddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardanoDerivedAddress &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'CardanoDerivation.address(type: $type, bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class $CardanoDerivedAddressCopyWith<$Res>
    implements $CardanoDerivationCopyWith<$Res> {
  factory $CardanoDerivedAddressCopyWith(CardanoDerivedAddress value,
          $Res Function(CardanoDerivedAddress) _then) =
      _$CardanoDerivedAddressCopyWithImpl;
  @useResult
  $Res call({AddressType type, @byteListConverter ByteList bytes});
}

/// @nodoc
class _$CardanoDerivedAddressCopyWithImpl<$Res>
    implements $CardanoDerivedAddressCopyWith<$Res> {
  _$CardanoDerivedAddressCopyWithImpl(this._self, this._then);

  final CardanoDerivedAddress _self;
  final $Res Function(CardanoDerivedAddress) _then;

  /// Create a copy of CardanoDerivation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? bytes = null,
  }) {
    return _then(CardanoDerivedAddress(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as ByteList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CardanoDerivedDRep extends CardanoDerivation {
  CardanoDerivedDRep({required this.value, final String? $type})
      : $type = $type ?? 'dRep',
        super._();
  factory CardanoDerivedDRep.fromJson(Map<String, dynamic> json) =>
      _$CardanoDerivedDRepFromJson(json);

  final DRepDerivation value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of CardanoDerivation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardanoDerivedDRepCopyWith<CardanoDerivedDRep> get copyWith =>
      _$CardanoDerivedDRepCopyWithImpl<CardanoDerivedDRep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CardanoDerivedDRepToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardanoDerivedDRep &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'CardanoDerivation.dRep(value: $value)';
  }
}

/// @nodoc
abstract mixin class $CardanoDerivedDRepCopyWith<$Res>
    implements $CardanoDerivationCopyWith<$Res> {
  factory $CardanoDerivedDRepCopyWith(
          CardanoDerivedDRep value, $Res Function(CardanoDerivedDRep) _then) =
      _$CardanoDerivedDRepCopyWithImpl;
  @useResult
  $Res call({DRepDerivation value});

  $DRepDerivationCopyWith<$Res> get value;
}

/// @nodoc
class _$CardanoDerivedDRepCopyWithImpl<$Res>
    implements $CardanoDerivedDRepCopyWith<$Res> {
  _$CardanoDerivedDRepCopyWithImpl(this._self, this._then);

  final CardanoDerivedDRep _self;
  final $Res Function(CardanoDerivedDRep) _then;

  /// Create a copy of CardanoDerivation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(CardanoDerivedDRep(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as DRepDerivation,
    ));
  }

  /// Create a copy of CardanoDerivation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DRepDerivationCopyWith<$Res> get value {
    return $DRepDerivationCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class CardanoDerivedConstitutionalCommittee extends CardanoDerivation {
  CardanoDerivedConstitutionalCommittee(
      {required this.value, final String? $type})
      : $type = $type ?? 'constitutionalCommittee',
        super._();
  factory CardanoDerivedConstitutionalCommittee.fromJson(
          Map<String, dynamic> json) =>
      _$CardanoDerivedConstitutionalCommitteeFromJson(json);

  final ConstitutionalCommitee value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of CardanoDerivation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CardanoDerivedConstitutionalCommitteeCopyWith<
          CardanoDerivedConstitutionalCommittee>
      get copyWith => _$CardanoDerivedConstitutionalCommitteeCopyWithImpl<
          CardanoDerivedConstitutionalCommittee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CardanoDerivedConstitutionalCommitteeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardanoDerivedConstitutionalCommittee &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'CardanoDerivation.constitutionalCommittee(value: $value)';
  }
}

/// @nodoc
abstract mixin class $CardanoDerivedConstitutionalCommitteeCopyWith<$Res>
    implements $CardanoDerivationCopyWith<$Res> {
  factory $CardanoDerivedConstitutionalCommitteeCopyWith(
          CardanoDerivedConstitutionalCommittee value,
          $Res Function(CardanoDerivedConstitutionalCommittee) _then) =
      _$CardanoDerivedConstitutionalCommitteeCopyWithImpl;
  @useResult
  $Res call({ConstitutionalCommitee value});

  $ConstitutionalCommiteeCopyWith<$Res> get value;
}

/// @nodoc
class _$CardanoDerivedConstitutionalCommitteeCopyWithImpl<$Res>
    implements $CardanoDerivedConstitutionalCommitteeCopyWith<$Res> {
  _$CardanoDerivedConstitutionalCommitteeCopyWithImpl(this._self, this._then);

  final CardanoDerivedConstitutionalCommittee _self;
  final $Res Function(CardanoDerivedConstitutionalCommittee) _then;

  /// Create a copy of CardanoDerivation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(CardanoDerivedConstitutionalCommittee(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as ConstitutionalCommitee,
    ));
  }

  /// Create a copy of CardanoDerivation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConstitutionalCommiteeCopyWith<$Res> get value {
    return $ConstitutionalCommiteeCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc
mixin _$DRepDerivation {
// raw key
  Lazy<String> get _dRepKeyHex; // hex encoded - raw key
// credentials (hashed raw key)
  Lazy<Uint8List> get _credentialsBytes;
  Lazy<String> get _credentialsHex; // dRep ID - CIP 105 (Legacy)
  Lazy<String> get _dRepIdLegacyBech32; // dRep ID - CIP 129
  Lazy<Uint8List> get _dRepIdNewBytes;
  Lazy<String> get _dRepIdNewHex;
  Lazy<String> get _dRepIdNewBech32;
  @byteListConverter
  ByteList get bytes;

  /// Create a copy of DRepDerivation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DRepDerivationCopyWith<DRepDerivation> get copyWith =>
      _$DRepDerivationCopyWithImpl<DRepDerivation>(
          this as DRepDerivation, _$identity);

  /// Serializes this DRepDerivation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DRepDerivation &&
            (identical(other._dRepKeyHex, _dRepKeyHex) ||
                other._dRepKeyHex == _dRepKeyHex) &&
            (identical(other._credentialsBytes, _credentialsBytes) ||
                other._credentialsBytes == _credentialsBytes) &&
            (identical(other._credentialsHex, _credentialsHex) ||
                other._credentialsHex == _credentialsHex) &&
            (identical(other._dRepIdLegacyBech32, _dRepIdLegacyBech32) ||
                other._dRepIdLegacyBech32 == _dRepIdLegacyBech32) &&
            (identical(other._dRepIdNewBytes, _dRepIdNewBytes) ||
                other._dRepIdNewBytes == _dRepIdNewBytes) &&
            (identical(other._dRepIdNewHex, _dRepIdNewHex) ||
                other._dRepIdNewHex == _dRepIdNewHex) &&
            (identical(other._dRepIdNewBech32, _dRepIdNewBech32) ||
                other._dRepIdNewBech32 == _dRepIdNewBech32) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      _dRepKeyHex,
      _credentialsBytes,
      _credentialsHex,
      _dRepIdLegacyBech32,
      _dRepIdNewBytes,
      _dRepIdNewHex,
      _dRepIdNewBech32,
      const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'DRepDerivation(_dRepKeyHex: $_dRepKeyHex, _credentialsBytes: $_credentialsBytes, _credentialsHex: $_credentialsHex, _dRepIdLegacyBech32: $_dRepIdLegacyBech32, _dRepIdNewBytes: $_dRepIdNewBytes, _dRepIdNewHex: $_dRepIdNewHex, _dRepIdNewBech32: $_dRepIdNewBech32, bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class $DRepDerivationCopyWith<$Res> {
  factory $DRepDerivationCopyWith(
          DRepDerivation value, $Res Function(DRepDerivation) _then) =
      _$DRepDerivationCopyWithImpl;
  @useResult
  $Res call({@byteListConverter ByteList bytes});
}

/// @nodoc
class _$DRepDerivationCopyWithImpl<$Res>
    implements $DRepDerivationCopyWith<$Res> {
  _$DRepDerivationCopyWithImpl(this._self, this._then);

  final DRepDerivation _self;
  final $Res Function(DRepDerivation) _then;

  /// Create a copy of DRepDerivation
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
              as ByteList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DRepDerivation extends DRepDerivation {
  _DRepDerivation({@byteListConverter required this.bytes}) : super._();
  factory _DRepDerivation.fromJson(Map<String, dynamic> json) =>
      _$DRepDerivationFromJson(json);

  @override
  @byteListConverter
  final ByteList bytes;

  /// Create a copy of DRepDerivation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DRepDerivationCopyWith<_DRepDerivation> get copyWith =>
      __$DRepDerivationCopyWithImpl<_DRepDerivation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DRepDerivationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DRepDerivation &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'DRepDerivation(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class _$DRepDerivationCopyWith<$Res>
    implements $DRepDerivationCopyWith<$Res> {
  factory _$DRepDerivationCopyWith(
          _DRepDerivation value, $Res Function(_DRepDerivation) _then) =
      __$DRepDerivationCopyWithImpl;
  @override
  @useResult
  $Res call({@byteListConverter ByteList bytes});
}

/// @nodoc
class __$DRepDerivationCopyWithImpl<$Res>
    implements _$DRepDerivationCopyWith<$Res> {
  __$DRepDerivationCopyWithImpl(this._self, this._then);

  final _DRepDerivation _self;
  final $Res Function(_DRepDerivation) _then;

  /// Create a copy of DRepDerivation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_DRepDerivation(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as ByteList,
    ));
  }
}

ConstitutionalCommitee _$ConstitutionalCommiteeFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'cold':
      return ConstitutionalCommiteeCold.fromJson(json);
    case 'hot':
      return ConstitutionalCommiteeHot.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ConstitutionalCommitee',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ConstitutionalCommitee {
  String get hexCCKey; // credentials (hashed raw key) = _pubCCKeyHash
  Uint8List get credentialsBytes;
  String get hexCredential; // this is the CIP 105 (Legacy)
// late final String bech32Credential = credentialsBytes.bech32Encode(_hrp);
// CIP 129 (New)
  Uint8List get ccIdBytes;
  String get ccIdHex;
  String get ccIdBech32;
  String get _hrp;
  @byteListConverter
  ByteList get bytes;

  /// Create a copy of ConstitutionalCommitee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConstitutionalCommiteeCopyWith<ConstitutionalCommitee> get copyWith =>
      _$ConstitutionalCommiteeCopyWithImpl<ConstitutionalCommitee>(
          this as ConstitutionalCommitee, _$identity);

  /// Serializes this ConstitutionalCommitee to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConstitutionalCommitee &&
            (identical(other.hexCCKey, hexCCKey) ||
                other.hexCCKey == hexCCKey) &&
            const DeepCollectionEquality()
                .equals(other.credentialsBytes, credentialsBytes) &&
            (identical(other.hexCredential, hexCredential) ||
                other.hexCredential == hexCredential) &&
            const DeepCollectionEquality().equals(other.ccIdBytes, ccIdBytes) &&
            (identical(other.ccIdHex, ccIdHex) || other.ccIdHex == ccIdHex) &&
            (identical(other.ccIdBech32, ccIdBech32) ||
                other.ccIdBech32 == ccIdBech32) &&
            (identical(other._hrp, _hrp) || other._hrp == _hrp) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hexCCKey,
      const DeepCollectionEquality().hash(credentialsBytes),
      hexCredential,
      const DeepCollectionEquality().hash(ccIdBytes),
      ccIdHex,
      ccIdBech32,
      _hrp,
      const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'ConstitutionalCommitee(hexCCKey: $hexCCKey, credentialsBytes: $credentialsBytes, hexCredential: $hexCredential, ccIdBytes: $ccIdBytes, ccIdHex: $ccIdHex, ccIdBech32: $ccIdBech32, _hrp: $_hrp, bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class $ConstitutionalCommiteeCopyWith<$Res> {
  factory $ConstitutionalCommiteeCopyWith(ConstitutionalCommitee value,
          $Res Function(ConstitutionalCommitee) _then) =
      _$ConstitutionalCommiteeCopyWithImpl;
  @useResult
  $Res call({@byteListConverter ByteList bytes});
}

/// @nodoc
class _$ConstitutionalCommiteeCopyWithImpl<$Res>
    implements $ConstitutionalCommiteeCopyWith<$Res> {
  _$ConstitutionalCommiteeCopyWithImpl(this._self, this._then);

  final ConstitutionalCommitee _self;
  final $Res Function(ConstitutionalCommitee) _then;

  /// Create a copy of ConstitutionalCommitee
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
              as ByteList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ConstitutionalCommiteeCold extends ConstitutionalCommitee {
  ConstitutionalCommiteeCold(
      {@byteListConverter required this.bytes, final String? $type})
      : $type = $type ?? 'cold',
        super._();
  factory ConstitutionalCommiteeCold.fromJson(Map<String, dynamic> json) =>
      _$ConstitutionalCommiteeColdFromJson(json);

  @override
  @byteListConverter
  final ByteList bytes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ConstitutionalCommitee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConstitutionalCommiteeColdCopyWith<ConstitutionalCommiteeCold>
      get copyWith =>
          _$ConstitutionalCommiteeColdCopyWithImpl<ConstitutionalCommiteeCold>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConstitutionalCommiteeColdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConstitutionalCommiteeCold &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'ConstitutionalCommitee.cold(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class $ConstitutionalCommiteeColdCopyWith<$Res>
    implements $ConstitutionalCommiteeCopyWith<$Res> {
  factory $ConstitutionalCommiteeColdCopyWith(ConstitutionalCommiteeCold value,
          $Res Function(ConstitutionalCommiteeCold) _then) =
      _$ConstitutionalCommiteeColdCopyWithImpl;
  @override
  @useResult
  $Res call({@byteListConverter ByteList bytes});
}

/// @nodoc
class _$ConstitutionalCommiteeColdCopyWithImpl<$Res>
    implements $ConstitutionalCommiteeColdCopyWith<$Res> {
  _$ConstitutionalCommiteeColdCopyWithImpl(this._self, this._then);

  final ConstitutionalCommiteeCold _self;
  final $Res Function(ConstitutionalCommiteeCold) _then;

  /// Create a copy of ConstitutionalCommitee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
  }) {
    return _then(ConstitutionalCommiteeCold(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as ByteList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ConstitutionalCommiteeHot extends ConstitutionalCommitee {
  ConstitutionalCommiteeHot(
      {@byteListConverter required this.bytes, final String? $type})
      : $type = $type ?? 'hot',
        super._();
  factory ConstitutionalCommiteeHot.fromJson(Map<String, dynamic> json) =>
      _$ConstitutionalCommiteeHotFromJson(json);

  @override
  @byteListConverter
  final ByteList bytes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ConstitutionalCommitee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConstitutionalCommiteeHotCopyWith<ConstitutionalCommiteeHot> get copyWith =>
      _$ConstitutionalCommiteeHotCopyWithImpl<ConstitutionalCommiteeHot>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConstitutionalCommiteeHotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConstitutionalCommiteeHot &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @override
  String toString() {
    return 'ConstitutionalCommitee.hot(bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class $ConstitutionalCommiteeHotCopyWith<$Res>
    implements $ConstitutionalCommiteeCopyWith<$Res> {
  factory $ConstitutionalCommiteeHotCopyWith(ConstitutionalCommiteeHot value,
          $Res Function(ConstitutionalCommiteeHot) _then) =
      _$ConstitutionalCommiteeHotCopyWithImpl;
  @override
  @useResult
  $Res call({@byteListConverter ByteList bytes});
}

/// @nodoc
class _$ConstitutionalCommiteeHotCopyWithImpl<$Res>
    implements $ConstitutionalCommiteeHotCopyWith<$Res> {
  _$ConstitutionalCommiteeHotCopyWithImpl(this._self, this._then);

  final ConstitutionalCommiteeHot _self;
  final $Res Function(ConstitutionalCommiteeHot) _then;

  /// Create a copy of ConstitutionalCommitee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
  }) {
    return _then(ConstitutionalCommiteeHot(
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as ByteList,
    ));
  }
}

// dart format on
