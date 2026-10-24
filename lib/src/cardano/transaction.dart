// ignore_for_file: omit_local_variable_types

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:collection/collection.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../exceptions/signing_exceptions.dart";
import "../hd/address/cardano_address.dart";
import "../hd/signing/drep_diff_info.dart";
import "../hd/signing/proposal_diff_info.dart";
import "../hd/signing/signing_types.dart";
import "../hd/signing/vote_info.dart";
import "../hd/util/CborDeserializationException.dart";
import "../utils/cbor_x.dart";
import "../utils/transformations.dart";
import "0_body/19_voting/gov_action_id.dart";
import "0_body/4_cert/certificate.dart";
import "0_body/transaction_body.dart";
import "1_witness_set/witness_set.dart";
import "cbor_encodable.dart";
import "metadata.dart";
import "shared/asset.dart";
import "shared/utxo.dart";

part "transaction.freezed.dart";

bool debugAssertEnabled = false;

void conditionalAssert(bool Function() fct, [String? message]) {
  if (debugAssertEnabled) {
    assert(fct(), message);
  }
}

/// outer wrapper of a Cardano blockchain transaction.
@freezed
sealed class CardanoTransaction with _$CardanoTransaction implements CborEncodable {
  factory CardanoTransaction({
    required CardanoTransactionBody body,
    required WitnessSet witnessSet,
    required bool isValidDi,
    required CBORMetadata? auxiliaryData,
    required bool overrideBodyMetadataHash, // NEVER USE THIS FOR PARTIAL SIGN
  }) => CardanoTransaction._hidden(
    body: overrideBodyMetadataHash
        ? CardanoTransactionBody.create(
            //rebuild body to include metadataHash
            inputs: body.inputs,
            outputs: body.outputs,
            fee: body.fee,
            ttl: body.ttl,
            certs: body.certs,
            withdrawals: body.withdrawals,
            metadataHash: auxiliaryData?.computeBlake2bHash256(),
            //optionally add hash if metadata present
            validityStartInterval: body.validityStartInterval,
            mint: body.mint,
            scriptDataHash: body.scriptDataHash,
            collateral: body.collateral,
            requiredSigners: body.requiredSigners,
            networkId: body.networkId,
            collateralReturn: body.collateralReturn,
            totalCollateral: body.totalCollateral,
            referenceInputs: body.referenceInputs,
            votingProcedures: body.votingProcedures,
            proposalProcedures: body.proposalProcedures,
            currentTreasuryValue: body.currentTreasuryValue,
            donation: body.donation,
          )
        : body,
    witnessSet: witnessSet,
    isValidDi: isValidDi,
    auxiliaryData: auxiliaryData,
  );
  const CardanoTransaction._();

  const factory CardanoTransaction._hidden({
    required CardanoTransactionBody body, // 0
    required WitnessSet witnessSet, // 1
    required bool isValidDi, // 2
    required CBORMetadata? auxiliaryData, // 3
    @Default(CborLengthType.definite) CborLengthType lengthType,
  }) = _CardanoTransaction;

  CardanoTransaction copyWithAdditionalSignatures(WitnessSet additionalWitnessSet) =>
      copyWith(witnessSet: witnessSet + additionalWitnessSet);

  /// See [CardanoTransactionBody.hasAscendingKeyOrder].
  bool get hasAscendingBodyKeyOrder => body.hasAscendingKeyOrder;

