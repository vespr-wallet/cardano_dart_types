import "package:cardano_dart_types/cardano_dart_types.dart";
import "package:test/test.dart";

void main() {
  group("CardanoTransactionOutput", () {
    group("unknown keys", () {
      // 00: an enterprise address, 01: 50 ADA
      const addressAndValue = "00581d6107070707070707070707070707070707070707070707070707070707011a02faf080";

      // 02: inline datum 42, 03: a native script ref
      const withDatumAndScriptRef =
          "a4${addressAndValue}028201d81842182a03d818582282008200581c07070707070707070707070707070707070707070707070707070707";

      // An output is parsed on its own (a UTxO) and inside a transaction body (outputs, collateral return)
      List<CardanoTransactionOutput Function()> parsers(String hex) => [
        () => CardanoTransactionOutput.deserializeHex(hex),
        // inputs (tag 258, empty), outputs [hex], fee 42
        () => CardanoTransactionBody.deserializeHex("a300d90102800181${hex}02182a").outputs.first,
      ];

      test("an output with a datum and a script ref round-trips byte-exactly", () {
        for (final parse in parsers(withDatumAndScriptRef)) {
          final output = parse();
          expect(output.serializeHexString(), withDatumAndScriptRef);
          expect(output.datum, isA<OutputDatum_Inline>());
          expect(output, isA<CardanoTransactionOutput_PostAlonzo>().having((o) => o.scriptRef, "scriptRef", isNotNull));
        }
      });

      // The witnesses sign the original bytes, so a dropped key would be signed without being in the parsed output
      final unknownOutputs = {
        // 04: 0, a key outside the post-Alonzo output map
        "an unknown key": ("a3${addressAndValue}0400", [4]),
        // tag 1 on key 2 (a datum hash), which a lookup of the plain key 2 does not find, so the datum was dropped
        "a tagged known key": (
          "a3${addressAndValue}c102820058200707070707070707070707070707070707070707070707070707070707070707",
          ["1(2)"],
        ),
      };
      for (final MapEntry(key: name, value: (hex, keys)) in unknownOutputs.entries) {
        test("$name is refused", () {
          for (final parse in parsers(hex)) {
            expect(
              parse,
              throwsA(isA<TransactionOutputUnknownKeyException>().having((e) => e.keys, "keys", keys)),
            );
          }
        });
      }
    });
  });
}
