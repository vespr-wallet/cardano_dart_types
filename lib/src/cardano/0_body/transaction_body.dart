import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:hex/hex.dart";

import "../../../binary/binary_reader_impl.dart";
import "../../../binary/binary_writer_impl.dart";
import "../../exceptions/parse_exceptions.dart";
import "../../hd/ada_types.dart";
import "../../hd/util/blake2bhash.dart";
import "../../utils/iterable_extensions.dart";
import "../../utils/sugar.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";
import "../shared/asset.dart";
import "../transaction.dart";
import "../util.dart";
import "0_inputs/transaction_inputs.dart";
import "14_required_signers/required_signers.dart";
import "19_voting/voting_procedures.dart";
import "1_outputs/transaction_output.dart";
import "20_proposal/proposal_procedure.dart";
import "4_cert/certificates.dart";
import "5_withdraw/withdraw.dart";

part "transaction_body.freezed.dart";

// This typedef is a trick to allow type checking
// against a private class.
typedef Blake2bHash256Computed = _Blake2bHash256Computed;

@freezed
sealed class Blake2bHash256 with _$Blake2bHash256 {
  const Blake2bHash256._();
  const factory Blake2bHash256.passed({
    required String blake2bHash256,
  }) = Blake2bHash256Passed;

  const factory Blake2bHash256._computed({
    required String blake2bHash256,
  }) = _Blake2bHash256Computed;

  const factory Blake2bHash256.none() = Blake2bHash256None;

  String? get value => switch (this) {
    Blake2bHash256Passed(:final blake2bHash256) => blake2bHash256,
    _Blake2bHash256Computed(:final blake2bHash256) => blake2bHash256,
    Blake2bHash256None() => null,
  };

  int get type => switch (this) {
    Blake2bHash256Passed() => 0,
    _Blake2bHash256Computed() => 1,
    Blake2bHash256None() => 2,
  };

  Uint8List marshal() {
    final writer = BinaryWriterImpl();
    writer.writeInt(type);
    writer.writeString(value ?? "");
    return writer.toBytes();
  }

  factory Blake2bHash256.unmarshal(Uint8List bytes) {
    final reader = BinaryReaderImpl(bytes);
    final type = reader.readInt();
    final value = reader.readString();
    return switch (type) {
      0 => Blake2bHash256Passed(blake2bHash256: value),
      1 => _Blake2bHash256Computed(blake2bHash256: value),
      2 => const Blake2bHash256None(),
      _ => throw Exception("Invalid Blake2bHash256 type: $type"),
    };
  }
}

/// Core of the cardano transaction that is signed.
@freezed
sealed class CardanoTransactionBody with _$CardanoTransactionBody implements CborEncodable {
  CardanoTransactionBody._();

  factory CardanoTransactionBody.create({
    // TX Body Fields
    required CardanoTransactionInputs inputs, // 0
    required List<CardanoTransactionOutput> outputs, // 1
    required BigInt fee, // 2
    // OPTIONAL
    BigInt? ttl, // 3
    Certificates? certs, // 4
    List<Withdraw>? withdrawals, // 5
    // 6 - update ; what is it?
    Uint8List? metadataHash, // 7
    BigInt? validityStartInterval, // 8
    List<MultiAsset>? mint, // 9
    Uint8List? scriptDataHash, // 11
    CardanoTransactionInputs? collateral, // 13
    RequiredSigners? requiredSigners, // 14
    NetworkId? networkId, // 15
    // BABBAGE ERA
    CardanoTransactionOutput? collateralReturn, // 16
    BigInt? totalCollateral, // 17
    CardanoTransactionInputs? referenceInputs, // 18
    // CONWAY ERA
    VotingProcedures? votingProcedures, // 19
    List<ProposalProcedure>? proposalProcedures, // 20
    CborInt? currentTreasuryValue, // 21
    CborInt? donation, // 22
  }) => CardanoTransactionBody._hidden(
    blake2bHash256: const Blake2bHash256.none(),
    inputs: inputs,
    outputs: outputs,
    fee: fee,
    ttl: ttl,
    certs: certs,
    withdrawals: withdrawals,
    metadataHash: metadataHash,
    validityStartInterval: validityStartInterval,
    mint: mint,
    scriptDataHash: scriptDataHash,
    collateral: collateral,
    requiredSigners: requiredSigners,
    networkId: networkId,
    collateralReturn: collateralReturn,
    totalCollateral: totalCollateral,
    referenceInputs: referenceInputs,
    votingProcedures: votingProcedures,
    proposalProcedures: proposalProcedures,
    currentTreasuryValue: currentTreasuryValue,
    donation: donation,
  );

