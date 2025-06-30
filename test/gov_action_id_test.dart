import "package:cardano_dart_types/src/cardano/0_body/19_voting/gov_action_id.dart";
import "package:test/test.dart";

void main() async {
  group("bech32 encoding", () {
    group("index 0", () {
      test("first", () async {
        final action = GovActionId(
          transactionId: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
          govActionIndex: 0,
        );
        expect(action.bech32.value, "gov_action1w9mz7anajmuj5uc4rm2yc7y4khr7zffa56zxnv7unu6s2wv2syfqqmxz8wj");
      });
      test("second", () async {
        final action = GovActionId(
          transactionId: "27997e2a0b3eca5676cfa59e15f1578e2e929411e813369df6e08a9e857c6031",
          govActionIndex: 0,
        );
        expect(action.bech32.value, "gov_action1y7vhu2st8m99vak05k0ptu2h3chf99q3aqfnd80kuz9faptuvqcsqxullnf");
      });
    });
    test("1", () async {
      final action = GovActionId(
        transactionId: "71762f767d96f92a73151ed44c7895b5c7e1253da68469b3dc9f3505398a8112",
        govActionIndex: 1,
      );
      expect(
        action.bech32.value,
        "gov_action1w9mz7anajmuj5uc4rm2yc7y4khr7zffa56zxnv7unu6s2wv2syfqzgrryal",
      );
    });
  });
}
