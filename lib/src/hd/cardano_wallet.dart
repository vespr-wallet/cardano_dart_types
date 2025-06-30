// ignore_for_file: invalid_annotation_target
import "dart:async";

import "package:bip32_ed25519/bip32_ed25519.dart";

import "../cardano/1_witness_set/witness_set.dart";
import "../cardano/transaction.dart";
import "../cose/data_signature.dart";
import "../utils/lazy.dart";
import "ada_types.dart";
import "address/cardano_address.dart";
import "address/cardano_derivation.dart";
import "address/cardano_pub_account.dart";
import "address/hd_wallet.dart";
import "signing/signing_types.dart";

abstract class CardanoWallet {
  String get xPubBech32;

  int get accountIndex;
  NetworkId get networkId;
  CardanoAddress get stakeAddress;
  CardanoAddress get firstAddress;

  Lazy<CardanoDerivedAddress> get stakeDerivation;
  Lazy<DRepDerivation> get drepId;
  Lazy<ConstitutionalCommiteeCold> get constitutionalCommiteeCold;
  Lazy<ConstitutionalCommiteeHot> get constitutionalCommiteeHot;

  ByteList get seed;

  Bip32KeyPair rootKeyPair();

  Future<CardanoPubAccount> cardanoPubAccount();

  Future<CardanoAddressKit> getPaymentAddressKit({required int addressIndex});

  Future<CardanoAddressKit> getChangeAddressKit({required int addressIndex});

  Future<WitnessSet> signTransaction({
    required CardanoTransaction tx,
    required Set<String> witnessBech32Addresses,
    int deriveMaxAddressCount = 1000,
  });

  Future<TxSignedBundle> signTransactionsBundle(
    TxSigningBundle bundle, {
    int deriveMaxAddressCount = 1000,
  });

  Future<DataSignature> signData({
    required String payloadHex,
    required String requestedSignerRaw, // normally should be hex (but we accept bech32 as well)
    int deriveMaxAddressCount = 1000,
  });

  Uint8List marshal();
}
