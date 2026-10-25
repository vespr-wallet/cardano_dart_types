import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:collection/collection.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:hex/hex.dart";

import "../../../binary/binary_reader.dart";
import "../../../binary/binary_writer.dart";
import "../../exceptions/parse_exceptions.dart";
import "../../hd/ada_types.dart";
import "../../hd/util/blake2bhash.dart";
import "../../utils/cbor.dart";
import "../../utils/sugar.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";
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
@Freezed(copyWith: false) // hand-written below, see [$CardanoTransactionBodyCopyWith]
sealed class CardanoTransactionBody with _$CardanoTransactionBody implements CborEncodable {
  CardanoTransactionBody._();

  $CardanoTransactionBodyCopyWith<CardanoTransactionBody> get copyWith =>
      $CardanoTransactionBodyCopyWith(this, (value) => value);

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
    nonStandardKeyOrder: null,
    lengthType: CborLengthType.definite,
    outputsLengthType: CborLengthType.definite,
    withdrawalsLengthType: CborLengthType.definite,
    mintLengthType: CborLengthType.definite,
    proposalProceduresLengthType: CborLengthType.definite,
    proposalProceduresCborTags: const [],
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
    // Non-standard CBOR map key order (non-ascending). Only set when the original
    // transaction had keys in non-ascending order, to preserve byte-exact re-serialization.
    // NOTE: Non-standard key order is problematic - it breaks transaction signing on
    // hardware wallets (Ledger, Trezor) which expect ascending key order. If you're
    // building transactions, always use ascending order (leave this null).
    required List<int>? nonStandardKeyOrder,
    // CBOR encoding details of a deserialized body, preserved for byte-exact re-serialization
    required CborLengthType lengthType,
    required CborLengthType outputsLengthType,
    required CborLengthType withdrawalsLengthType,
    required CborLengthType mintLengthType,
    required CborLengthType proposalProceduresLengthType,
    required List<int> proposalProceduresCborTags,
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
    required List<int>? nonStandardKeyOrder, // non-ascending key order (null if standard ascending)
    required CborLengthType lengthType,
    required CborLengthType outputsLengthType,
    required CborLengthType withdrawalsLengthType,
    required CborLengthType mintLengthType,
    required CborLengthType proposalProceduresLengthType,
    required List<int> proposalProceduresCborTags,
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
    nonStandardKeyOrder: nonStandardKeyOrder,
    lengthType: lengthType,
    outputsLengthType: outputsLengthType,
    withdrawalsLengthType: withdrawalsLengthType,
    mintLengthType: mintLengthType,
    proposalProceduresLengthType: proposalProceduresLengthType,
    proposalProceduresCborTags: proposalProceduresCborTags,
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

  /// Throws [NonCanonicalTransactionBodyException] unless the body re-serializes to [hexData].
  factory CardanoTransactionBody.deserializeHex(String hexData) {
    final bytes = hexData.hexDecode();

    final body = CardanoTransactionBody.deserialize(
      cMap: bytes.cborDecode() as CborMap,
      originalBodyBlake2bHash256: blake2bHash256(bytes).hexEncode(),
    );
    if (!const ListEquality<int>().equals(body.serializeAsBytes(), bytes)) {
      throw NonCanonicalTransactionBodyException();
    }
    return body;
  }