  factory CardanoTransaction.deserializeBytes(Uint8List transactionBytes) {
    final list = cbor.decode(transactionBytes) as CborList;
    // if (list.length != 1) throw CborDeserializationException();
    final tx = list.length == 1 ? list[0] as CborList : list;

    final cIsValidDi = tx[2] as CborSimpleValue;
    final minTxLen = cIsValidDi is CborNull ? 2 : 3;

    if (tx.length < minTxLen) {
      throw CborDeserializationException("minTxLen too small: ${tx.length}");
    }
    final cAuxData = cIsValidDi is CborNull ? const CborNull() : tx[3];

    final result = CardanoTransaction.deserialize(
      cBody: tx[0] as CborMap,
      cWitnessSet: tx[1] as CborMap,
      cIsValidDi: cIsValidDi is CborBool ? cIsValidDi : const CborBool(true),
      cAuxData: cAuxData,
      lengthType: tx.type,
    );

    conditionalAssert(() => const DeepCollectionEquality().equals(result.serializeAsBytes(), transactionBytes));
    conditionalAssert(() => result.serializeHexString() == transactionBytes.hexEncode());

    return result;
  }

  factory CardanoTransaction.deserializeFromHex(String transactionHex) {
    return CardanoTransaction.deserializeBytes(transactionHex.hexDecode());
  }

  factory CardanoTransaction.deserialize({
    required CborMap cBody,
    required CborMap cWitnessSet,
    required CborBool cIsValidDi,
    required CborValue cAuxData,
    CborLengthType lengthType = CborLengthType.definite,
  }) {
    final body = CardanoTransactionBody.deserialize(cMap: cBody);
    final WitnessSet witnessSet = WitnessSet.deserialize(cMap: cWitnessSet);
    final CBORMetadata auxiliaryData = CBORMetadata.deserialize(cValue: cAuxData);

    return CardanoTransaction._hidden(
      body: body,
      witnessSet: witnessSet,
      isValidDi: cIsValidDi.value,
      auxiliaryData: auxiliaryData,
      lengthType: lengthType,
    );
  }

  @override
  CborList serialize({required bool forJson}) {
    return CborList.of(
      [
        body.serialize(forJson: forJson),
        witnessSet.serialize(forJson: forJson),
        CborBool(isValidDi),
        auxiliaryData?.serialize(forJson: forJson) ?? const CborNull(),
      ],
      type: lengthType,
    );
  }