  factory CardanoTransactionBody._hidden({
    // Non-null when deserialized from hex/cbor
    required Blake2bHash256 blake2bHash256,
    // TX Body Fields
    required CardanoTransactionInputs inputs, // 0
    required List<CardanoTransactionOutput> outputs, // 1
    required BigInt fee, // 2
    // OPTIONAL
    required BigInt? ttl, // 3
    required Certificates? certs, // 4
    required List<Withdraw>? withdrawals, // 5
    // 6 - update ; what is it?
    required Uint8List? metadataHash, // 7
    required BigInt? validityStartInterval, // 8
    required List<MultiAsset>? mint, // 9
    required Uint8List? scriptDataHash, // 11
    required CardanoTransactionInputs? collateral, // 13
    required RequiredSigners? requiredSigners, // 14
    required NetworkId? networkId, // 15
    // BABBAGE ERA
    required CardanoTransactionOutput? collateralReturn, // 16
    required BigInt? totalCollateral, // 17
    required CardanoTransactionInputs? referenceInputs, // 18
    // CONWAY ERA
    required VotingProcedures? votingProcedures, // 19
    required List<ProposalProcedure>? proposalProcedures, // 20
    required CborInt? currentTreasuryValue, // 21
    required CborInt? donation, // 22
  }) = _CardanoTransactionBody;

  factory CardanoTransactionBody._deserialized({
    // Serialization info
    required Blake2bHash256 blake2bHash256, // used for signing the tx
    // TX Body Fields
    required CardanoTransactionInputs inputs, // 0
    required List<CardanoTransactionOutput> outputs, // 1
    required BigInt fee, // 2
    // OPTIONAL
    required BigInt? ttl, // 3
    required Certificates? certs, // 4
    required List<Withdraw>? withdrawals, // 5
    // 6 - update ; what is it?
    required Uint8List? metadataHash, // 7
    required BigInt? validityStartInterval, // 8
    required List<MultiAsset>? mint, // 9
    required Uint8List? scriptDataHash, // 11
    required CardanoTransactionInputs? collateral, // 13
    required RequiredSigners? requiredSigners, // 14
    required NetworkId? networkId, // 15
    // BABBAGE ERA
    required CardanoTransactionOutput? collateralReturn, // 16
    required BigInt? totalCollateral, // 17
    required CardanoTransactionInputs? referenceInputs, // 18
    // CONWAY ERA
    required VotingProcedures? votingProcedures, // 19
    required List<ProposalProcedure>? proposalProcedures, // 20
    required CborInt? currentTreasuryValue, // 21
    required CborInt? donation, // 22
  }) => CardanoTransactionBody._hidden(
    blake2bHash256: blake2bHash256,
    inputs: inputs,
    outputs: outputs,
    fee: fee,
    ttl: ttl,
    certs: certs,
    withdrawals: withdrawals,
    metadataHash: metadataHash,
    validityStartInterval: validityStartInterval,
    mint: mint,
    scriptDataHash: scriptDataHash,
    collateral: collateral,
    requiredSigners: requiredSigners,
    networkId: networkId,
    collateralReturn: collateralReturn,
    totalCollateral: totalCollateral,
    referenceInputs: referenceInputs,
    votingProcedures: votingProcedures,
    proposalProcedures: proposalProcedures,
    currentTreasuryValue: currentTreasuryValue,
    donation: donation,
  );

  factory CardanoTransactionBody.deserializeHex(String hexData) {
    final bytes = hexData.hexDecode();

    return CardanoTransactionBody.deserialize(
      cMap: bytes.cborDecode() as CborMap,
      originalBodyBlake2bHash256: blake2bHash256(bytes).hexEncode(),
    );
  }

