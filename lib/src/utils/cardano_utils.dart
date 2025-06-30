import "../../cardano_dart_types.dart";

final byronAddressRegex = RegExp(r"^((DdzFF[a-zA-Z0-9]{99})|(Ae2[a-zA-Z0-9]{56}))$");

// https://github.com/bitcoin/bips/blob/master/bip-0173.mediawiki#user-content-Bech32
// technically speaking, the data part of bech32 encoded data cannot include "1", "b", "i", "o" characters
// but we will ignore this right now
final shelleyAddressRegex = RegExp(r"^((addr_test1|addr1)(([a-z0-9]{53})|([a-z0-9]{98})))$");
final stakeAddressRegex = RegExp(r"^((stake1|stake_test1)([a-z0-9]{53}))$");

class CardanoUtils {
  const CardanoUtils._();

  static AddressInfo getAddressInfo(String addressBech32OrBase58) {
    try {
      if (byronAddressRegex.hasMatch(addressBech32OrBase58)) {
        CardanoAddress.fromBase58(addressBech32OrBase58);
        return const AddressInfo.byron();
      } else if (shelleyAddressRegex.hasMatch(addressBech32OrBase58)) {
        final parsedAddress = CardanoAddress.fromBech32(addressBech32OrBase58);
        return AddressInfo.shelley(
          isEnterprise: addressBech32OrBase58.length < 100,
          isScript: parsedAddress.credentialsType.value == CredentialType.script,
          network: parsedAddress.networkId,
        );
      } else {
        return const AddressInfo.notAnAddress();
      }
    } catch (e) {
      // if the address is not valid with a matching regex, the parsing will throw an error
      // This can happen on invalid checksums, etc.
      return const AddressInfo.invalid();
    }
  }

  static StakeAddressInfo getStakeAddressInfo(
    String stakeAddressBech32, [
    void Function(dynamic)? unexpectedErrorListener,
  ]) {
    try {
      if (stakeAddressRegex.hasMatch(stakeAddressBech32)) {
        final parsedAddress = CardanoAddress.fromBech32OrBase58(stakeAddressBech32);
        if (parsedAddress.addressType != AddressType.reward) {
          unexpectedErrorListener?.call("Stake Address is not reward type $stakeAddressBech32");
          return const StakeAddressInfo.notAnAddress();
        }
        return StakeAddressInfo.valid(
          isScript: parsedAddress.credentialsType.value == CredentialType.script,
          network: parsedAddress.networkId,
        );
      } else {
        return const StakeAddressInfo.notAnAddress();
      }
    } catch (e) {
      unexpectedErrorListener?.call(e);
      return const StakeAddressInfo.notAnAddress();
    }
  }
}
