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

@Freezed(copyWith: false) // hand-written below, see [$CardanoPubAccountCopyWith]
sealed class CardanoPubAccount with _$CardanoPubAccount {
  CardanoPubAccount._();

  $CardanoPubAccountCopyWith<CardanoPubAccount> get copyWith => $CardanoPubAccountCopyWith(this, (value) => value);

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

  late final Lazy<CardanoDerivedAddress> stakeDerivation = Lazy(
    () => CardanoDerivedAddress(type: AddressType.reward, bytes: stakeKey.rawKey),
  );

  late final Lazy<DRepDerivation> dRepDerivation = Lazy(
    () => DRepDerivation(bytes: drepIdKey.rawKey),
  );
  late final Lazy<ConstitutionalCommiteeCold> constitutionalCommitteeColdDerivation = Lazy(
    () => ConstitutionalCommiteeCold(bytes: constitutionalCommitteeColdKey.rawKey),
  );
  late final Lazy<ConstitutionalCommiteeHot> constitutionalCommitteeHotDerivation = Lazy(
    () => ConstitutionalCommiteeHot(bytes: constitutionalCommitteeHotKey.rawKey),
  );
}

// ponytail: hand-written copy of the copyWith freezed 3 generated. freezed 4 builds it on the
// `CardanoPubAccount._()` constructor instead of `_private` (https://github.com/rrousselGit/freezed/issues/1376).
// Back to `@freezed` once that is fixed. A single class is enough: no field is nullable or has a nested copyWith.
class $CardanoPubAccountCopyWith<$Res> {
  $CardanoPubAccountCopyWith(this._self, this._then);

  final CardanoPubAccount _self;
  final $Res Function(CardanoPubAccount) _then;

  @useResult
  $Res call({
    Bip32PublicKey? accountKey,
    Bip32PublicKey? paymentRoleKey,
    Bip32PublicKey? changeRoleKey,
    Bip32PublicKey? stakeRoleKey,
    Bip32PublicKey? drepIdRoleKey,
    Bip32PublicKey? constitutionalCommitteeColdRoleKey,
    Bip32PublicKey? constitutionalCommitteeHotRoleKey,
    Bip32PublicKey? stakeKey,
    Bip32PublicKey? drepIdKey,
    Bip32PublicKey? constitutionalCommitteeColdKey,
    Bip32PublicKey? constitutionalCommitteeHotKey,
  }) => _then(
    CardanoPubAccount._private(
      accountKey: accountKey ?? _self.accountKey,
      paymentRoleKey: paymentRoleKey ?? _self.paymentRoleKey,
      changeRoleKey: changeRoleKey ?? _self.changeRoleKey,
      stakeRoleKey: stakeRoleKey ?? _self.stakeRoleKey,
      drepIdRoleKey: drepIdRoleKey ?? _self.drepIdRoleKey,
      constitutionalCommitteeColdRoleKey:
          constitutionalCommitteeColdRoleKey ?? _self.constitutionalCommitteeColdRoleKey,
      constitutionalCommitteeHotRoleKey: constitutionalCommitteeHotRoleKey ?? _self.constitutionalCommitteeHotRoleKey,
      stakeKey: stakeKey ?? _self.stakeKey,
      drepIdKey: drepIdKey ?? _self.drepIdKey,
      constitutionalCommitteeColdKey: constitutionalCommitteeColdKey ?? _self.constitutionalCommitteeColdKey,
      constitutionalCommitteeHotKey: constitutionalCommitteeHotKey ?? _self.constitutionalCommitteeHotKey,
    ),
  );
}
