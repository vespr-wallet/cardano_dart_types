import "package:cardano_dart_types/cardano_dart_types.dart";
import "package:test/test.dart";

void main() async {
  group("Transformations", () {
    test("hexToBech32", () async {
      const input = "e128ba996bad950e08750fc783b3ef127673406784234d38426b30091d";

      // print(CardanoAddress.getAddressType(input.hexDecode()));
      // CardanoAddress(input.hexDecode()).toBech32();
      expect(input.hexAddressToBech32(), "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2");
    });
    test("bech32ToHex", () async {
      const input = "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2";

      expect(input.bech32ToHex(), "e128ba996bad950e08750fc783b3ef127673406784234d38426b30091d");
    });
    group("fingerprint", () {
      test("fingerprint from asset unit", () {
        const input =
            "530a197fe7c275f204c3396b3782fc738f4968f0c81dd2291cf07b8a4343313031333030303030303030303030303031373230303030";

        expect(input.assetUnitToFingerprint(), "asset1s5hpc459r3ptvfne8hzw8whwqg6uacw4v8a7gv");
      });
      test("fingerprint from policy and hexAssetName", () {
        const inputPolicy = "25ff9715e1619277ef98c49a16f75d9dc430895504a82febb57e4713";
        const inputHexAssetName = "55534454";

        expect(
          Transformations.assetToFingerprint(inputPolicy, inputHexAssetName),
          "asset1tv2j54daupnag632vl838es282duv3p8em3d3y",
        );
      });
    });
  });
}
