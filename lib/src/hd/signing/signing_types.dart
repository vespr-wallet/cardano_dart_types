import "package:bip32_ed25519/bip32_ed25519.dart";
import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../binary/binary_reader_impl.dart";
import "../../../binary/binary_writer_impl.dart";
import "../../cardano/0_body/4_cert/credential.dart";
import "../../cardano/1_witness_set/witness_set.dart";
import "../../cardano/shared/asset.dart";
import "../../cardano/shared/drep.dart";
import "../../cardano/shared/utxo.dart";
import "../../cardano/transaction.dart";
import "../../utils/sugar.dart";
import "../../utils/transformations.dart";
import "../ada_types.dart";
import "../cardano_wallet.dart";
import "drep_diff_info.dart";
import "proposal_diff_info.dart";
import "vote_info.dart";

part "signing_types.freezed.dart";

@Freezed(copyWith: false)
class TxDiff with _$TxDiff {

  const factory TxDiff({
    required Value diff,
    required List<Utxo> usedUtxos,
    required String? stakeDelegationPoolId, // bech32 id
    required Drep? dRepDelegation,
    required DRepDiffInfo? dRepRegistration,
    required DRepDiffInfo? dRepUpdate,
    required Credential? authorizeConstitutionalCommitteeHot,
    required Credential? resignConstitutionalCommitteeCold,
    required List<VoteInfo> votes,
    required List<ProposalDiffInfo> proposals,
    required bool dRepDeregistration,
    required bool stakeDeregistration, // no more rewards + no more governance
  }) = _TxDiff;
  const TxDiff._();

  Uint8List marshal() {
    final BinaryWriterImpl writer = BinaryWriterImpl();
    writer.writeByteList(diff.serializeAsBytes());
    writer.writeBytesList(usedUtxos.map((e) => e.serializeAsBytes()).toList());
    writer.write(stakeDelegationPoolId);
    writer.write(dRepDelegation?.serializeAsBytes());
    writer.write(dRepRegistration?.marshal());
    writer.write(dRepUpdate?.marshal());
    writer.write(authorizeConstitutionalCommitteeHot?.serializeAsBytes());
    writer.write(resignConstitutionalCommitteeCold?.serializeAsBytes());
    writer.writeBytesList(votes.map((e) => e.marshal()).toList());
    writer.writeBytesList(proposals.map((e) => e.marshal()).toList());
    writer.writeBool(dRepDeregistration);
    writer.writeBool(stakeDeregistration);
    return writer.toBytes();
  }

  factory TxDiff.unmarshal(Uint8List bytes) {
    final BinaryReaderImpl reader = BinaryReaderImpl(bytes);
    final diff = Value.deserializeBytes(reader.readByteList());
    final usedUtxos = reader.readBytesList().map(Utxo.deserializeBytes).toList();
    final stakeDelegationPoolId = reader.read() as String?;
    final dRepDelegation = (reader.read() as Uint8List?) //
        ?.let((bytes) => Drep.deserialize(cborDecode(bytes)));
    final dRepRegistration = (reader.read() as Uint8List?)?.let(DRepDiffInfo.unmarshal);
    final dRepUpdate = (reader.read() as Uint8List?)?.let(DRepDiffInfo.unmarshal);
    final authorizeConstitutionalCommitteeHot = (reader.read() as Uint8List?) //
        ?.let((bytes) => Credential.deserialize(cborDecode(bytes)));
    final resignConstitutionalCommitteeCold = (reader.read() as Uint8List?) //
        ?.let((bytes) => Credential.deserialize(cborDecode(bytes)));
    final votes = reader.readBytesList().map(VoteInfo.unmarshal).toList();
    final proposals = reader.readBytesList().map(ProposalDiffInfo.unmarshal).toList();
    final dRepDeregistration = reader.readBool();
    final stakeDeregistration = reader.readBool();
    return TxDiff(
      diff: diff,
      usedUtxos: usedUtxos,
      stakeDelegationPoolId: stakeDelegationPoolId,
      dRepDelegation: dRepDelegation,
      dRepRegistration: dRepRegistration,
      dRepUpdate: dRepUpdate,
      authorizeConstitutionalCommitteeHot: authorizeConstitutionalCommitteeHot,
      resignConstitutionalCommitteeCold: resignConstitutionalCommitteeCold,
      votes: votes,
      proposals: proposals,
      dRepDeregistration: dRepDeregistration,
      stakeDeregistration: stakeDeregistration,
    );
  }
}