  /// No byte-exactness check: an [originalBodyBlake2bHash256] is trusted to be the hash of the bytes [cMap]
  /// re-serializes to. Use [CardanoTransactionBody.deserializeHex] or [CardanoTransaction.deserializeBytes] for
  /// untrusted bytes.
  factory CardanoTransactionBody.deserialize({
    required CborMap cMap,
    String? originalBodyBlake2bHash256, // used for signing the tx
  }) {
    final bodyBlake2bHash256 = originalBodyBlake2bHash256 != null
        ? Blake2bHash256.passed(blake2bHash256: originalBodyBlake2bHash256)
        : Blake2bHash256._computed(blake2bHash256: blake2bHash256(cMap.uint8ListEncode()).hexEncode());

    // Capture non-standard (non-ascending) key order to preserve it during re-serialization.
    // If the keys are already in ascending order, we don't store them (leave as null).
    // This is important because:
    // 1. Ascending order is the standard/correct order for CBOR maps
    // 2. If we stored ascending order and someone uses copyWith to add a new field,
    //    the new field would be appended at the end, breaking the ascending order.
    // 3. Hardware wallets (Ledger, Trezor) require ascending key order for signing.
    // By leaving nonStandardKeyOrder as null for ascending-order maps, new fields
    // will be properly sorted into the correct position.
    final nonStandardKeyOrder = nonAscendingKeyOrder(cMap);

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

    final result = CardanoTransactionBody._deserialized(
      blake2bHash256: bodyBlake2bHash256,
      nonStandardKeyOrder: nonStandardKeyOrder,
      lengthType: cMap.type,
      outputsLengthType: (outputsCbor as CborList).type,
      withdrawalsLengthType: (withdrawalsCbor as CborMap?)?.type ?? CborLengthType.definite,
      mintLengthType: (mintCbor as CborMap?)?.type ?? CborLengthType.definite,
      proposalProceduresLengthType: (proposalProceduresCbor as CborList?)?.type ?? CborLengthType.definite,
      proposalProceduresCborTags: proposalProceduresCbor?.tags ?? const [],
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
      () =>
          outputs.serialize(forJson: false, lengthType: result.outputsLengthType).hexEncode() ==
          outputsCbor.hexEncode(),
      "transaction_body: outputs",
    );
    conditionalAssert(
      () => certsCbor == null || certs!.serialize(forJson: false).hexEncode() == certsCbor.hexEncode(),
      "transaction_body: certs",
    );
    conditionalAssert(
      () =>
          withdrawalsCbor == null ||
          withdrawals!.serialize(forJson: false, lengthType: result.withdrawalsLengthType).hexEncode() ==
              withdrawalsCbor.hexEncode(),
      "transaction_body: withdrawals",
    );
    conditionalAssert(
      () =>
          mintCbor == null ||
          mint!.serialize(forJson: false, lengthType: result.mintLengthType).hexEncode() == mintCbor.hexEncode(),
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
      outputs.serialize(forJson: forJson, lengthType: outputsLengthType),
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
        withdrawals.serialize(forJson: forJson, lengthType: withdrawalsLengthType),
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
        mint.serialize(forJson: forJson, lengthType: mintLengthType),
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
        CborList.of(
          proposalProcedures.map((e) => e.serialize(forJson: forJson)),
          type: proposalProceduresLengthType,
          tags: proposalProceduresCborTags,
        ),
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

    // Original key order for binary CBOR (byte-exact re-serialization); ascending for JSON and new bodies
    return CborMap.fromEntries(
      orderEntries(entriesMap, forJson ? null : nonStandardKeyOrder),
      type: forJson ? CborLengthType.definite : lengthType,
    );
  }

  String blake2bHash256Hex() => this.blake2bHash256.value ?? computeBlake2bHash256().hexEncode();

  /// Whether the body map keys serialize in ascending order. Hardware wallets (Ledger, Trezor)
  /// rebuild the body canonically before signing, so they can't sign a body where this is false.
  bool get hasAscendingKeyOrder => nonAscendingKeyOrder(serialize(forJson: false)) == null;
}

// ponytail: hand-written copy of the copyWith freezed 3 generated. freezed 4 builds it on the
// `CardanoTransactionBody._()` constructor instead of `_hidden` (https://github.com/rrousselGit/freezed/issues/1376).
// Back to `@freezed` once that is fixed. Dropped the no-op `copyWith.blake2bHash256`.
abstract mixin class $CardanoTransactionBodyCopyWith<$Res> {
  factory $CardanoTransactionBodyCopyWith(CardanoTransactionBody value, $Res Function(CardanoTransactionBody) then) =
      _CardanoTransactionBodyCopyWithImpl;

  @useResult
  $Res call({
    Blake2bHash256 blake2bHash256,
    List<int>? nonStandardKeyOrder,
    CborLengthType lengthType,
    CborLengthType outputsLengthType,
    CborLengthType withdrawalsLengthType,
    CborLengthType mintLengthType,
    CborLengthType proposalProceduresLengthType,
    List<int> proposalProceduresCborTags,
    CardanoTransactionInputs inputs,
    List<CardanoTransactionOutput> outputs,
    CborInt fee,
    CborInt? ttl,
    Certificates? certs,
    List<Withdraw>? withdrawals,
    Uint8List? metadataHash,
    CborInt? validityStartInterval,
    List<MultiAsset>? mint,
    Uint8List? scriptDataHash,
    CardanoTransactionInputs? collateral,
    RequiredSigners? requiredSigners,
    NetworkId? networkId,
    CardanoTransactionOutput? collateralReturn,
    CborInt? totalCollateral,
    CardanoTransactionInputs? referenceInputs,
    VotingProcedures? votingProcedures,
    List<ProposalProcedure>? proposalProcedures,
    CborInt? currentTreasuryValue,
    CborInt? donation,
  });

  $CardanoTransactionInputsCopyWith<$Res> get inputs;
  $CertificatesCopyWith<$Res>? get certs;
  $CardanoTransactionInputsCopyWith<$Res>? get collateral;
  $RequiredSignersCopyWith<$Res>? get requiredSigners;
  $CardanoTransactionOutputCopyWith<$Res>? get collateralReturn;
  $CardanoTransactionInputsCopyWith<$Res>? get referenceInputs;
  $VotingProceduresCopyWith<$Res>? get votingProcedures;
}

/// [freezed] (omitted argument) keeps [current], anything else (null included) replaces it.
T? _orKeep<T>(Object? value, T? current) => freezed == value ? current : value as T?;

class _CardanoTransactionBodyCopyWithImpl<$Res> implements $CardanoTransactionBodyCopyWith<$Res> {
  _CardanoTransactionBodyCopyWithImpl(this._self, this._then);

  final CardanoTransactionBody _self;
  final $Res Function(CardanoTransactionBody) _then;