  /// Summarises what this transaction does to the wallet identified by [receiveAddressBech32] and [walletUtxos].
  ///
  /// [txDiManagement] decides what happens when [isValidDi] is false. The flag is not part of the signed body and can
  /// be switched after signing without breaking any signature, so the default refuses such transactions by throwing
  /// [TransactionMarkedInvalidException]. Only pass a `dangerously*` option for transactions already on chain; see
  /// [TxDiManagement].
  ///
  /// The collateral is not part of the summary, so a transaction whose collateral exposure (the wallet's collateral
  /// inputs minus the collateral return to [receiveAddressBech32]) is above [maxCollateralAdaExposure] ADA or includes
  /// native tokens is refused with [CollateralExposureTooHighException].
  TxDiff diff({
    required String receiveAddressBech32,
    required String drepCredential,
    required String constitutionalCommitteeColdCredential,
    required String constitutionalCommitteeHotCredential,
    required Iterable<Utxo> walletUtxos,
    TxDiManagement txDiManagement = TxDiManagement.safeAlwaysReject,
    double maxCollateralAdaExposure = 15.0,
  }) {
    final drepCredentialBytes = drepCredential.hexDecode();
    final constitutionalCommitteeColdCredentialBytes = constitutionalCommitteeColdCredential.hexDecode();
    final constitutionalCommitteeHotCredentialBytes = constitutionalCommitteeHotCredential.hexDecode();

    final receiveAddress = CardanoAddress.fromBech32OrBase58(receiveAddressBech32);
    final stakeCredentialsBytes = receiveAddress.stakeCredentialsBytes;
    final stakeBech32Address = receiveAddress.stakeBech32Encoded;
    if (stakeBech32Address == null) {
      throw Exception("receiveAddressBech32 is not a base or stake address: $receiveAddressBech32");
    }

    const deepEq = DeepCollectionEquality();
    final utxoByHashAndId = walletUtxos.groupFoldBy(
      (e) => "${e.identifier.transactionHash.hexValue}#${e.identifier.index}",
      (previous, element) => element,
    );

    // The ledger takes the collateral inputs and creates only the collateral return if a script fails. The requester
    // can arrange that (script evaluation is fixed by the body, and isValid can be switched after signing), so the
    // wallet's collateral is at risk whatever the transaction is meant to do.
    final collateralFromThisWallet = (body.collateral?.data ?? [])
        .map((e) => utxoByHashAndId["${e.transactionHash.hexValue}#${e.index}"])
        .nonNulls
        .toList();
    final collateralSpent = collateralFromThisWallet.fold(
      Value.v0(lovelace: CborInt(BigInt.zero)),
      (previousValue, element) => previousValue + element.content.value,
    );
    final collateralReturn = body.collateralReturn;
    final collateralReturned =
        collateralReturn != null && deepEq.equals(collateralReturn.address.value, receiveAddress.bytes)
        ? collateralReturn.value
        : Value.v0(lovelace: CborInt(BigInt.zero));
    final collateralExposure = collateralSpent - collateralReturned;
    final exposesTokens = collateralExposure.multiAssets.any(
      (e) => e.assets.any((a) => a.value.toBigInt() > BigInt.zero),
    );
    if (collateralExposure.lovelace.toBigInt() / BigInt.from(1000000) > maxCollateralAdaExposure || exposesTokens) {
      throw CollateralExposureTooHighException(
        txHash: body.blake2bHash256Hex(),
        exposure: collateralExposure,
        maxAdaExposure: maxCollateralAdaExposure,
        walletAddressBech32: receiveAddressBech32,
      );
    }

    // The isValid flag is not covered by the signature (witnesses sign the body hash only) and can be switched after
    // signing, so it is only trustworthy for transactions already on chain. See TxDiManagement.
    if (!isValidDi) {
      switch (txDiManagement) {
        case TxDiManagement.safeAlwaysReject:
          throw TransactionMarkedInvalidException(txHash: body.blake2bHash256Hex());
        case TxDiManagement.dangerouslyAssumeOnlyCollateralBurnOnInvalidDi:
          // Phase-2 script validation failed: the ledger consumes the collateral inputs and creates only the
          // collateral return output. Regular inputs, outputs, withdrawals, certificates, votes and proposals have no
          // effect.
          return TxDiff(
            diff: collateralReturned - collateralSpent,
            usedUtxos: collateralFromThisWallet,
            stakeDelegationPoolId: null,
            dRepDelegation: null,
            dRepRegistration: null,
            dRepUpdate: null,
            authorizeConstitutionalCommitteeHot: null,
            resignConstitutionalCommitteeCold: null,
            votes: const [],
            proposals: const [],
            dRepDeregistration: false,
            stakeDeregistration: false,
          );
        case TxDiManagement.dangerouslyAssumeTrue:
        // Summarised below as if the flag were true: this is what a flipped flag makes the body do.
      }
    }

    final outputs = body.outputs;

    final withdrawals = body.withdrawals
        ?.where((item) => item.stakeAddressBech32 == stakeBech32Address)
        .fold(BigInt.zero, (previousValue, element) => previousValue + element.coin)
        .toCborInt();

    final incoming =
        outputs //
            .where((item) => deepEq.equals(item.address.value, receiveAddress.bytes))
            .fold(
              Value.v0(lovelace: CborInt(BigInt.zero)),
              (previousValue, element) => previousValue + element.value,
            );

    final consumedUtxosFromThisWallet = body
        .inputs
        .data //
        .map((e) => utxoByHashAndId["${e.transactionHash.hexValue}#${e.index}"])
        .nonNulls;

    final outgoing = consumedUtxosFromThisWallet.fold(
      Value.v0(lovelace: withdrawals ?? CborInt(BigInt.zero)),
      (previousValue, element) => previousValue + element.content.value,
    );

    final diff = incoming - outgoing;

    final votesMap = body.votingProcedures?.voting ?? {};
    final thisWalletVotes = votesMap.entries
        .map((pair) {
          final voter = pair.key;
          final isThisWallet =
              voter.vKeyHash.deepEquals(drepCredentialBytes) ||
              voter.vKeyHash.deepEquals(constitutionalCommitteeHotCredentialBytes);
          if (!isThisWallet) return <VoteInfo>[];
          final (votes, _) = pair.value;
          return votes.entries.map((v) => VoteInfo(action: v.key, vote: v.value.vote)).toList();
        })
        .flattened
        .toList();

    final bodyHash = body.blake2bHash256Hex();

    bool isWalletStake(Uint8List vKeyHash) => vKeyHash.deepEquals(stakeCredentialsBytes);
    bool isWalletDRep(Uint8List vKeyHash) => vKeyHash.deepEquals(drepCredentialBytes);

    return TxDiff(
      diff: diff,
      usedUtxos: consumedUtxosFromThisWallet.toList(),
      stakeDelegationPoolId: body.certs?.certificates
          .map(
            (e) => switch (e) {
              Certificate_StakeRegistrationLegacy() => null,
              Certificate_StakeDeRegistrationLegacy() => null,
              Certificate_StakeDelegation() =>
                e.stakeCredential.vKeyHash.deepEquals(stakeCredentialsBytes) ? e.stakePoolId : null,
              Certificate_PoolRegistration() => null,
              Certificate_PoolRetirement() => null,
              Certificate_StakeRegistration() => null,
              Certificate_StakeDeRegistration() => null,
              Certificate_VoteDelegation() => null,
              Certificate_StakeVoteDelegation() =>
                e.stakeCredential.vKeyHash.deepEquals(stakeCredentialsBytes) ? e.stakePoolId : null,
              Certificate_StakeRegistrationDelegation() =>
                e.stakeCredential.vKeyHash.deepEquals(stakeCredentialsBytes) ? e.stakePoolId : null,
              Certificate_VoteRegistrationDelegation() => null,
              Certificate_StakeVoteRegistrationDelegation() =>
                e.stakeCredential.vKeyHash.deepEquals(stakeCredentialsBytes) ? e.stakePoolId : null,
              Certificate_AuthorizeCommitteeHot() => null,
              Certificate_ResignCommitteeCold() => null,
              Certificate_RegisterDRep() => null,
              Certificate_UnregisterDRep() => null,
              Certificate_UpdateDRep() => null,
            },
          )
          .nonNulls
          .lastOrNull
          ?.bech32PoolId,
      authorizeConstitutionalCommitteeHot: body.certs?.certificates
          .map(
            (e) => switch (e) {
              Certificate_AuthorizeCommitteeHot() =>
                e.committeeColdCredential.vKeyHash.deepEquals(constitutionalCommitteeColdCredentialBytes)
                    ? e.committeeHotCredential
                    : null,
              _ => null,
            },
          )
          .nonNulls
          .lastOrNull,
      resignConstitutionalCommitteeCold: body.certs?.certificates
          .map(
            (e) => switch (e) {
              Certificate_ResignCommitteeCold() =>
                e.committeeColdCredential.vKeyHash.deepEquals(constitutionalCommitteeColdCredentialBytes)
                    ? e.committeeColdCredential
                    : null,
              _ => null,
            },
          )
          .nonNulls
          .lastOrNull,
      dRepDelegation: body.certs?.certificates
          .map(
            (e) => switch (e) {
              Certificate_VoteDelegation() =>
                e.stakeCredential.vKeyHash.deepEquals(stakeCredentialsBytes) ? e.dRep : null,
              Certificate_StakeVoteDelegation() =>
                e.stakeCredential.vKeyHash.deepEquals(stakeCredentialsBytes) ? e.dRep : null,
              Certificate_VoteRegistrationDelegation() =>
                e.stakeCredential.vKeyHash.deepEquals(stakeCredentialsBytes) ? e.dRep : null,
              Certificate_StakeVoteRegistrationDelegation() =>
                e.stakeCredential.vKeyHash.deepEquals(stakeCredentialsBytes) ? e.dRep : null,
              Certificate_StakeRegistrationLegacy() => null,
              Certificate_StakeDeRegistrationLegacy() => null,
              Certificate_StakeDelegation() => null,
              Certificate_PoolRegistration() => null,
              Certificate_PoolRetirement() => null,
              Certificate_StakeRegistration() => null,
              Certificate_StakeDeRegistration() => null,
              Certificate_StakeRegistrationDelegation() => null,
              Certificate_AuthorizeCommitteeHot() => null,
              Certificate_ResignCommitteeCold() => null,
              Certificate_RegisterDRep() => null,
              Certificate_UnregisterDRep() => null,
              Certificate_UpdateDRep() => null,
            },
          )
          .nonNulls
          .lastOrNull,
      dRepRegistration: body.certs?.certificates
          .map(
            (e) => switch (e) {
              Certificate_RegisterDRep() =>
                e.dRepCredential.vKeyHash.deepEquals(drepCredentialBytes)
                    ? DRepDiffInfo(
                        dRepId: e.dRepCredential.vKeyHash.bech32Encode("drep"),
                        metadataUrl: e.anchor?.anchorUrl,
                      )
                    : null,
              _ => null,
            },
          )
          .nonNulls
          .lastOrNull,
      dRepUpdate: body.certs?.certificates
          .map(
            (e) => switch (e) {
              Certificate_UpdateDRep() =>
                e.dRepCredential.vKeyHash.deepEquals(drepCredentialBytes)
                    ? DRepDiffInfo(
                        dRepId: e.dRepCredential.vKeyHash.bech32Encode("drep"),
                        metadataUrl: e.anchor?.anchorUrl,
                      )
                    : null,
              _ => null,
            },
          )
          .nonNulls
          .lastOrNull,
      // Certificates apply in order, so the last one that registers or deregisters the wallet's credential decides
      // its state after the transaction. Certificates of other credentials do not change it.
      dRepDeregistration:
          body.certs?.certificates
              .map(
                (e) => switch (e) {
                  Certificate_RegisterDRep() when isWalletDRep(e.dRepCredential.vKeyHash) => false,
                  Certificate_UnregisterDRep() when isWalletDRep(e.dRepCredential.vKeyHash) => true,
                  _ => null,
                },
              )
              .nonNulls
              .lastOrNull ??
          false,
      stakeDeregistration:
          body.certs?.certificates
              .map(
                (e) => switch (e) {
                  Certificate_StakeRegistrationLegacy() when isWalletStake(e.stakeCredential.vKeyHash) => false,
                  Certificate_StakeRegistration() when isWalletStake(e.stakeCredential.vKeyHash) => false,
                  Certificate_StakeRegistrationDelegation() when isWalletStake(e.stakeCredential.vKeyHash) => false,
                  Certificate_VoteRegistrationDelegation() when isWalletStake(e.stakeCredential.vKeyHash) => false,
                  Certificate_StakeVoteRegistrationDelegation() when isWalletStake(e.stakeCredential.vKeyHash) => false,
                  Certificate_StakeDeRegistrationLegacy() when isWalletStake(e.stakeCredential.vKeyHash) => true,
                  Certificate_StakeDeRegistration() when isWalletStake(e.stakeCredential.vKeyHash) => true,
                  _ => null,
                },
              )
              .nonNulls
              .lastOrNull ??
          false,
      proposals:
          body.proposalProcedures
              ?.mapIndexed(
                (index, e) => ProposalDiffInfo(
                  proposalId: GovActionId(transactionId: bodyHash, govActionIndex: index),
                  proposal: e.govAction,
                ),
              )
              .toList() ??
          [],
      votes: thisWalletVotes,
    );
  }
}

extension _Uint8ListX on Uint8List {
  bool deepEquals(Uint8List? other) {
    if (other == null) return false;
    const ListEquality().equals(this, other);
    if (length != other.length) return false;
    for (var i = 0; i < length; i++) {
      if (this[i] != other[i]) return false;
    }
    return true;
  }
}