@Freezed(copyWith: false)
class TxSigningBundle with _$TxSigningBundle {

  const factory TxSigningBundle({
    required String receiveAddressBech32,
    required NetworkId networkId,
    required List<TxPreparedForSigning> txsData,
    required Value totalDiff,
    required String? stakeDelegationPoolId, // bech32 id
    required Drep? dRepDelegation,
    required DRepDiffInfo? dRepRegistration,
    required DRepDiffInfo? dRepUpdate,
    required Credential? authorizeConstitutionalCommitteeHot,
    required Credential? resignConstitutionalCommitteeCold,
    required List<VoteInfo> votes,
    required List<ProposalDiffInfo> proposals,
    required bool dRepDeregistration,
    required bool stakeDeregistration, // no more rewards + no more governance
  }) = _TxSigningBundle;
  const TxSigningBundle._();

  Uint8List marshal() {
    final BinaryWriterImpl writer = BinaryWriterImpl();
    writer.writeString(receiveAddressBech32);
    writer.writeInt(networkId.intValue);
    writer.writeBytesList(txsData.map((e) => e.marshal()).toList());
    writer.writeByteList(totalDiff.serializeAsBytes());
    writer.write(stakeDelegationPoolId);
    writer.write(dRepDelegation?.serializeAsBytes());
    writer.write(dRepRegistration?.marshal());
    writer.write(dRepUpdate?.marshal());
    writer.write(authorizeConstitutionalCommitteeHot?.serializeAsBytes());
    writer.write(resignConstitutionalCommitteeCold?.serializeAsBytes());
    writer.writeBytesList(votes.map((e) => e.marshal()).toList());
    writer.writeBytesList(proposals.map((e) => e.marshal()).toList());
    writer.writeBool(dRepDeregistration);
    writer.writeBool(stakeDeregistration);
    return writer.toBytes();
  }

  factory TxSigningBundle.unmarshal(Uint8List bytes) {
    final BinaryReaderImpl reader = BinaryReaderImpl(bytes);
    final receiveAddressBech32 = reader.readString();
    final networkId = NetworkId.fromIntValue(reader.readInt());
    final txsData = reader.readBytesList().map(TxPreparedForSigning.unmarshal).toList();
    final totalDiff = Value.deserializeBytes(reader.readByteList());
    final stakeDelegationPoolId = reader.read() as String?;
    final dRepDelegation = (reader.read() as Uint8List?) //
        ?.let((bytes) => Drep.deserialize(cborDecode(bytes)));
    final dRepRegistration = (reader.read() as Uint8List?)?.let(DRepDiffInfo.unmarshal);
    final dRepUpdate = (reader.read() as Uint8List?)?.let(DRepDiffInfo.unmarshal);
    final authorizeConstitutionalCommitteeHot = (reader.read() as Uint8List?) //
        ?.let((bytes) => Credential.deserialize(cborDecode(bytes)));
    final resignConstitutionalCommitteeCold = (reader.read() as Uint8List?) //
        ?.let((bytes) => Credential.deserialize(cborDecode(bytes)));
    final votes = reader.readBytesList().map(VoteInfo.unmarshal).toList();
    final proposals = reader.readBytesList().map(ProposalDiffInfo.unmarshal).toList();
    final dRepDeregistration = reader.readBool();
    final stakeDeregistration = reader.readBool();
    return TxSigningBundle(
      receiveAddressBech32: receiveAddressBech32,
      networkId: networkId,
      txsData: txsData,
      totalDiff: totalDiff,
      stakeDelegationPoolId: stakeDelegationPoolId,
      dRepDelegation: dRepDelegation,
      dRepRegistration: dRepRegistration,
      dRepUpdate: dRepUpdate,
      authorizeConstitutionalCommitteeHot: authorizeConstitutionalCommitteeHot,
      resignConstitutionalCommitteeCold: resignConstitutionalCommitteeCold,
      votes: votes,
      proposals: proposals,
      dRepDeregistration: dRepDeregistration,
      stakeDeregistration: stakeDeregistration,
    );
  }

  Future<TxSignedBundle> signWith(final CardanoWallet wallet) async => wallet.signTransactionsBundle(this);
}

@freezed
class TxSignedBundle with _$TxSignedBundle {