  @override
  $Res call({
    Blake2bHash256? blake2bHash256,
    Object? nonStandardKeyOrder = freezed,
    CborLengthType? lengthType,
    CborLengthType? outputsLengthType,
    CborLengthType? withdrawalsLengthType,
    CborLengthType? mintLengthType,
    CborLengthType? proposalProceduresLengthType,
    List<int>? proposalProceduresCborTags,
    CardanoTransactionInputs? inputs,
    List<CardanoTransactionOutput>? outputs,
    CborInt? fee,
    Object? ttl = freezed,
    Object? certs = freezed,
    Object? withdrawals = freezed,
    Object? metadataHash = freezed,
    Object? validityStartInterval = freezed,
    Object? mint = freezed,
    Object? scriptDataHash = freezed,
    Object? collateral = freezed,
    Object? requiredSigners = freezed,
    Object? networkId = freezed,
    Object? collateralReturn = freezed,
    Object? totalCollateral = freezed,
    Object? referenceInputs = freezed,
    Object? votingProcedures = freezed,
    Object? proposalProcedures = freezed,
    Object? currentTreasuryValue = freezed,
    Object? donation = freezed,
  }) {
    final copy = CardanoTransactionBody._hidden(
      blake2bHash256: blake2bHash256 ?? _self.blake2bHash256,
      nonStandardKeyOrder: _orKeep(nonStandardKeyOrder, _self.nonStandardKeyOrder),
      lengthType: lengthType ?? _self.lengthType,
      outputsLengthType: outputsLengthType ?? _self.outputsLengthType,
      withdrawalsLengthType: withdrawalsLengthType ?? _self.withdrawalsLengthType,
      mintLengthType: mintLengthType ?? _self.mintLengthType,
      proposalProceduresLengthType: proposalProceduresLengthType ?? _self.proposalProceduresLengthType,
      proposalProceduresCborTags: proposalProceduresCborTags ?? _self.proposalProceduresCborTags,
      inputs: inputs ?? _self.inputs,
      outputs: outputs ?? _self.outputs,
      fee: fee ?? _self.fee,
      ttl: _orKeep(ttl, _self.ttl),
      certs: _orKeep(certs, _self.certs),
      withdrawals: _orKeep(withdrawals, _self.withdrawals),
      metadataHash: _orKeep(metadataHash, _self.metadataHash),
      validityStartInterval: _orKeep(validityStartInterval, _self.validityStartInterval),
      mint: _orKeep(mint, _self.mint),
      scriptDataHash: _orKeep(scriptDataHash, _self.scriptDataHash),
      collateral: _orKeep(collateral, _self.collateral),
      requiredSigners: _orKeep(requiredSigners, _self.requiredSigners),
      networkId: _orKeep(networkId, _self.networkId),
      collateralReturn: _orKeep(collateralReturn, _self.collateralReturn),
      totalCollateral: _orKeep(totalCollateral, _self.totalCollateral),
      referenceInputs: _orKeep(referenceInputs, _self.referenceInputs),
      votingProcedures: _orKeep(votingProcedures, _self.votingProcedures),
      proposalProcedures: _orKeep(proposalProcedures, _self.proposalProcedures),
      currentTreasuryValue: _orKeep(currentTreasuryValue, _self.currentTreasuryValue),
      donation: _orKeep(donation, _self.donation),
    );
    // The kept hash is of the bytes [_self] was parsed from, so a copy with other fields has to hash its own serialization
    return _then(
      blake2bHash256 == null && copy != _self ? copy.copyWith(blake2bHash256: const Blake2bHash256.none()) : copy,
    );
  }

  @override
  $CardanoTransactionInputsCopyWith<$Res> get inputs =>
      $CardanoTransactionInputsCopyWith(_self.inputs, (value) => call(inputs: value));

  @override
  $CertificatesCopyWith<$Res>? get certs =>
      _self.certs?.let((certs) => $CertificatesCopyWith(certs, (value) => call(certs: value)));

  @override
  $CardanoTransactionInputsCopyWith<$Res>? get collateral => _self.collateral?.let(
    (collateral) => $CardanoTransactionInputsCopyWith(collateral, (value) => call(collateral: value)),
  );

  @override
  $RequiredSignersCopyWith<$Res>? get requiredSigners => _self.requiredSigners?.let(
    (requiredSigners) => $RequiredSignersCopyWith(requiredSigners, (value) => call(requiredSigners: value)),
  );

  @override
  $CardanoTransactionOutputCopyWith<$Res>? get collateralReturn => _self.collateralReturn?.let(
    (collateralReturn) => $CardanoTransactionOutputCopyWith(collateralReturn, (value) => call(collateralReturn: value)),
  );

  @override
  $CardanoTransactionInputsCopyWith<$Res>? get referenceInputs => _self.referenceInputs?.let(
    (referenceInputs) => $CardanoTransactionInputsCopyWith(referenceInputs, (value) => call(referenceInputs: value)),
  );

  @override
  $VotingProceduresCopyWith<$Res>? get votingProcedures => _self.votingProcedures?.let(
    (votingProcedures) => $VotingProceduresCopyWith(votingProcedures, (value) => call(votingProcedures: value)),
  );
}