  factory CardanoTransactionBody.deserialize({
    required CborMap cMap,
    String? originalBodyBlake2bHash256, // used for signing the tx
  }) {
    final bodyBlake2bHash256 = originalBodyBlake2bHash256 != null
        ? Blake2bHash256.passed(blake2bHash256: originalBodyBlake2bHash256)
        : Blake2bHash256._computed(blake2bHash256: blake2bHash256(cMap.uint8ListEncode()).hexEncode());

    final inputsCbor = cMap[const CborSmallInt(0)];
    final outputsCbor = cMap[const CborSmallInt(1)];
    final feeCbor = cMap[const CborSmallInt(2)];
    final ttlCbor = cMap[const CborSmallInt(3)];
    final certsCbor = cMap[const CborSmallInt(4)];
    final withdrawalsCbor = cMap[const CborSmallInt(5)];
    final updateCbor = cMap[const CborSmallInt(6)];
    final metadataHashCbor = cMap[const CborSmallInt(7)];
    final validityStartIntervalCbor = cMap[const CborSmallInt(8)];
    final mintCbor = cMap[const CborSmallInt(9)];
    final scriptDataHashCbor = cMap[const CborSmallInt(11)];
    final collateralCbor = cMap[const CborSmallInt(13)];
    final requiredSignersCbor = cMap[const CborSmallInt(14)];
    final networkIdCbor = cMap[const CborSmallInt(15)];
    final collateralReturnCbor = cMap[const CborSmallInt(16)];
    final totalCollateralCbor = cMap[const CborSmallInt(17)];
    final referenceInputsCbor = cMap[const CborSmallInt(18)];
    final votingProceduresCbor = cMap[const CborSmallInt(19)];
    final proposalProceduresCbor = cMap[const CborSmallInt(20)];
    final currentTreasuryValueCbor = cMap[const CborSmallInt(21)];
    final donationCbor = cMap[const CborSmallInt(22)];

    final inputs = CardanoTransactionInputs.deserialize(inputsCbor!);
    final outputs = (outputsCbor! as CborList).map(CardanoTransactionOutput.deserialize).toList();
    final fee = (feeCbor! as CborInt).toBigInt();
    final ttl = ttlCbor == null ? null : (ttlCbor as CborInt).toBigInt();
    final certs = certsCbor != null ? Certificates.deserialize(certsCbor) : null;
    final withdrawals = withdrawalsCbor?.let((cValue) {
      final withdrawalsCborMap = cValue as CborMap;
      return withdrawalsCborMap.entries.map(
        (e) => Withdraw.deserialize(stakeAddress: e.key as CborBytes, coin: e.value as CborInt),
      );
    });
    if (updateCbor != null) {
      throw TransactionBodyParseException("updateCbor not implemented");
    }
    final metadataHash = metadataHashCbor == null ? null : (metadataHashCbor as CborBytes).bytes.toUint8List();
    final validityStartInterval = validityStartIntervalCbor == null
        ? null
        : (validityStartIntervalCbor as CborInt).toBigInt();
    final mint = (mintCbor == null)
        ? null
        : (mintCbor as CborMap).entries.map((entry) => MultiAsset.deserialize(cMapEntry: entry)).toList();
    final scriptDataHash = scriptDataHashCbor?.let((p0) => (p0 as CborBytes).bytes.toUint8List());
    final collateral = collateralCbor?.let(CardanoTransactionInputs.deserialize);
    final requiredSigners = requiredSignersCbor?.let(RequiredSigners.deserialize);
    final networkId = networkIdCbor?.let((p0) => NetworkId.fromIntValue((p0 as CborSmallInt).toInt()));
    final collateralReturn = collateralReturnCbor?.let(CardanoTransactionOutput.deserialize);
    final totalCollateral = totalCollateralCbor?.let((p0) => (p0 as CborInt).toBigInt());
    final referenceInputs = referenceInputsCbor?.let(CardanoTransactionInputs.deserialize);
    final votingProcedures =
        votingProceduresCbor ==
            null //
        ? null
        : VotingProcedures.deserialize(cValue: votingProceduresCbor);
    final proposalProcedures = switch (proposalProceduresCbor) {
      null => null,
      CborList() => proposalProceduresCbor.map(ProposalProcedure.deserialize),
      _ => throw TransactionBodyParseException(
        "Invalid proposalProceduresCbor type: ${proposalProceduresCbor.runtimeType}",
      ),
    }?.toList(growable: false);

    final result = CardanoTransactionBody._deserialized(
      blake2bHash256: bodyBlake2bHash256,
      inputs: inputs,
      outputs: outputs,
      fee: fee,
      ttl: ttl,
      certs: certs,
      withdrawals: withdrawals?.toList(growable: false),
      metadataHash: metadataHash,
      validityStartInterval: validityStartInterval,
      mint: mint,
      scriptDataHash: scriptDataHash,
      collateral: collateral,
      requiredSigners: requiredSigners,
      networkId: networkId,
      collateralReturn: collateralReturn,
      totalCollateral: totalCollateral,
      referenceInputs: referenceInputs,
      votingProcedures: votingProcedures,
      proposalProcedures: proposalProcedures,
      currentTreasuryValue: currentTreasuryValueCbor as CborInt?,
      donation: donationCbor as CborInt?,
    );

    conditionalAssert(
      () => inputs.serialize(forJson: false).hexEncode() == inputsCbor.hexEncode(),
      "transaction_body: inputs",
    );
    conditionalAssert(
      () => outputs.serialize(forJson: false).hexEncode() == outputsCbor.hexEncode(),
      "transaction_body: outputs",
    );
    conditionalAssert(
      () => certsCbor == null || certs!.serialize(forJson: false).hexEncode() == certsCbor.hexEncode(),
      "transaction_body: certs",
    );
    conditionalAssert(
      () =>
          withdrawalsCbor == null || withdrawals!.serialize(forJson: false).hexEncode() == withdrawalsCbor.hexEncode(),
      "transaction_body: withdrawals",
    );
    conditionalAssert(
      () => mintCbor == null || mint!.serialize(forJson: false).hexEncode() == mintCbor.hexEncode(),
      "transaction_body: mint",
    );
    conditionalAssert(
      () => metadataHashCbor == null || CborBytes(metadataHash!).hexEncode() == metadataHashCbor.hexEncode(),
      "transaction_body: metadataHash",
    );
    conditionalAssert(
      () => scriptDataHashCbor == null || CborBytes(scriptDataHash!).hexEncode() == scriptDataHashCbor.hexEncode(),
      "transaction_body: scriptDataHash",
    );
    conditionalAssert(
      () => collateral?.serialize(forJson: false).hexEncode() == collateralCbor?.hexEncode(),
      "transaction_body: collateral",
    );
    conditionalAssert(
      () => collateralReturn?.serialize(forJson: false).hexEncode() == collateralReturnCbor?.hexEncode(),
      "transaction_body: collateralReturn",
    );
    conditionalAssert(
      () => referenceInputs?.serialize(forJson: false).hexEncode() == referenceInputsCbor?.hexEncode(),
      "transaction_body: referenceInputs",
    );
    conditionalAssert(
      () {
        final encoded = result.serialize(forJson: false);
        final encodedKeys = encoded.keys.toList(growable: false);

        final inputKeys = cMap.keys.toList(growable: false);
        if (encodedKeys.length != inputKeys.length) {
          throw Exception("Keys length mismatch: ${encodedKeys.length} != ${inputKeys.length}");
        }

        for (var i = 0; i < encodedKeys.length; i++) {
          final encodedKey = encodedKeys[i];
          final inputKey = inputKeys[i];
          if (encodedKey != inputKey) {
            throw Exception("Key mismatch: $encodedKey != $inputKey");
          }
          final encodedValue = encoded[encodedKey];
          final inputValue = cMap[inputKey];
          if (encodedValue?.hexEncode() != inputValue?.hexEncode()) {
            throw Exception(
              "Value mismatch for key $encodedKey: ${encodedValue?.hexEncode()} != ${inputValue?.hexEncode()}",
            );
          }
        }

        return true;
      },
      "transaction_body: all",
    );
    conditionalAssert(
      () => result.serializeHexString() == cMap.hexEncode(),
      "transaction_body: serializeHexString",
    );

    return result;
  }

