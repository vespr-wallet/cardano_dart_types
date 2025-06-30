// ignore_for_file: invalid_annotation_target

import "dart:convert";

import "package:bip32_ed25519/bip32_ed25519.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../cardano_dart_types.dart";
import "../../utils/serialize_utils.dart";
import "../../utils/sugar.dart";
import "../util/blake2bhash.dart";

part "cardano_address.freezed.dart";
part "cardano_address.g.dart";

enum AddressType { base, pointer, enterprise, reward, byron }

enum CredentialType { key, script }

const String drepHrp = "drep";
const defaultAddrHrp = (addr: "addr", keyCred: "addr_vkh", scriptCred: "addr_shared_vkh");
const defaultRewardHrp = (addr: "stake", keyCred: "stake_vkh", scriptCred: "stake_vkh");
const String testnetHrpSuffix = "_test";
const int baseDiscrim = 0x00; //0b0000_0000
const int pointerDiscrim = 0x40; //0b0100_0000
const int enterpriseDiscrim = 0x60; // 0b0110_0000
const int rewardDiscrim = 0xe0; //0b1110_0000

class InvalidAddressTypeError implements Exception {
  final String message;

  InvalidAddressTypeError(this.message);

  @override
  String toString() => message;
}

@freezed
sealed class CardanoAddress with _$CardanoAddress {
  factory CardanoAddress(final Iterable<int> bytes) {
    final type = getAddressType(bytes);
    return switch (type) {
      AddressType.byron => CardanoAddressByron(bytes: ByteList(bytes)),
      AddressType.pointer => CardanoAddressPointer(bytes: ByteList(bytes)),
      AddressType.base => CardanoAddressBase(bytes: ByteList(bytes)),
      AddressType.enterprise => CardanoAddressEnterprise(bytes: ByteList(bytes)),
      AddressType.reward => CardanoAddressReward(bytes: ByteList(bytes)),
    };
  }
  CardanoAddress._();

  // DEPRECATED (in shelley era): legacy byron address
  factory CardanoAddress.byronRaw({
    @byteListConverter required ByteList bytes,
  }) = CardanoAddressByron;

  // DEPRECATED (in conway era): legacy byron address
  factory CardanoAddress.pointerRaw({
    @byteListConverter required ByteList bytes,
  }) = CardanoAddressPointer;

  // payment/change address (paymend and stake creds)
  factory CardanoAddress.baseRaw({
    @byteListConverter required ByteList bytes,
  }) = CardanoAddressBase;

  // enterprise address (only payment creds)
  factory CardanoAddress.enterpriseRaw({
    @byteListConverter required ByteList bytes,
  }) = CardanoAddressEnterprise;

  // staking (only stake creds)
  factory CardanoAddress.rewardRaw({
    @byteListConverter required ByteList bytes,
  }) = CardanoAddressReward;

  factory CardanoAddress.unmarshal(String jsonString) => CardanoAddress.fromJson(jsonDecode(jsonString));

  String marshal() => jsonEncode(toJson());

  factory CardanoAddress.toBaseAddress({
    required Bip32PublicKey spend,
    required Bip32PublicKey stake,
    required NetworkId networkId,
    CredentialType paymentType = CredentialType.key,
    CredentialType stakeType = CredentialType.key,
  }) {
    final addressBytes = [(stakeType.index << 5) | (paymentType.index << 4) | (networkId.intValue & 0x0f)] +
        blake2bHash224(spend.rawKey) +
        blake2bHash224(stake.rawKey);
    return CardanoAddress(addressBytes);
  }

  factory CardanoAddress.toRewardAddress({
    required Bip32PublicKey spend,
    required NetworkId networkId,
    CredentialType paymentType = CredentialType.key,
  }) {
    final addressBytes =
        [rewardDiscrim | (paymentType.index << 4) | (networkId.index & 0x0f)] + blake2bHash224(spend.rawKey);
    return CardanoAddress(addressBytes);
  }

  factory CardanoAddress.fromBech32OrBase58(String addressBech32OrBase58) {
    try {
      return CardanoAddress(addressBech32OrBase58.bech32Decode());
    } catch (err) {
      return CardanoAddress(addressBech32OrBase58.base58Decode());
    }
  }

  factory CardanoAddress.fromBech32(String addressBech32) => CardanoAddress(addressBech32.bech32Decode());

  factory CardanoAddress.fromBase58(String addressBase58) => CardanoAddress(addressBase58.base58Decode());

  factory CardanoAddress.fromHexString(String hexString) => CardanoAddress(hexString.hexDecode());

  factory CardanoAddress.fromPaymentCredentials({
    required List<int> paymentCredentials,
    required NetworkId networkId,
    List<int>? stakeCredentials,
    CredentialType credentialType = CredentialType.key,
  }) =>
      CardanoAddress(
        [
              (stakeCredentials != null ? baseDiscrim : enterpriseDiscrim) |
                  (credentialType.index << 4) |
                  (networkId.index & 0x0f)
            ] +
            paymentCredentials +
            (stakeCredentials ?? []),
      );