  const factory TxSignedBundle({
    required String receiveAddressBech32,
    required NetworkId networkId,
    required List<TxAndSignature> txsData,
    required Value totalDiff,
  }) = _TxSignedBundle;
  const TxSignedBundle._();

  Uint8List marshal() {
    final BinaryWriterImpl writer = BinaryWriterImpl();
    writer.writeString(receiveAddressBech32);
    writer.writeInt(networkId.intValue);
    writer.writeBytesList(txsData.map((e) => e.marshal()).toList());
    writer.writeByteList(totalDiff.serializeAsBytes());
    return writer.toBytes();
  }

  factory TxSignedBundle.unmarshal(Uint8List bytes) {
    final BinaryReaderImpl reader = BinaryReaderImpl(bytes);
    final receiveAddressBech32 = reader.readString();
    final networkId = NetworkId.fromIntValue(reader.readInt());
    final txsData = reader.readBytesList().map(TxAndSignature.unmarshal).toList();
    final totalDiff = Value.deserializeBytes(reader.readByteList());
    return TxSignedBundle(
      receiveAddressBech32: receiveAddressBech32,
      networkId: networkId,
      txsData: txsData,
      totalDiff: totalDiff,
    );
  }
}

@Freezed(copyWith: false)
class TxPreparedForSigning with _$TxPreparedForSigning {

  const factory TxPreparedForSigning({
    required CardanoTransaction tx,
    required TxDiff txDiff,
    required Iterable<Utxo> utxosBeforeTx,
    required Set<String> signingAddressesRequired,
  }) = _TxPreparedForSigning;
  const TxPreparedForSigning._();

  Uint8List marshal() {
    final BinaryWriterImpl writer = BinaryWriterImpl();
    writer.writeByteList(tx.serializeAsBytes());
    writer.writeByteList(txDiff.marshal());
    writer.writeBytesList(utxosBeforeTx.map((e) => e.serializeAsBytes()).toList());
    writer.writeStringList(signingAddressesRequired.toList());
    return writer.toBytes();
  }

  factory TxPreparedForSigning.unmarshal(Uint8List bytes) {
    final BinaryReaderImpl reader = BinaryReaderImpl(bytes);
    final tx = CardanoTransaction.deserializeBytes(reader.readByteList());
    final txDiff = TxDiff.unmarshal(reader.readByteList());
    final utxos = reader.readBytesList().map(Utxo.deserializeBytes).toList();
    final signingAddressesRequired = reader.readStringList().toSet();
    return TxPreparedForSigning(
      tx: tx,
      txDiff: txDiff,
      utxosBeforeTx: utxos,
      signingAddressesRequired: signingAddressesRequired,
    );
  }
}

@Freezed(copyWith: false)
class TxAndSignature with _$TxAndSignature {

  const factory TxAndSignature({
    required CardanoTransaction tx,
    required TxDiff txDiff,
    required Iterable<Utxo> utxosBeforeTx,
    required Set<String> signingAddressesRequired,
    required WitnessSet nweSignatures,
  }) = _TxAndSignature;
  const TxAndSignature._();

  Uint8List marshal() {
    final BinaryWriterImpl writer = BinaryWriterImpl();
    writer.writeByteList(tx.serializeAsBytes());
    writer.writeByteList(txDiff.marshal());
    writer.writeBytesList(utxosBeforeTx.map((e) => e.serializeAsBytes()).toList());
    writer.writeStringList(signingAddressesRequired.toList());
    writer.writeByteList(nweSignatures.serializeAsBytes());
    return writer.toBytes();
  }

  factory TxAndSignature.unmarshal(Uint8List bytes) {
    final BinaryReaderImpl reader = BinaryReaderImpl(bytes);
    final tx = CardanoTransaction.deserializeBytes(reader.readByteList());
    final txDiff = TxDiff.unmarshal(reader.readByteList());
    final utxos = reader.readBytesList().map(Utxo.deserializeBytes).toList();
    final signingAddressesRequired = reader.readStringList().toSet();
    final nweSignatures = WitnessSet.deserializeBytes(reader.readByteList());
    return TxAndSignature(
      tx: tx,
      txDiff: txDiff,
      utxosBeforeTx: utxos,
      signingAddressesRequired: signingAddressesRequired,
      nweSignatures: nweSignatures,
    );
  }
}