  @override
  CborMap serialize({required bool forJson}) {
    final inputsEntry = MapEntry(
      forJson ? CborString("inputs") : const CborSmallInt(0),
      inputs.serialize(forJson: forJson),
    );

    final outputsEntry = MapEntry(
      forJson ? CborString("outputs") : const CborSmallInt(1),
      outputs.serialize(forJson: forJson),
    );

    final feeEntry = MapEntry(
      forJson ? CborString("fee") : const CborSmallInt(2),
      fee.serialize(forJson: forJson),
    );

    final ttl = this.ttl;
    final maybeTtlEntry = ttl == null
        ? null
        : MapEntry(
            forJson ? CborString("ttl") : const CborSmallInt(3),
            ttl.serialize(forJson: forJson),
          );

    final certs = this.certs;
    final maybeCertsEntry = certs == null
        ? null
        : MapEntry(
            forJson ? CborString("certificates") : const CborSmallInt(4),
            certs.serialize(forJson: forJson),
          );

    final withdrawals = this.withdrawals;
    final maybeWithdrawals = withdrawals == null
        ? null
        : MapEntry(
            forJson ? CborString("withdrawals") : const CborSmallInt(5),
            withdrawals.serialize(forJson: forJson),
          );

    final metadataHash = this.metadataHash;
    final maybeMetadataHash = metadataHash == null || metadataHash.isEmpty
        ? null
        : forJson
        ? MapEntry(CborString("metadataHash"), CborString(HEX.encode(metadataHash)))
        : MapEntry(const CborSmallInt(7), CborBytes(metadataHash));

    final validityStartInterval = this.validityStartInterval;
    final maybeValidityStartInterval = validityStartInterval == null
        ? null
        : MapEntry(
            forJson ? CborString("validityStartInterval") : const CborSmallInt(8),
            CborInt(validityStartInterval),
          );

    final mint = this.mint;
    final maybeMint = mint == null
        ? null
        : MapEntry(
            forJson ? CborString("mint") : const CborSmallInt(9),
            mint.serialize(forJson: forJson),
          );

    final maybeScriptDataHash = scriptDataHash?.let(
      (p0) => MapEntry(
        forJson ? CborString("scriptDataHash") : const CborSmallInt(11),
        p0.serializeCbor(forJson: forJson),
      ),
    );

    final maybeCollateral = collateral?.let(
      (p0) => MapEntry(
        forJson ? CborString("collateral") : const CborSmallInt(13),
        p0.serialize(forJson: forJson),
      ),
    );

    final maybeRequiredSigners = requiredSigners?.let(
      (p0) => MapEntry(
        forJson ? CborString("requiredSigners") : const CborSmallInt(14),
        p0.serialize(forJson: forJson),
      ),
    );

    final maybeNetworkId = networkId?.let(
      (p0) => MapEntry(
        forJson ? CborString("networkId") : const CborSmallInt(15),
        forJson ? CborString(p0.name) : CborSmallInt(p0.intValue),
      ),
    );

    // BABBAGE ERA
    final maybeCollateralReturn = collateralReturn?.let(
      (p0) => MapEntry(
        forJson ? CborString("collateralReturn") : const CborSmallInt(16),
        p0.serialize(forJson: forJson),
      ),
    );
    final maybeTotalCollateral = totalCollateral?.let(
      (p0) => MapEntry(
        forJson ? CborString("totalCollateral") : const CborSmallInt(17),
        p0.serialize(forJson: forJson),
      ),
    );
    final maybeReferenceInputs = referenceInputs?.let(
      (p0) => MapEntry(
        forJson ? CborString("referenceInputs") : const CborSmallInt(18),
        p0.serialize(forJson: forJson),
      ),
    );
    final maybeVotingProcedures = votingProcedures?.let(
      (p0) => MapEntry(
        forJson ? CborString("votingProcedures") : const CborSmallInt(19),
        p0.serialize(forJson: forJson),
      ),
    );
    final maybeProposalProcedures = proposalProcedures?.let(
      (p0) => MapEntry(
        forJson ? CborString("proposalProcedures") : const CborSmallInt(20),
        CborList.of(p0.map((e) => e.serialize(forJson: forJson))),
      ),
    );
    final maybeCurrentTreasuryValue = currentTreasuryValue?.let(
      (p0) => MapEntry(
        forJson ? CborString("currentTreasuryValue") : const CborSmallInt(21),
        p0,
      ),
    );
    final maybeDonation = donation?.let(
      (p0) => MapEntry(
        forJson ? CborString("donation") : const CborSmallInt(22),
        p0,
      ),
    );

    return CborMap.fromEntries(
      [
        inputsEntry, //0:inputs
        outputsEntry, //1:outputs
        feeEntry, //2:fee
        // OPTIONAL
        maybeTtlEntry, //3:ttl (optional)
        maybeCertsEntry, //4:certs (optional)
        maybeWithdrawals, //5:withdrawals (optional)
        maybeMetadataHash, //7:metadataHash (optional)
        maybeValidityStartInterval, //8:validityStartInterval (optional)
        maybeMint, //9:mint (optional)
        maybeScriptDataHash, //11:scriptDataHash
        maybeCollateral, //13:collateral
        maybeRequiredSigners, //14
        maybeNetworkId, //15
        //BABBAGE
        maybeCollateralReturn, //16
        maybeTotalCollateral, //17
        maybeReferenceInputs, //18
        // CONWAY
        maybeVotingProcedures, //19
        maybeProposalProcedures, //20
        maybeCurrentTreasuryValue, //21
        maybeDonation, //22
      ].nonNulls(),
    );
  }

  String blake2bHash256Hex() => this.blake2bHash256.value ?? computeBlake2bHash256().hexEncode();
}