  factory CardanoAddress.fromStakeCredentials({
    required List<int> stakeCredentials,
    required NetworkId networkId,
  }) =>
      CardanoAddress([rewardDiscrim | (CredentialType.key.index << 4) | (networkId.index & 0x0f)] + stakeCredentials);

  factory CardanoAddress.fromHexStakeCredentials({
    required String stakeCredentials,
    required NetworkId networkId,
  }) =>
      CardanoAddress.fromStakeCredentials(stakeCredentials: stakeCredentials.hexDecode(), networkId: networkId);

  factory CardanoAddress.fromHexPaymentCredentials({
    required String paymentCredentials,
    required NetworkId networkId,
    String? stakeCredentials,
  }) =>
      CardanoAddress.fromPaymentCredentials(
        paymentCredentials: paymentCredentials.hexDecode(),
        stakeCredentials: stakeCredentials?.hexDecode(),
        networkId: networkId,
      );

  factory CardanoAddress.fromJson(Map<String, dynamic> json) => _$CardanoAddressFromJson(json);

  late final String hrp = getAddressHrp(bytes);

  late final String bech32Encoded = bytes.encode(Bech32Encoder(hrp: hrp));

  late final String hexEncoded = bytes.hexEncode();

  late final Uint8List credentialsBytes = bytes.skip(1).take(28).toUint8List();

  late final Uint8List? stakeCredentialsBytes = getAddressType(bytes).let((p0) => p0 == AddressType.reward
      ? credentialsBytes
      : p0 == AddressType.base
          ? bytes.skip(29).toUint8List()
          : null);

  late final String credentials = credentialsBytes.hexEncode();

  late final String credentialsBech32 = credentialsBytes.bech32Encode(getCredHrp(bytes));

  late final String? stakeCredentials = stakeCredentialsBytes?.hexEncode();

  late final String? stakeBech32Encoded = getAddressType(bytes).let((p0) => p0 == AddressType.reward
      ? bech32Encoded
      : p0 == AddressType.base
          ? ([rewardDiscrim | (networkId.index & 0x0f)] + bytes.skip(29).toList()).addressBech32Encode()
          : null);

  late final NetworkId networkId = getNetworkId(bytes);

  @Deprecated("Use credentialsType instead")
  CredentialType get paymentCredentialType => credentialsType.value;

  late final Lazy<CredentialType> credentialsType = Lazy(() => getCredentialType(bytes));

  late final AddressType addressType = getAddressType(bytes);

  static NetworkId getNetworkId(Iterable<int> address) =>
      NetworkId.testnet.index == address.first & 0x0f ? NetworkId.testnet : NetworkId.mainnet;

  static String getAddressHrp(Iterable<int> address) {
    final base = _getAddressBech32BaseHrp(address);
    final extension = getBech32HrpExtension(address);

    return "$base$extension";
  }

  static String getCredHrp(Iterable<int> address) {
    final base = _getCredBech32BaseHrp(address);
    // final extension = getBech32HrpExtension(address);

    return base;
  }

  static String _getAddressBech32BaseHrp(Iterable<int> address) {
    final hrpSet = getAddressType(address) == AddressType.reward ? defaultRewardHrp : defaultAddrHrp;
    return hrpSet.addr;
  }

  static String _getCredBech32BaseHrp(Iterable<int> address) {
    final hrpSet = getAddressType(address) == AddressType.reward ? defaultRewardHrp : defaultAddrHrp;
    return switch (getCredentialType(address)) {
      CredentialType.key => hrpSet.keyCred,
      CredentialType.script => hrpSet.scriptCred
    };
  }

  static String getBech32HrpExtension(Iterable<int> address) {
    return getNetworkId(address) == NetworkId.mainnet ? "" : testnetHrpSuffix;
  }

  static AddressType getAddressType(Iterable<int> address) {
    // based on https://cips.cardano.org/cips/cip19/
    final addrType = (address.first & 0xf0) >> 4;
    switch (addrType) {
      // Base Address
      case 0:
      case 1:
      case 2:
      case 3:
        return AddressType.base;
      case 4:
      case 5:
        return AddressType.pointer;
      case 6:
      case 7:
        return AddressType.enterprise;
      case 8: //not existing in CIP-19 but checking byron legacy addresses returns this
        return AddressType.byron;
      case 14:
      case 15:
        return AddressType.reward;
      default:
        throw InvalidAddressTypeError(
            "addressType: $addrType is not defined. Containing hex address ${address.hexEncode()}");
    }
  }

  static CredentialType getCredentialType(Iterable<int> address) {
    final credType = (address.first & 0x10) >> 4;

    return credType == 0 ? CredentialType.key : CredentialType.script;
  }

  static final List<int> _addressTypeValues = [baseDiscrim, pointerDiscrim, enterpriseDiscrim, rewardDiscrim];

  static int addressTypeValue(AddressType addressType) => _addressTypeValues[addressType.index];
}
