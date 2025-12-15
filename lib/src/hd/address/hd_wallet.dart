import "package:bip32_ed25519/cardano.dart";
import "../../../binary/binary_reader.dart";
import "../../../binary/binary_writer.dart";
import "cardano_address.dart";

/// Private/signing and public/varification key pair.
class Bip32KeyPair {
  final Bip32SigningKey signingKey;
  final Bip32VerifyKey verifyKey;

  const Bip32KeyPair({required this.signingKey, required this.verifyKey});
}

/// Everything you need to add a spend (or change) address to a UTxO transaction.
class CardanoAddressKit extends Bip32KeyPair {
  final int account;
  final Bip32KeyRole role;
  final int index;
  final CardanoAddress address;

  const CardanoAddressKit({
    required this.account,
    required this.role,
    required this.index,
    required this.address,
    required super.signingKey,
    required super.verifyKey,
  }) : super();

  factory CardanoAddressKit.unmarshal(Uint8List data) {
    final reader = BinaryReader(data);
    return CardanoAddressKit(
      account: reader.readInt(),
      role: Bip32KeyRole.fromDerivationIndex(reader.readInt()),
      index: reader.readInt(),
      address: CardanoAddress(reader.readIntList()),
      signingKey: Bip32SigningKey(reader.readIntList().toUint8List()),
      verifyKey: Bip32VerifyKey(reader.readIntList().toUint8List()),
    );
  }

  Uint8List marshal() {
    final writer = BinaryWriter();
    writer.writeInt(account);
    writer.writeInt(role.derivationIndex);
    writer.writeInt(index);
    writer.writeIntList(address.bytes);
    writer.writeIntList(signingKey);
    writer.writeIntList(verifyKey);

    return writer.toBytes();
  }
}

/// Hardended chain values should not have public keys.
/// They are denoted by a single quote in chain values.
const int hardenedOffset = 0x80000000;

/// Default purpose. The year Ada Lovelace passed away.
/// Reference: [CIP-1852](https://github.com/cardano-foundation/CIPs/blob/master/CIP-1852/CIP-1852.md)
const int defaultPurpose = 1852 | hardenedOffset;

/// Coin-type for Cardano ADA. Ada Lovelace's year of birth.
const int defaultCoinType = 1815 | hardenedOffset;

/// Is zero. This returns the base account address.
const int defaultAccountIndex = 0;

enum Bip32KeyRole {
  payment(0), // external/payments
  change(1), // internal/change
  staking(2),
  drepCredential(3),
  constitutionalCommitteeCold(4),
  constitutionalCommitteeHot(5);

  final int derivationIndex;

  const Bip32KeyRole(this.derivationIndex);

  static Bip32KeyRole fromDerivationIndex(int index) =>
      Bip32KeyRole.values.firstWhere((e) => e.derivationIndex == index);
}

/// Function used to test address usage. Returns true if it has not been used in a transaction.
typedef UnusedAddressFunction = bool Function(CardanoAddress address);
