import "package:cardano_dart_types/cardano_dart_types.dart";
import "package:test/test.dart";

void main() async {
  group("TxPreparedForSigning marshal/unmarshal", () {
    TxDiff createMinimalTxDiff() => TxDiff(
      diff: Value.v1(lovelace: BigInt.one.toCborInt(), mA: const []),
      usedUtxos: [],
      stakeDelegationPoolId: null,
      dRepDelegation: null,
      dRepRegistration: null,
      dRepUpdate: null,
      authorizeConstitutionalCommitteeHot: null,
      resignConstitutionalCommitteeCold: null,
      votes: [],
      proposals: [],
      dRepDeregistration: false,
      stakeDeregistration: false,
    );

    test("retains originalBlake2bHash256 when set", () {
      // Use a real transaction hex that will have originalBlake2bHash256 after parsing
      const txHex =
          "84a500818258201f805f6c058f7af6480c06c18d5eaaf7d674e706594a7763969ed3cf4cc43a3901018282583900bed3c3bac9ddc7952cc91cf76db3dd808f99f4a0dd07e78e06657bc21cc69f513f9551f517c5212855ece1b34d0128f9f9b54e47cebadd4b1a3af2f14082583900470d3c9befa4a1325ebed46bf74dee15d6f6ade6ec9f7b630894c75b228f93fe92eda028f3e16a3135c2896247d358c784f0cb08ca84fee51aee840816021a0002a961031a044eb05a048183098200581c228f93fe92eda028f3e16a3135c2896247d358c784f0cb08ca84fee58102a0f5f6";
      const originalHash = "3bb5ffa8c3f677c7643aeec6b6230cf5666861c627c363f2a0d4cc7ade1fa252";

      final tx = CardanoTransaction.deserializeFromHex(txHex);

      // Verify the original transaction has originalBlake2bHash256 set
      expect(tx.body.blake2bHash256.value, isNotNull);
      expect(tx.body.blake2bHash256.value, equals(originalHash));

      final txPrepared = TxPreparedForSigning(
        tx: tx,
        txDiff: createMinimalTxDiff(),
        utxosBeforeTx: [],
        signingAddressesRequired: {},
      );

      // Marshal and unmarshal
      final marshaled = txPrepared.marshal();
      final unmarshaled = TxPreparedForSigning.unmarshal(marshaled);

      // Verify blake2bHash256.value is retained
      expect(unmarshaled.tx.body.blake2bHash256.value, isNotNull);
      expect(unmarshaled.tx.body.blake2bHash256.value, equals(originalHash));
    });

    test("retains originalBlake2bHash256 with multiple utxos and signers", () {
      const txHex =
          "84a400d9010282825820568bb7e850346328656323708badb70f4050feef6b37af4424a26b411cb9ae280d8258201b299a07e37b7855c0b10ca6607ced3ae43af89feba9cf5cf5c3a0b399090b5a170181825839017ae09fcf2399c7f15fac4c73a6c01b8ed813ad468ee972c893f82502ada3dbc7c19578df3c92173b4331d94c798781c1743334c3e59d6c3c821a00210d8fa2581c49d101f2c32be7b3c4e6b985c7e90dc2194618818ca38b338c4d1d1fa1444648333401581cdd51353796552488ac1cebcd11bb4a44a983fbe361a82c0384a762c9a154536869747469652045787072657373204361726401021a0002b93104d901028183098200581cada3dbc7c19578df3c92173b4331d94c798781c1743334c3e59d6c3c8200581cb6f4547ad049d7443ee5695761e1aa5e446cfccf72c7ed0d8ad8edfaa0f5f6";
      const originalHash = "805e09a77fe360a34c76f9e4b07326a5a38931c383afc0ae881cf39a9d249e28";

      final tx = CardanoTransaction.deserializeFromHex(txHex);

      expect(tx.body.blake2bHash256.value, isNotNull);
      expect(tx.body.blake2bHash256.value, equals(originalHash));

      final txPrepared = TxPreparedForSigning(
        tx: tx,
        txDiff: TxDiff(
          diff: Value.v1(
            lovelace: BigInt.from(1000000).toCborInt(),
            mA: [
              MultiAsset(
                policyId: PolicyId.fromHex("9a9693a9a37912a5097918f97918d15240c92ab729a0b7c4aa144d77"),
                assets: [
                  Asset(
                    assetName: AssetName.fromHex("53554e444145"),
                    value: BigInt.from(200).toCborInt(),
                  ),
                ],
              ),
            ],
          ),
          usedUtxos: [
            Utxo(
              identifier: CardanoTransactionInput(
                transactionHash: TransactionHash.fromHex(
                  "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
                ),
                index: 2,
              ),
              content: CardanoTransactionOutput.postAlonzo(
                address: Address.fromBase58OrBech32(
                  "addr1q8l7hny7x96fadvq8cukyqkcfca5xmkrvfrrkt7hp76v3qvssm7fz9ajmtd58ksljgkyvqu6gl23hlcfgv7um5v0rn8qtnzlfk",
                ),
                value: Value.v1(lovelace: BigInt.from(3).toCborInt(), mA: const []),
                outDatum: null,
                scriptRef: null,
                lengthType: CborLengthType.definite,
              ),
            ),
          ],
          stakeDelegationPoolId: "pool1testpool",
          dRepDelegation: null,
          dRepRegistration: null,
          dRepUpdate: null,
          authorizeConstitutionalCommitteeHot: null,
          resignConstitutionalCommitteeCold: null,
          votes: [],
          proposals: [],
          dRepDeregistration: false,
          stakeDeregistration: true,
        ),
        utxosBeforeTx: [
          Utxo(
            identifier: CardanoTransactionInput(
              transactionHash: TransactionHash(
                value: "568bb7e850346328656323708badb70f4050feef6b37af4424a26b411cb9ae28".hexDecode(),
              ),
              index: 13,
            ),
            content: CardanoTransactionOutput.postAlonzo(
              address: Address.fromBase58OrBech32(
                "addr1q8l7hny7x96fadvq8cukyqkcfca5xmkrvfrrkt7hp76v3qvssm7fz9ajmtd58ksljgkyvqu6gl23hlcfgv7um5v0rn8qtnzlfk",
              ),
              value: Value.v1(lovelace: BigInt.from(5000000).toCborInt(), mA: const []),
              outDatum: null,
              scriptRef: null,
              lengthType: CborLengthType.definite,
            ),
          ),
        ],
        signingAddressesRequired: {"addr1_test1", "addr1_test2"},
      );

      // Marshal and unmarshal
      final marshaled = txPrepared.marshal();
      final unmarshaled = TxPreparedForSigning.unmarshal(marshaled);

      // Verify originalBlake2bHash256 is retained
      expect(unmarshaled.tx.body.blake2bHash256.value, isNotNull);
      expect(unmarshaled.tx.body.blake2bHash256.value, equals(originalHash));
      expect(unmarshaled.signingAddressesRequired, equals({"addr1_test1", "addr1_test2"}));
    });

    test("preserves original hash even when different from computed (edge case)", () {
      // This tests that the marshal/unmarshal preserves the STORED original hash,
      // not a newly computed one. This matters when the original parsing captured
      // a specific hash that needs to be preserved for signing.
      const txHex =
          "84a500818258201f805f6c058f7af6480c06c18d5eaaf7d674e706594a7763969ed3cf4cc43a3901018282583900bed3c3bac9ddc7952cc91cf76db3dd808f99f4a0dd07e78e06657bc21cc69f513f9551f517c5212855ece1b34d0128f9f9b54e47cebadd4b1a3af2f14082583900470d3c9befa4a1325ebed46bf74dee15d6f6ade6ec9f7b630894c75b228f93fe92eda028f3e16a3135c2896247d358c784f0cb08ca84fee51aee840816021a0002a961031a044eb05a048183098200581c228f93fe92eda028f3e16a3135c2896247d358c784f0cb08ca84fee58102a0f5f6";
      const originalHash = "3bb5ffa8c3f677c7643aeec6b6230cf5666861c627c363f2a0d4cc7ade1fa252";

      final parsedTx = CardanoTransaction.deserializeFromHex(txHex);

      // Simulate a scenario where we manually set a specific hash
      // (e.g., from external data or a special encoding scenario)
      const customHash = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
      final tx = parsedTx.copyWith.body(
        blake2bHash256: const Blake2bHash256.passed(blake2bHash256: customHash),
      );

      expect(tx.body.blake2bHash256.value, equals(customHash));
      expect(tx.body.blake2bHash256.value, isNot(equals(originalHash)));

      final txPrepared = TxPreparedForSigning(
        tx: tx,
        txDiff: createMinimalTxDiff(),
        utxosBeforeTx: [],
        signingAddressesRequired: {},
      );

      // Marshal and unmarshal
      final marshaled = txPrepared.marshal();
      final unmarshaled = TxPreparedForSigning.unmarshal(marshaled);

      // The preserved hash should be the custom one we set, not recomputed
      expect(unmarshaled.tx.body.blake2bHash256.value, equals(customHash));
      expect(unmarshaled.tx.body.blake2bHash256.value, isNot(equals(originalHash)));
    });

    test("preserves null as original hash", () {
      // Re-serialize the body to wipe the original hash
      final tx = CardanoTransaction(
        body: CardanoTransactionBody.create(
          inputs: const CardanoTransactionInputs(data: [], cborTags: []),
          outputs: const [],
          fee: BigInt.one.toCborInt(),
        ),
        witnessSet: const WitnessSet(),
        isValidDi: true,
        auxiliaryData: null,
        overrideBodyMetadataHash: false,
      );
      final computedHash = tx.body.computeBlake2bHash256().hexEncode();

      expect(
        tx.body.blake2bHash256.value,
        isNull,
      );
      expect(
        tx.body.blake2bHash256.value,
        isNot(equals(computedHash)),
      );

      final txPrepared = TxPreparedForSigning(
        tx: tx,
        txDiff: createMinimalTxDiff(),
        utxosBeforeTx: [],
        signingAddressesRequired: {},
      );

      // Marshal and unmarshal
      final marshaled = txPrepared.marshal();
      final unmarshaled = TxPreparedForSigning.unmarshal(marshaled);

      // The preserved hash should be the custom one we set, not recomputed
      expect(
        unmarshaled.tx.body.blake2bHash256.value,
        isNull,
      );
      expect(
        unmarshaled.tx.body.blake2bHash256.value,
        isNot(equals(computedHash)),
      );
      expect(
        unmarshaled.tx.body.computeBlake2bHash256().hexEncode(),
        equals(computedHash),
      );
    });

    test("hash integrity check - computed hash matches original after unmarshal", () {
      const txHex =
          "84a500818258201f805f6c058f7af6480c06c18d5eaaf7d674e706594a7763969ed3cf4cc43a3901018282583900bed3c3bac9ddc7952cc91cf76db3dd808f99f4a0dd07e78e06657bc21cc69f513f9551f517c5212855ece1b34d0128f9f9b54e47cebadd4b1a3af2f14082583900470d3c9befa4a1325ebed46bf74dee15d6f6ade6ec9f7b630894c75b228f93fe92eda028f3e16a3135c2896247d358c784f0cb08ca84fee51aee840816021a0002a961031a044eb05a048183098200581c228f93fe92eda028f3e16a3135c2896247d358c784f0cb08ca84fee58102a0f5f6";
      const originalHash = "3bb5ffa8c3f677c7643aeec6b6230cf5666861c627c363f2a0d4cc7ade1fa252";

      final tx = CardanoTransaction.deserializeFromHex(txHex);

      // Verify original hash matches computed hash
      expect(tx.body.computeBlake2bHash256().hexEncode(), equals(tx.body.blake2bHash256.value));
      expect(tx.body.computeBlake2bHash256().hexEncode(), equals(originalHash));
      expect(tx.body.blake2bHash256.value, equals(originalHash));

      final txPrepared = TxPreparedForSigning(
        tx: tx,
        txDiff: createMinimalTxDiff(),
        utxosBeforeTx: [],
        signingAddressesRequired: {},
      );

      // Marshal and unmarshal
      final marshaled = txPrepared.marshal();
      final unmarshaled = TxPreparedForSigning.unmarshal(marshaled);

      // After unmarshal, the retained originalBlake2bHash256 should still match
      // what would be computed from the body
      expect(
        unmarshaled.tx.body.computeBlake2bHash256().hexEncode(),
        equals(unmarshaled.tx.body.blake2bHash256.value),
      );
      expect(
        unmarshaled.tx.body.computeBlake2bHash256().hexEncode(),
        equals(originalHash),
      );
      expect(
        unmarshaled.tx.body.blake2bHash256.value,
        equals(originalHash),
      );
    });
  });

  group("tx diff", () {
    test("no nulls", () {
      final txDiff = TxDiff(
        diff: Value.v1(lovelace: BigInt.one.toCborInt(), mA: const []),
        usedUtxos: [
          Utxo(
            identifier: CardanoTransactionInput(
              transactionHash: TransactionHash(
                value: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112".hexDecode(),
              ),
              index: 2,
            ),
            content: CardanoTransactionOutput.postAlonzo(
              address: Address.fromBase58OrBech32(
                "addr1q8l7hny7x96fadvq8cukyqkcfca5xmkrvfrrkt7hp76v3qvssm7fz9ajmtd58ksljgkyvqu6gl23hlcfgv7um5v0rn8qtnzlfk",
              ),
              value: Value.v1(
                lovelace: BigInt.from(3).toCborInt(),
                mA: [
                  MultiAsset(
                    policyId: PolicyId.fromHex("9a9693a9a37912a5097918f97918d15240c92ab729a0b7c4aa144d77"),
                    assets: [Asset(assetName: AssetName.fromHex("53554e444145"), value: BigInt.from(200).toCborInt())],
                  ),
                ],
              ),
              outDatum: OutputDatum.hash([148, 163, 137, 45, 123, 33, 166, 152].toUint8List()),
              scriptRef: [79, 243, 153, 32, 224, 214, 232, 163, 36, 208, 19, 172, 139, 84, 194, 158].toUint8List(),
              lengthType: CborLengthType.indefinite,
            ),
          ),
        ],
        stakeDelegationPoolId: "pool1whatevertestvalue",
        dRepDelegation: Drep.addrKeyHash(
          hash: "9a9693a9a37912d7",
          lengthType: CborLengthType.indefinite,
        ),
        dRepRegistration: const DRepDiffInfo(
          dRepId: "drep1dasldklsafvasrasdads",
          metadataUrl: "https://metadataurl.com",
        ),
        dRepUpdate: const DRepDiffInfo(
          dRepId: "drep1testestsrt",
          metadataUrl: "https://metadataurltest.com",
        ),
        authorizeConstitutionalCommitteeHot: Credential(
          CredType.ADDR_KEY_HASH,
          "272d0b87fb7b9561d4d3dee46b8d422a8a8ec555c514e2b15f072934".hexDecode(),
        ),
        resignConstitutionalCommitteeCold: Credential(
          CredType.ADDR_KEY_HASH,
          [312, 2, 123, 2].toUint8List(),
        ),
        votes: [
          VoteInfo(
            action: GovActionId(
              transactionId: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              govActionIndex: 0,
            ),
            vote: Vote.abstain,
          ),
          VoteInfo(
            action: GovActionId(
              transactionId: "27997e2a0b3eca5676cfa59e15f1578e2e929411e813369df6e08a9e857c6031",
              govActionIndex: 0,
            ),
            vote: Vote.yes,
          ),
        ],
        proposals: [
          ProposalDiffInfo(
            proposal: const GovAction.infoAction(),
            proposalId: GovActionId(
              transactionId: "00762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              govActionIndex: 0,
            ),
          ),
          ProposalDiffInfo(
            proposal: GovAction.noConfidence(
              prevGovActionId: GovActionId(
                transactionId: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
                govActionIndex: 0,
              ),
            ),
            proposalId: GovActionId(
              transactionId: "01762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              govActionIndex: 1,
            ),
          ),
        ],
        dRepDeregistration: true,
        stakeDeregistration: true,
      );
      expect(txDiff, equals(TxDiff.unmarshal(txDiff.marshal())));
    });

    test("some nulls", () {
      final txDiff = TxDiff(
        diff: Value.v1(lovelace: BigInt.one.toCborInt(), mA: const []),
        usedUtxos: [
          Utxo(
            identifier: CardanoTransactionInput(
              transactionHash: TransactionHash(
                value: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112".hexDecode(),
              ),
              index: 2,
            ),
            content: CardanoTransactionOutput.postAlonzo(
              address: Address.fromBase58OrBech32(
                "addr1q8l7hny7x96fadvq8cukyqkcfca5xmkrvfrrkt7hp76v3qvssm7fz9ajmtd58ksljgkyvqu6gl23hlcfgv7um5v0rn8qtnzlfk",
              ),
              value: Value.v1(
                lovelace: BigInt.from(3).toCborInt(),
                mA: [
                  MultiAsset(
                    policyId: PolicyId.fromHex("9a9693a9a37912a5097918f97918d15240c92ab729a0b7c4aa144d77"),
                    assets: [Asset(assetName: AssetName.fromHex("53554e444145"), value: BigInt.from(200).toCborInt())],
                  ),
                ],
              ),
              outDatum: OutputDatum.hash([148, 163, 137, 45, 123, 33, 166, 152].toUint8List()),
              scriptRef: [79, 243, 153, 32, 224, 214, 232, 163, 36, 208, 19, 172, 139, 84, 194, 158].toUint8List(),
              lengthType: CborLengthType.indefinite,
            ),
          ),
        ],
        stakeDelegationPoolId: null,
        dRepDelegation: Drep.addrKeyHash(
          hash: "9aa09693a9a37912d7",
          lengthType: CborLengthType.definite,
        ),
        dRepRegistration: null,
        dRepUpdate: const DRepDiffInfo(
          dRepId: "drep1testestsrt",
          metadataUrl: "https://metadataurltest.com",
        ),
        authorizeConstitutionalCommitteeHot: null,
        resignConstitutionalCommitteeCold: Credential(
          CredType.ADDR_KEY_HASH,
          [312, 2, 123, 2].toUint8List(),
        ),
        votes: [
          VoteInfo(
            action: GovActionId(
              transactionId: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              govActionIndex: 0,
            ),
            vote: Vote.no,
          ),
        ],
        proposals: [
          ProposalDiffInfo(
            proposal: const GovAction.infoAction(),
            proposalId: GovActionId(
              transactionId: "02762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              govActionIndex: 1,
            ),
          ),
          ProposalDiffInfo(
            proposal: GovAction.noConfidence(
              prevGovActionId: GovActionId(
                transactionId: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
                govActionIndex: 1,
              ),
            ),
            proposalId: GovActionId(
              transactionId: "04762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              govActionIndex: 2,
            ),
          ),
        ],
        dRepDeregistration: false,
        stakeDeregistration: true,
      );
      expect(txDiff, equals(TxDiff.unmarshal(txDiff.marshal())));
    });

    test("many nulls", () {
      final txDiff = TxDiff(
        diff: Value.v1(lovelace: BigInt.one.toCborInt(), mA: const []),
        usedUtxos: [
          Utxo(
            identifier: CardanoTransactionInput(
              transactionHash: TransactionHash(
                value: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112".hexDecode(),
              ),
              index: 2,
            ),
            content: CardanoTransactionOutput.postAlonzo(
              address: Address.fromBase58OrBech32(
                "addr1q8l7hny7x96fadvq8cukyqkcfca5xmkrvfrrkt7hp76v3qvssm7fz9ajmtd58ksljgkyvqu6gl23hlcfgv7um5v0rn8qtnzlfk",
              ),
              value: Value.v1(
                lovelace: BigInt.from(3).toCborInt(),
                mA: [
                  MultiAsset(
                    policyId: PolicyId.fromHex("9a9693a9a37912a5097918f97918d15240c92ab729a0b7c4aa144d77"),
                    assets: [Asset(assetName: AssetName.fromHex("53554e444145"), value: BigInt.from(200).toCborInt())],
                  ),
                ],
              ),
              outDatum: OutputDatum.hash([148, 163, 137, 45, 123, 33, 166, 152].toUint8List()),
              scriptRef: [79, 243, 153, 32, 224, 214, 232, 163, 36, 208, 19, 172, 139, 84, 194, 158].toUint8List(),
              lengthType: CborLengthType.indefinite,
            ),
          ),
        ],
        stakeDelegationPoolId: null,
        dRepDelegation: null,
        dRepRegistration: null,
        dRepUpdate: null,
        authorizeConstitutionalCommitteeHot: null,
        resignConstitutionalCommitteeCold: null,
        votes: [],
        proposals: [],
        dRepDeregistration: true,
        stakeDeregistration: false,
      );
      expect(txDiff, equals(TxDiff.unmarshal(txDiff.marshal())));
    });
  });
}
