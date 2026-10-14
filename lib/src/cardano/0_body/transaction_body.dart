import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:hex/hex.dart";

import "../../../binary/binary_reader.dart";
import "../../../binary/binary_writer.dart";
import "../../exceptions/parse_exceptions.dart";
import "../../hd/ada_types.dart";
import "../../hd/util/blake2bhash.dart";
import "../../utils/sugar.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";
import "../preserved_cbor_map.dart";
import "../shared/asset.dart";
import "../transaction.dart";
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

  Uint8List marshal() => useBinaryWriter((writer) {
    writer.writeInt(type);
    writer.writeString(value ?? "");
  });

  factory Blake2bHash256.unmarshal(Uint8List bytes) => useBinaryReader(bytes, (reader) {
    final type = reader.readInt();
    final value = reader.readString();
    return switch (type) {
      0 => Blake2bHash256Passed(blake2bHash256: value),
      1 => _Blake2bHash256Computed(blake2bHash256: value),
      2 => const Blake2bHash256None(),
      _ => throw Exception("Invalid Blake2bHash256 type: $type"),
    };
  });
}

/// Core of the cardano transaction that is signed.
@freezed
sealed class CardanoTransactionBody with _$CardanoTransactionBody implements CborEncodable {
  CardanoTransactionBody._();

