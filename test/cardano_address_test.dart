import "package:cardano_dart_types/cardano_dart_types.dart";
import "package:test/test.dart";

void main() async {
  group("CardanoAddress", () {
    const paymentCrential = "82385457e1eb992cc8624fc346a23b0be8a2e263f6755e586262a2e7";
    const stakeCredential = "28ba996bad950e08750fc783b3ef127673406784234d38426b30091d";
    group("enterprise address", () {
      group("parsing", () {
        test("testnet", () async {
          const input = "60578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236";

          final value = CardanoAddress.fromHexString(input);

          expect(value.addressType, AddressType.enterprise);
          expect(value.bech32Encoded, "addr_test1vptcuye07qgs6egy2fty89f9uln0lp2ch9e6c0km3gcvyds87m0lg");
          expect(value.hexEncoded, input);
          expect(value.stakeBech32Encoded, null);
          expect(value.credentials, "578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236");
          expect(value.stakeCredentials, null);
          expect(value.credentialsBech32, "addr_vkh1278pxtlszyxk2pzj2epe2f08umlc2k9ewwkraku2xrprv2wth2e");
        });
        test("fromHex", () async {
          const input = "61578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236";
          final value = CardanoAddress.fromHexString(input);

          expect(value.addressType, AddressType.enterprise);
          expect(value.bech32Encoded, "addr1v9tcuye07qgs6egy2fty89f9uln0lp2ch9e6c0km3gcvydsuk0nsd");
          expect(value.hexEncoded, input);
          expect(value.stakeBech32Encoded, null);
          expect(value.credentials, "578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236");
          expect(value.stakeCredentials, null);
          expect(value.credentialsBech32, "addr_vkh1278pxtlszyxk2pzj2epe2f08umlc2k9ewwkraku2xrprv2wth2e");
        });
        test("fromBech32", () async {
          const input = "addr1v9tcuye07qgs6egy2fty89f9uln0lp2ch9e6c0km3gcvydsuk0nsd";

          final value = CardanoAddress.fromBech32OrBase58(input);

          expect(value.bech32Encoded, input);
          expect(value.hexEncoded, "61578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236");
          expect(value.stakeBech32Encoded, null);
          expect(value.credentials, "578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236");
          expect(value.stakeCredentials, null);
          expect(value.credentialsBech32, "addr_vkh1278pxtlszyxk2pzj2epe2f08umlc2k9ewwkraku2xrprv2wth2e");
        });
        test("fromPaymentCredentials", () async {
          const input = "578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236";

          final value = CardanoAddress.fromPaymentCredentials(
            networkId: NetworkId.mainnet,
            paymentCredentials: input.hexDecode(),
            stakeCredentials: null,
          );

          expect(value.bech32Encoded, "addr1v9tcuye07qgs6egy2fty89f9uln0lp2ch9e6c0km3gcvydsuk0nsd");
          expect(value.stakeBech32Encoded, null);
          expect(value.hexEncoded, "61578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236");
          expect(value.credentials, input);
          expect(value.stakeCredentials, null);
          expect(value.credentialsBech32, "addr_vkh1278pxtlszyxk2pzj2epe2f08umlc2k9ewwkraku2xrprv2wth2e");
        });

        test("fromHexPaymentCredentials", () async {
          const input = "578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236";

          final value = CardanoAddress.fromHexPaymentCredentials(
            networkId: NetworkId.mainnet,
            paymentCredentials: input,
            stakeCredentials: null,
          );

          expect(value.bech32Encoded, "addr1v9tcuye07qgs6egy2fty89f9uln0lp2ch9e6c0km3gcvydsuk0nsd");
          expect(value.stakeBech32Encoded, null);
          expect(value.hexEncoded, "61578e132ff0110d65045256439525e7e6ff8558b973ac3edb8a30c236");
          expect(value.credentials, input);
          expect(value.stakeCredentials, null);
          expect(value.credentialsBech32, "addr_vkh1278pxtlszyxk2pzj2epe2f08umlc2k9ewwkraku2xrprv2wth2e");
        });
      });
    });
    group("reward address", () {
      group("parsing", () {
        test("testnet", () async {
          const input = "e028ba996bad950e08750fc783b3ef127673406784234d38426b30091d";

          final value = CardanoAddress.fromHexString(input);

          expect(value.bech32Encoded, "stake_test1uq5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8g5q3gqh");
          expect(value.hexEncoded, "e028ba996bad950e08750fc783b3ef127673406784234d38426b30091d");
          expect(value.stakeBech32Encoded, "stake_test1uq5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8g5q3gqh");
          expect(value.credentials, stakeCredential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "stake_vkh19zafj6adj58qsag0c7pm8mcjwee5qeuyydxnssntxqy36gf3gs3");
        });
        test("fromHex", () async {
          const input = "e128ba996bad950e08750fc783b3ef127673406784234d38426b30091d";

          final value = CardanoAddress.fromHexString(input);

          expect(value.bech32Encoded, "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2");
          expect(value.hexEncoded, "e128ba996bad950e08750fc783b3ef127673406784234d38426b30091d");
          expect(value.stakeBech32Encoded, "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2");
          expect(value.credentials, stakeCredential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "stake_vkh19zafj6adj58qsag0c7pm8mcjwee5qeuyydxnssntxqy36gf3gs3");
        });
        test("fromBech32", () async {
          const input = "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2";

          final value = CardanoAddress.fromBech32OrBase58(input);

          expect(value.bech32Encoded, "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2");
          expect(value.hexEncoded, "e128ba996bad950e08750fc783b3ef127673406784234d38426b30091d");
          expect(value.stakeBech32Encoded, "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2");
          expect(value.credentials, stakeCredential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "stake_vkh19zafj6adj58qsag0c7pm8mcjwee5qeuyydxnssntxqy36gf3gs3");
        });
        test("fromStakeCredentials", () async {
          final value = CardanoAddress.fromStakeCredentials(
            networkId: NetworkId.mainnet,
            stakeCredentials: stakeCredential.hexDecode(),
          );

          expect(value.bech32Encoded, "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2");
          expect(value.stakeBech32Encoded, "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2");
          expect(value.hexEncoded, "e128ba996bad950e08750fc783b3ef127673406784234d38426b30091d");
          expect(value.credentials, stakeCredential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "stake_vkh19zafj6adj58qsag0c7pm8mcjwee5qeuyydxnssntxqy36gf3gs3");
        });

        test("fromHexStakeCredentials", () async {
          final value = CardanoAddress.fromHexStakeCredentials(
            networkId: NetworkId.testnet,
            stakeCredentials: stakeCredential,
          );

          expect(value.bech32Encoded, "stake_test1uq5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8g5q3gqh");
          expect(value.stakeBech32Encoded, "stake_test1uq5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8g5q3gqh");
          expect(value.hexEncoded, "e028ba996bad950e08750fc783b3ef127673406784234d38426b30091d");
          expect(value.credentials, stakeCredential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "stake_vkh19zafj6adj58qsag0c7pm8mcjwee5qeuyydxnssntxqy36gf3gs3");
        });
      });
    });
    group("base address", () {
      group("parsing", () {
        test("testnet", () async {
          const input =
              "0082385457e1eb992cc8624fc346a23b0be8a2e263f6755e586262a2e728ba996bad950e08750fc783b3ef127673406784234d38426b30091d";

          final value = CardanoAddress.fromHexString(input);

          expect(
            value.bech32Encoded,
            "addr_test1qzprs4zhu84ejtxgvf8ux34z8v973ghzv0m82hjcvf329eegh2vkhtv4pcy82r78swe77ynkwdqx0pprf5uyy6espywsy2fndg",
          );
          expect(
            value.stakeBech32Encoded,
            "stake_test1uq5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8g5q3gqh",
          );
          expect(
            value.hexEncoded,
            "0082385457e1eb992cc8624fc346a23b0be8a2e263f6755e586262a2e728ba996bad950e08750fc783b3ef127673406784234d38426b30091d",
          );
          expect(value.credentials, paymentCrential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "addr_vkh1sgu9g4lpawvjejrzflp5dg3mp0529cnr7e64ukrzv23wwrp9jce");
        });
        test("fromHex", () async {
          const input =
              "0182385457e1eb992cc8624fc346a23b0be8a2e263f6755e586262a2e728ba996bad950e08750fc783b3ef127673406784234d38426b30091d";

          final value = CardanoAddress.fromHexString(input);

          expect(
            value.bech32Encoded,
            "addr1qxprs4zhu84ejtxgvf8ux34z8v973ghzv0m82hjcvf329eegh2vkhtv4pcy82r78swe77ynkwdqx0pprf5uyy6espyws8u5nph",
          );
          expect(
            value.stakeBech32Encoded,
            "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2",
          );
          expect(
            value.hexEncoded,
            "0182385457e1eb992cc8624fc346a23b0be8a2e263f6755e586262a2e728ba996bad950e08750fc783b3ef127673406784234d38426b30091d",
          );
          expect(value.credentials, paymentCrential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "addr_vkh1sgu9g4lpawvjejrzflp5dg3mp0529cnr7e64ukrzv23wwrp9jce");
        });
        test("fromBech32", () async {
          const input =
              "addr1qxprs4zhu84ejtxgvf8ux34z8v973ghzv0m82hjcvf329eegh2vkhtv4pcy82r78swe77ynkwdqx0pprf5uyy6espyws8u5nph";

          final value = CardanoAddress.fromBech32OrBase58(input);

          expect(
            value.bech32Encoded,
            "addr1qxprs4zhu84ejtxgvf8ux34z8v973ghzv0m82hjcvf329eegh2vkhtv4pcy82r78swe77ynkwdqx0pprf5uyy6espyws8u5nph",
          );
          expect(
            value.stakeBech32Encoded,
            "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2",
          );
          expect(
            value.hexEncoded,
            "0182385457e1eb992cc8624fc346a23b0be8a2e263f6755e586262a2e728ba996bad950e08750fc783b3ef127673406784234d38426b30091d",
          );
          expect(value.credentials, paymentCrential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "addr_vkh1sgu9g4lpawvjejrzflp5dg3mp0529cnr7e64ukrzv23wwrp9jce");
        });
        test("fromPaymentCredentials", () async {
          final value = CardanoAddress.fromPaymentCredentials(
            networkId: NetworkId.mainnet,
            paymentCredentials: paymentCrential.hexDecode(),
            stakeCredentials: stakeCredential.hexDecode(),
          );

          expect(
            value.bech32Encoded,
            "addr1qxprs4zhu84ejtxgvf8ux34z8v973ghzv0m82hjcvf329eegh2vkhtv4pcy82r78swe77ynkwdqx0pprf5uyy6espyws8u5nph",
          );
          expect(
            value.stakeBech32Encoded,
            "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2",
          );
          expect(
            value.hexEncoded,
            "0182385457e1eb992cc8624fc346a23b0be8a2e263f6755e586262a2e728ba996bad950e08750fc783b3ef127673406784234d38426b30091d",
          );
          expect(value.credentials, paymentCrential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "addr_vkh1sgu9g4lpawvjejrzflp5dg3mp0529cnr7e64ukrzv23wwrp9jce");
        });

        test("fromHexPaymentCredentials", () async {
          final value = CardanoAddress.fromHexPaymentCredentials(
            networkId: NetworkId.mainnet,
            paymentCredentials: paymentCrential,
            stakeCredentials: stakeCredential,
          );

          expect(
            value.bech32Encoded,
            "addr1qxprs4zhu84ejtxgvf8ux34z8v973ghzv0m82hjcvf329eegh2vkhtv4pcy82r78swe77ynkwdqx0pprf5uyy6espyws8u5nph",
          );
          expect(
            value.stakeBech32Encoded,
            "stake1uy5t4xtt4k2suzr4plrc8vl0zfm8xsr8ss356wzzdvcqj8gn2m2y2",
          );
          expect(
            value.hexEncoded,
            "0182385457e1eb992cc8624fc346a23b0be8a2e263f6755e586262a2e728ba996bad950e08750fc783b3ef127673406784234d38426b30091d",
          );
          expect(value.credentials, paymentCrential);
          expect(value.stakeCredentials, stakeCredential);
          expect(value.credentialsBech32, "addr_vkh1sgu9g4lpawvjejrzflp5dg3mp0529cnr7e64ukrzv23wwrp9jce");
        });
      });
    });
  });
}
