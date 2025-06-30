import "package:cardano_dart_types/cardano_dart_types.dart";
import "package:test/test.dart";

void main() async {
  group("tx diff", () {
    test("no nulls", () {
      final txDiff = TxDiff(
        diff: Value.v1(lovelace: BigInt.one, mA: const []),
        usedUtxos: [
          Utxo(
            identifier: const CardanoTransactionInput(
              transactionHash: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              index: 2,
            ),
            content: CardanoTransactionOutput.postAlonzo(
              addressBytes:
                  "addr1q8l7hny7x96fadvq8cukyqkcfca5xmkrvfrrkt7hp76v3qvssm7fz9ajmtd58ksljgkyvqu6gl23hlcfgv7um5v0rn8qtnzlfk"
                      .bech32Decode(),
              value: Value.v1(lovelace: BigInt.from(3), mA: [
                MultiAsset(
                  policyId: "9a9693a9a37912a5097918f97918d15240c92ab729a0b7c4aa144d77",
                  assets: [Asset(hexName: "53554e444145", value: BigInt.from(200))],
                ),
              ]),
              outDatum: OutputDatum.hash([148, 163, 137, 45, 123, 33, 166, 152].toUint8List()),
              scriptRef: [79, 243, 153, 32, 224, 214, 232, 163, 36, 208, 19, 172, 139, 84, 194, 158].toUint8List(),
              lengthType: CborLengthType.indefinite,
            ),
          )
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
        diff: Value.v1(lovelace: BigInt.one, mA: const []),
        usedUtxos: [
          Utxo(
            identifier: const CardanoTransactionInput(
              transactionHash: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              index: 2,
            ),
            content: CardanoTransactionOutput.postAlonzo(
              addressBytes:
                  "addr1q8l7hny7x96fadvq8cukyqkcfca5xmkrvfrrkt7hp76v3qvssm7fz9ajmtd58ksljgkyvqu6gl23hlcfgv7um5v0rn8qtnzlfk"
                      .bech32Decode(),
              value: Value.v1(lovelace: BigInt.from(3), mA: [
                MultiAsset(
                  policyId: "9a9693a9a37912a5097918f97918d15240c92ab729a0b7c4aa144d77",
                  assets: [Asset(hexName: "53554e444145", value: BigInt.from(200))],
                ),
              ]),
              outDatum: OutputDatum.hash([148, 163, 137, 45, 123, 33, 166, 152].toUint8List()),
              scriptRef: [79, 243, 153, 32, 224, 214, 232, 163, 36, 208, 19, 172, 139, 84, 194, 158].toUint8List(),
              lengthType: CborLengthType.indefinite,
            ),
          )
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
        diff: Value.v1(lovelace: BigInt.one, mA: const []),
        usedUtxos: [
          Utxo(
            identifier: const CardanoTransactionInput(
              transactionHash: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
              index: 2,
            ),
            content: CardanoTransactionOutput.postAlonzo(
              addressBytes:
                  "addr1q8l7hny7x96fadvq8cukyqkcfca5xmkrvfrrkt7hp76v3qvssm7fz9ajmtd58ksljgkyvqu6gl23hlcfgv7um5v0rn8qtnzlfk"
                      .bech32Decode(),
              value: Value.v1(lovelace: BigInt.from(3), mA: [
                MultiAsset(
                  policyId: "9a9693a9a37912a5097918f97918d15240c92ab729a0b7c4aa144d77",
                  assets: [Asset(hexName: "53554e444145", value: BigInt.from(200))],
                ),
              ]),
              outDatum: OutputDatum.hash([148, 163, 137, 45, 123, 33, 166, 152].toUint8List()),
              scriptRef: [79, 243, 153, 32, 224, 214, 232, 163, 36, 208, 19, 172, 139, 84, 194, 158].toUint8List(),
              lengthType: CborLengthType.indefinite,
            ),
          )
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