  factory CardanoTransactionBody.create({
    // TX Body Fields
    required CardanoTransactionInputs inputs, // 0
    required List<CardanoTransactionOutput> outputs, // 1
    required CborInt fee, // 2
    // OPTIONAL
    CborInt? ttl, // 3
    Certificates? certs, // 4
    List<Withdraw>? withdrawals, // 5
    // 6 - update ; what is it?
    Uint8List? metadataHash, // 7
    CborInt? validityStartInterval, // 8
    List<MultiAsset>? mint, // 9
    Uint8List? scriptDataHash, // 11
    CardanoTransactionInputs? collateral, // 13
    RequiredSigners? requiredSigners, // 14
    NetworkId? networkId, // 15
    // BABBAGE ERA
    CardanoTransactionOutput? collateralReturn, // 16
    CborInt? totalCollateral, // 17
    CardanoTransactionInputs? referenceInputs, // 18
    // CONWAY ERA
    VotingProcedures? votingProcedures, // 19
    List<ProposalProcedure>? proposalProcedures, // 20
    CborInt? currentTreasuryValue, // 21
    CborInt? donation, // 22
  }) => CardanoTransactionBody._hidden(
    blake2bHash256: const Blake2bHash256.none(),
    preservedCbor: null,
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
    // Original CBOR of a deserialized body whose typed re-encoding differs from it (non-ascending
    // key order, indefinite lengths, ...). Used to re-serialize the body byte-exact so it matches
    // the hash that gets signed. Null for manually created bodies or already-canonical ones.
    required PreservedCborMap? preservedCbor,
    // TX Body Fields
    required CardanoTransactionInputs inputs, // 0
    required List<CardanoTransactionOutput> outputs, // 1
    required CborInt fee, // 2
    // OPTIONAL
    required CborInt? ttl, // 3
    required Certificates? certs, // 4
    required List<Withdraw>? withdrawals, // 5
    // 6 - update ; what is it?
    required Uint8List? metadataHash, // 7
    required CborInt? validityStartInterval, // 8
    required List<MultiAsset>? mint, // 9
    required Uint8List? scriptDataHash, // 11
    required CardanoTransactionInputs? collateral, // 13
    required RequiredSigners? requiredSigners, // 14
    required NetworkId? networkId, // 15
    // BABBAGE ERA
    required CardanoTransactionOutput? collateralReturn, // 16
    required CborInt? totalCollateral, // 17
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
    required CborInt fee, // 2
    // OPTIONAL
    required CborInt? ttl, // 3
    required Certificates? certs, // 4
    required List<Withdraw>? withdrawals, // 5
    // 6 - update ; what is it?
    required Uint8List? metadataHash, // 7
    required CborInt? validityStartInterval, // 8
    required List<MultiAsset>? mint, // 9
    required Uint8List? scriptDataHash, // 11
    required CardanoTransactionInputs? collateral, // 13
    required RequiredSigners? requiredSigners, // 14
    required NetworkId? networkId, // 15
    // BABBAGE ERA
    required CardanoTransactionOutput? collateralReturn, // 16
    required CborInt? totalCollateral, // 17
    required CardanoTransactionInputs? referenceInputs, // 18
    // CONWAY ERA
    required VotingProcedures? votingProcedures, // 19
    required List<ProposalProcedure>? proposalProcedures, // 20
    required CborInt? currentTreasuryValue, // 21
    required CborInt? donation, // 22
  }) => CardanoTransactionBody._hidden(
    blake2bHash256: blake2bHash256,
    preservedCbor: null,
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
    final fee = feeCbor! as CborInt;
    final ttl = ttlCbor as CborInt?;
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
    final validityStartInterval = validityStartIntervalCbor as CborInt?;
    final mint = (mintCbor == null)
        ? null
        : (mintCbor as CborMap).entries.map((entry) => MultiAsset.deserialize(cMapEntry: entry)).toList();
    final scriptDataHash = scriptDataHashCbor?.let((p0) => (p0 as CborBytes).bytes.toUint8List());
    final collateral = collateralCbor?.let(CardanoTransactionInputs.deserialize);
    final requiredSigners = requiredSignersCbor?.let(RequiredSigners.deserialize);
    final networkId = networkIdCbor?.let((p0) => NetworkId.fromIntValue((p0 as CborSmallInt).toInt()));
    final collateralReturn = collateralReturnCbor?.let(CardanoTransactionOutput.deserialize);
    final totalCollateral = totalCollateralCbor as CborInt?;
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

    final typedResult = CardanoTransactionBody._deserialized(
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

    // The typed model can't express every valid encoding (e.g. indefinite-length arrays, nested key
    // order), so keep the original CBOR around to re-serialize exactly what was parsed (and hashed).
    final result = typedResult.copyWith(
      preservedCbor: PreservedCborMap.capture(original: cMap, typed: typedResult.serialize(forJson: false)),
    );

    conditionalAssert(
      () => result.serializeHexString() == cMap.hexEncode(),
      "transaction_body: serializeHexString",
    );

    return result;
  }

  @override
  CborMap serialize({required bool forJson}) {
    // Helper to create map key
    CborValue key(int idx, String name) => forJson ? CborString(name) : CborSmallInt(idx);

    // Build all possible entries indexed by their numeric key
    final entriesMap = <int, MapEntry<CborValue, CborValue>>{};

    // Required fields
    entriesMap[0] = MapEntry(
      key(0, "inputs"),
      inputs.serialize(forJson: forJson),
    );
    entriesMap[1] = MapEntry(
      key(1, "outputs"),
      outputs.serialize(forJson: forJson),
    );
    entriesMap[2] = MapEntry(
      key(2, "fee"),
      fee,
    );

    // Optional fields - only add if non-null
    final ttl = this.ttl;
    if (ttl != null) {
      entriesMap[3] = MapEntry(
        key(3, "ttl"),
        ttl,
      );
    }

    final certs = this.certs;
    if (certs != null) {
      entriesMap[4] = MapEntry(
        key(4, "certificates"),
        certs.serialize(forJson: forJson),
      );
    }

    final withdrawals = this.withdrawals;
    if (withdrawals != null) {
      entriesMap[5] = MapEntry(
        key(5, "withdrawals"),
        withdrawals.serialize(forJson: forJson),
      );
    }

    final metadataHash = this.metadataHash;
    if (metadataHash != null) {
      entriesMap[7] = forJson
          ? MapEntry(CborString("metadataHash"), CborString(HEX.encode(metadataHash)))
          : MapEntry(const CborSmallInt(7), CborBytes(metadataHash));
    }

    final validityStartInterval = this.validityStartInterval;
    if (validityStartInterval != null) {
      entriesMap[8] = MapEntry(
        key(8, "validityStartInterval"),
        validityStartInterval,
      );
    }

    final mint = this.mint;
    if (mint != null) {
      entriesMap[9] = MapEntry(
        key(9, "mint"),
        mint.serialize(forJson: forJson),
      );
    }

    final scriptDataHash = this.scriptDataHash;
    if (scriptDataHash != null) {
      entriesMap[11] = MapEntry(
        key(11, "scriptDataHash"),
        scriptDataHash.serializeCbor(forJson: forJson),
      );
    }

    final collateral = this.collateral;
    if (collateral != null) {
      entriesMap[13] = MapEntry(
        key(13, "collateral"),
        collateral.serialize(forJson: forJson),
      );
    }

    final requiredSigners = this.requiredSigners;
    if (requiredSigners != null) {
      entriesMap[14] = MapEntry(
        key(14, "requiredSigners"),
        requiredSigners.serialize(forJson: forJson),
      );
    }

    final networkId = this.networkId;
    if (networkId != null) {
      entriesMap[15] = MapEntry(
        key(15, "networkId"),
        forJson ? CborString(networkId.name) : CborSmallInt(networkId.intValue),
      );
    }

    // BABBAGE ERA
    final collateralReturn = this.collateralReturn;
    if (collateralReturn != null) {
      entriesMap[16] = MapEntry(
        key(16, "collateralReturn"),
        collateralReturn.serialize(forJson: forJson),
      );
    }

    final totalCollateral = this.totalCollateral;
    if (totalCollateral != null) {
      entriesMap[17] = MapEntry(
        key(17, "totalCollateral"),
        totalCollateral,
      );
    }

    final referenceInputs = this.referenceInputs;
    if (referenceInputs != null) {
      entriesMap[18] = MapEntry(
        key(18, "referenceInputs"),
        referenceInputs.serialize(forJson: forJson),
      );
    }

    // CONWAY ERA
    final votingProcedures = this.votingProcedures;
    if (votingProcedures != null) {
      entriesMap[19] = MapEntry(
        key(19, "votingProcedures"),
        votingProcedures.serialize(forJson: forJson),
      );
    }

    final proposalProcedures = this.proposalProcedures;
    if (proposalProcedures != null) {
      entriesMap[20] = MapEntry(
        key(20, "proposalProcedures"),
        CborList.of(proposalProcedures.map((e) => e.serialize(forJson: forJson))),
      );
    }

    final currentTreasuryValue = this.currentTreasuryValue;
    if (currentTreasuryValue != null) {
      entriesMap[21] = MapEntry(
        key(21, "currentTreasuryValue"),
        currentTreasuryValue,
      );
    }

    final donation = this.donation;
    if (donation != null) {
      entriesMap[22] = MapEntry(
        key(22, "donation"),
        donation,
      );
    }

    final preservedCbor = this.preservedCbor;
    if (!forJson && preservedCbor != null) {
      return preservedCbor.restore(entriesMap.map((k, entry) => MapEntry(k, entry.value)));
    }

    // Default ascending order (for JSON or manually created bodies)
    final keys = entriesMap.keys.toList()..sort();
    return CborMap.fromEntries(keys.map((k) => entriesMap[k]!));
  }

  String blake2bHash256Hex() => this.blake2bHash256.value ?? computeBlake2bHash256().hexEncode();

  /// Original key order of a deserialized body, if it was not ascending (null otherwise).
  List<int>? get nonStandardKeyOrder =>
      preservedCbor?.keyOrder.let((order) => PreservedCborMap.isAscending(order) ? null : order);

  /// Whether the body map keys serialize in ascending order. Hardware wallets (Ledger, Trezor)
  /// rebuild the body canonically before signing, so they can't sign a body where this is false.
  bool get hasAscendingKeyOrder =>
      preservedCbor == null ||
      PreservedCborMap.isAscending(
        serialize(forJson: false).keys.map((k) => (k as CborSmallInt).toInt()).toList(growable: false),
      );
}
