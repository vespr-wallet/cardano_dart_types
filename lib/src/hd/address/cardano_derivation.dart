import "dart:convert";

import "package:bip32_ed25519/api.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../cardano_dart_types.dart";
import "../../utils/serialize_utils.dart";
import "../util/blake2bhash.dart";

part "cardano_derivation.freezed.dart";
part "cardano_derivation.g.dart";

enum GovKeyType {
  ccHot(prefix: 0x00),
  ccCold(prefix: 0x10),
  drep(prefix: 0x20);

  final int prefix;

  const GovKeyType({required this.prefix});
}

enum GovCredType {
  keyHash(prefix: 0x02),
  scriptHash(prefix: 0x03);

  final int prefix;

  const GovCredType({required this.prefix});
}

int getGovKeyPrefix({required GovKeyType keyType, required GovCredType credType}) => keyType.prefix | credType.prefix;

@freezed
sealed class CardanoDerivation with _$CardanoDerivation {
  CardanoDerivation._();
  factory CardanoDerivation.address({
    required AddressType type,
    @byteListConverter required ByteList bytes, // non-hashed verify key
  }) = CardanoDerivedAddress;

  factory CardanoDerivation.dRep({
    required DRepDerivation value,
  }) = CardanoDerivedDRep;

  factory CardanoDerivation.constitutionalCommittee({
    required ConstitutionalCommitee value,
  }) = CardanoDerivedConstitutionalCommittee;

  @override
  late final ByteList pubKey = switch (this) {
    CardanoDerivedAddress(bytes: final bytes) => bytes,
    CardanoDerivedDRep(value: final value) => value.bytes,
    CardanoDerivedConstitutionalCommittee(value: final value) => value.bytes,
  };

  Uint8List marshal() => jsonEncode(toJson()).hexDecode();

  // bytes
  @override
  late final Lazy<Uint8List> _credentialsBytes = Lazy(() => blake2bHash224(pubKey));
  Uint8List get credentialsBytes => _credentialsBytes.value;

  // hex
  @override
  late final Lazy<String> _credentialsHex = Lazy(() => _credentialsBytes.value.hexEncode());
  @override
  late final Lazy<String> _keyHex = Lazy(() => pubKey.hexEncode());
  String get credentialsHex => _credentialsHex.value;
  String get keyHex => _keyHex.value; // verify key

  factory CardanoDerivation.unmarshal(Uint8List bytes) => CardanoDerivation.fromJson(jsonDecode(bytes.hexEncode()));

  factory CardanoDerivation.fromJson(Map<String, dynamic> json) => _$CardanoDerivationFromJson(json);
}

@freezed
sealed class DRepDerivation with _$DRepDerivation {
  factory DRepDerivation({
    @byteListConverter required ByteList bytes,
  }) = _DRepDerivation;
  DRepDerivation._();

  // raw key
  @override
  late final Lazy<String> _dRepKeyHex = Lazy(() => bytes.hexEncode());
  String get dRepKeyHex => _dRepKeyHex.value; // hex encoded - raw key

  // credentials (hashed raw key)
  @override
  late final Lazy<Uint8List> _credentialsBytes = Lazy(() => blake2bHash224(bytes.toUint8List()));
  @override
  late final Lazy<String> _credentialsHex = Lazy(() => _credentialsBytes.value.hexEncode());
  Uint8List get credentialsBytes => _credentialsBytes.value;
  String get credentialsHex => _credentialsHex.value;

  // dRep ID - CIP 105 (Legacy)
  @override
  late final Lazy<String> _dRepIdLegacyBech32 = Lazy(() => _credentialsBytes.value.bech32Encode(drepHrp));
  String get dRepIdLegacyHex => _credentialsHex.value;
  String get dRepIdLegacyBech32 => _dRepIdLegacyBech32.value;

  // dRep ID - CIP 129
  @override
  late final Lazy<Uint8List> _dRepIdNewBytes = Lazy(
    () => Uint8List.fromList([
      getGovKeyPrefix(keyType: GovKeyType.drep, credType: GovCredType.keyHash),
      ..._credentialsBytes.value,
    ]),
  );
  @override
  late final Lazy<String> _dRepIdNewHex = Lazy(() => _dRepIdNewBytes.value.hexEncode());
  @override
  late final Lazy<String> _dRepIdNewBech32 = Lazy(() => _dRepIdNewBytes.value.bech32Encode(drepHrp));

  Uint8List get dRepIdNewBytes => _dRepIdNewBytes.value;
  String get dRepIdNewHex => _dRepIdNewHex.value;
  String get dRepIdNewBech32 => _dRepIdNewBech32.value;

  factory DRepDerivation.fromJson(Map<String, dynamic> json) => _$DRepDerivationFromJson(json);
}

@freezed
sealed class ConstitutionalCommitee with _$ConstitutionalCommitee {
  ConstitutionalCommitee._();
  factory ConstitutionalCommitee.cold({
    @byteListConverter required ByteList bytes,
  }) = ConstitutionalCommiteeCold;
  factory ConstitutionalCommitee.hot({
    @byteListConverter required ByteList bytes,
  }) = ConstitutionalCommiteeHot;

  Uint8List marshal() => jsonEncode(toJson()).hexDecode();

  @override
  late final String hexCCKey = bytes.hexEncode();

  // credentials (hashed raw key) = _pubCCKeyHash
  @override
  late final Uint8List credentialsBytes = blake2bHash224(bytes.toUint8List());
  @override
  late final String hexCredential = credentialsBytes.hexEncode();

  // this is the CIP 105 (Legacy)
  // late final String bech32Credential = credentialsBytes.bech32Encode(_hrp);

  // CIP 129 (New)
  @override
  late final Uint8List ccIdBytes = Uint8List.fromList([
    getGovKeyPrefix(
      keyType: switch (this) {
        ConstitutionalCommiteeCold() => GovKeyType.ccCold,
        ConstitutionalCommiteeHot() => GovKeyType.ccHot,
      },
      credType: GovCredType.keyHash,
    ),
    ...credentialsBytes,
  ]);
  @override
  late final String ccIdHex = ccIdBytes.hexEncode();
  @override
  late final String ccIdBech32 = ccIdBytes.bech32Encode(_hrp);

  @override
  late final String _hrp = switch (this) {
    ConstitutionalCommiteeCold() => "cc_cold",
    ConstitutionalCommiteeHot() => "cc_hot",
  };

  factory ConstitutionalCommitee.unmarshal(Uint8List bytes) =>
      ConstitutionalCommitee.fromJson(jsonDecode(bytes.hexEncode()));

  factory ConstitutionalCommitee.fromJson(Map<String, dynamic> json) => _$ConstitutionalCommiteeFromJson(json);
}
