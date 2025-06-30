import "package:cardano_dart_types/src/cardano/0_body/1_outputs/2_datum/output_datum.dart";
import "package:cardano_dart_types/src/cardano/shared/utxo.dart";
import "package:cardano_dart_types/src/utils/transformations.dart";
import "package:test/test.dart";

void main() async {
  group("Utxo", () {
    const hexInput =
        "82825820448cc2a4477cf6383e7d4fe13fb2f3cbef71db3af4ae92f5c0e692e006fab0170182583901ed49d9adbd06592290b9a16032375d6b79d4df760cad0d9bca9555fc4199f66b16ce9eb5849ed96473face025b2e9bcbdf1e352ad4362981821a00207cf4a3581c0a4352475d66381d5bc7257224725ea7a83a115ff81c257db07a683ca14749446a6565666f01581c530a197fe7c275f204c3396b3782fc738f4968f0c81dd2291cf07b8aa2581a434330303031303030303030303030303030303131343030333201581a434330303033303030303030303030303030303131343030363101581ca7904896a247d3aa09478e856769b82d1f2e060028b6bda5543b699fa54d4343434f4c4c41423030303031014d4343434f4c4c41423038383839014d4343434f4c4c4142303838393101581c4375746543726561747572657343686164694e61737361723030303101581c4375746543726561747572657343686164694e61737361723030303301";
    final parsedUtxo = Utxo.deserializeHex(hexInput);

    test("hex->utxo->hex stays unchanged", () async {
      expect(parsedUtxo.serialize(forJson: false).uint8ListEncode().hexEncode(), hexInput);
    });

    test("address is correct", () async {
      expect(
        parsedUtxo.content.addressBytes.addressBase58Orbech32Encode(),
        "addr1q8k5nkddh5r9jg5shxskqv3ht44hn4xlwcx26rvme224tlzpn8mxk9kwn66cf8kev3el4nsztvhfhj7lrc6j44pk9xqsafxu96",
      );
    });

    test("tx identifier is correct", () async {
      expect(
        parsedUtxo.identifier.transactionHash,
        "448cc2a4477cf6383e7d4fe13fb2f3cbef71db3af4ae92f5c0e692e006fab017",
      );

      expect(parsedUtxo.identifier.index, 1);
    });
  });

  group("Utxo with datum hash", () {
    const hexInput =
        "8282582073952449efe72265d2e6ff654e46ffd025006437a4bcb672f3f6e9919adda01206835839016b33a292d5b19b2e7a4f78d007ed76050d0a4fed5b0b646c7ca1695fb8ed3be27550543f410a2f770642b1b0c2948887315390615260efa8821a0019f0a0a1581c8a1cfae21368b8bebbbed9800fec304e95cce39a2a57dc35e2e3ebaaa1444d494c4b18f7582020a0255f62f30b76a99fedad498353f5629c3c6aa75f4d07a9020100c697d1a7";
    final parsedUtxo = Utxo.deserializeHex(hexInput);

    test("hex->utxo->hex stays unchanged", () async {
      expect(parsedUtxo.serialize(forJson: false).uint8ListEncode().hexEncode(), hexInput);
    });

    test("address is correct", () async {
      expect(
        parsedUtxo.content.addressBytes.addressBase58Orbech32Encode(),
        "addr1q94n8g5j6kcektn6faudqpldwczs6zj0a4dskerv0jskjhaca5a7ya2s2sl5zz30wury9vdsc22g3pe32wgxz5nqa75qvzzv0u",
      );
    });

    test("tx identifier is correct", () async {
      expect(
        parsedUtxo.identifier.transactionHash,
        "73952449efe72265d2e6ff654e46ffd025006437a4bcb672f3f6e9919adda012",
      );

      expect(parsedUtxo.identifier.index, 6);
    });

    test("datum hash is correct", () async {
      expect(
        (parsedUtxo.content.datum! as OutputDatum_Hash).datumHash.hexEncode(),
        "20a0255f62f30b76a99fedad498353f5629c3c6aa75f4d07a9020100c697d1a7",
      );
    });
  });
}
