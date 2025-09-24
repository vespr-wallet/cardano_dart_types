import "dart:async";

import "package:bip32_ed25519/api.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../utils/lazy.dart";
import "../../utils/transformations.dart";
import "cardano_address.dart";
import "cardano_derivation.dart";
import "hd_wallet.dart";

part "cardano_pub_account.freezed.dart";

typedef Bip32PublicKeyDerivator =
    FutureOr<Bip32PublicKey> Function(
      Bip32PublicKey,
      int,
    );

class _CardanoPubAccountSyncFactory extends CardanoPubAccountFactory {
  _CardanoPubAccountSyncFactory() : super(Bip32Ed25519KeyDerivation.instance.ckdPub);
}

abstract class CardanoPubAccountFactory {
  static final CardanoPubAccountFactory instanceSync = _CardanoPubAccountSyncFactory();

  final Bip32PublicKeyDerivator _pubKeyDerivator;

  CardanoPubAccountFactory(this._pubKeyDerivator);

  Future<CardanoPubAccount> fromHexXPub(String xPub) {
    final xPubBytes = xPub.hexDecode();

    final key = Bip32VerifyKey.fromKeyBytes(
      xPubBytes.take(32).toUint8List(), // 32 bytes raw public key
      xPubBytes.skip(32).toUint8List(), // 32 bytes chain code
    );

    return fromAccountKey(key);
  }

  Future<CardanoPubAccount> fromBech32XPub(String xPub) {
    final xPubBytes = xPub.bech32Decode();

    final key = Bip32VerifyKey.fromKeyBytes(
      xPubBytes.take(32).toUint8List(), // 32 bytes raw public key
      xPubBytes.skip(32).toUint8List(), // 32 bytes chain code
    );

    return fromAccountKey(key);
  }

  Future<CardanoPubAccount> fromAccountKey(Bip32PublicKey accPubKey) async {
    final paymentRoleRootKey = _pubKeyDerivator(
      accPubKey,
      Bip32KeyRole.payment.derivationIndex,
    );
    final changeRoleRootKey = _pubKeyDerivator(
      accPubKey,
      Bip32KeyRole.change.derivationIndex,
    );

    final stakeRoleRootKey = await _pubKeyDerivator(
      accPubKey,
      Bip32KeyRole.staking.derivationIndex,
    );
    final drepIdRootKey = await _pubKeyDerivator(
      accPubKey,
      Bip32KeyRole.drepCredential.derivationIndex,
    );
    final constitutionalCommitteeColdRootKey = await _pubKeyDerivator(
      accPubKey,
      Bip32KeyRole.constitutionalCommitteeCold.derivationIndex,
    );
    final constitutionalCommitteeHotRootKey = await _pubKeyDerivator(
      accPubKey,
      Bip32KeyRole.constitutionalCommitteeHot.derivationIndex,
    );

    final stakeKey = _pubKeyDerivator(
      stakeRoleRootKey,
      0,
    );
    final drepIdKey = _pubKeyDerivator(
      drepIdRootKey,
      0,
    );
    final constitutionalCommitteeColdKey = _pubKeyDerivator(
      constitutionalCommitteeColdRootKey,
      0,
    );
    final constitutionalCommitteeHotKey = _pubKeyDerivator(
      constitutionalCommitteeHotRootKey,
      0,
    );

    return CardanoPubAccount._private(
      accountKey: accPubKey,
      paymentRoleKey: await paymentRoleRootKey,
      changeRoleKey: await changeRoleRootKey,
      stakeRoleKey: stakeRoleRootKey,
      drepIdRoleKey: drepIdRootKey,
      constitutionalCommitteeColdRoleKey: constitutionalCommitteeColdRootKey,
      constitutionalCommitteeHotRoleKey: constitutionalCommitteeHotRootKey,
      stakeKey: await stakeKey,
      drepIdKey: await drepIdKey,
      constitutionalCommitteeColdKey: await constitutionalCommitteeColdKey,
      constitutionalCommitteeHotKey: await constitutionalCommitteeHotKey,
    );
  }
}

@freezed
sealed class CardanoPubAccount with _$CardanoPubAccount {
  CardanoPubAccount._();
  factory CardanoPubAccount._private({
    required Bip32PublicKey accountKey,
    required Bip32PublicKey paymentRoleKey,
    required Bip32PublicKey changeRoleKey,
    required Bip32PublicKey stakeRoleKey,
    required Bip32PublicKey drepIdRoleKey,
    required Bip32PublicKey constitutionalCommitteeColdRoleKey,
    required Bip32PublicKey constitutionalCommitteeHotRoleKey,
    required Bip32PublicKey stakeKey,
    required Bip32PublicKey drepIdKey,
    required Bip32PublicKey constitutionalCommitteeColdKey,
    required Bip32PublicKey constitutionalCommitteeHotKey,
  }) = _CardanoPubAccount;

  @override
  late final Lazy<CardanoDerivedAddress> stakeDerivation = Lazy(
    () => CardanoDerivedAddress(type: AddressType.reward, bytes: stakeKey.rawKey),
  );

  @override
  late final Lazy<DRepDerivation> dRepDerivation = Lazy(
    () => DRepDerivation(bytes: drepIdKey.rawKey),
  );
  @override
  late final Lazy<ConstitutionalCommiteeCold> constitutionalCommitteeColdDerivation = Lazy(
    () => ConstitutionalCommiteeCold(bytes: constitutionalCommitteeColdKey.rawKey),
  );
  @override
  late final Lazy<ConstitutionalCommiteeHot> constitutionalCommitteeHotDerivation = Lazy(
    () => ConstitutionalCommiteeHot(bytes: constitutionalCommitteeHotKey.rawKey),
  );
}
