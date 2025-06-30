import "dart:convert";

import "package:bip32_ed25519/cardano.dart";
import "package:cbor/cbor.dart" as cbor;
import "package:fast_base58/fast_base58.dart";
import "package:hex/hex.dart";

import "../cardano/cbor_encodable.dart";
import "../hd/address/cardano_address.dart";
import "../hd/util/blake2bhash.dart";
import "sugar.dart";

Codec<String, String> utf8HexCodec = const Utf8Codec().fuse(const HexCodec());

extension StringTransformations on String {
  Uint8List hexDecode() => HEX.decode(this).toUint8List();

  Uint8List bech32Decode() => Bech32Encoder.decodeNoHrpCheck(this, 256);

  Uint8List base58Decode() => Base58Decode(this).toUint8List();

  Uint8List utf8Decode() => utf8.encode(this).toUint8List(); // utf8 package has encode / decode naming swapped

  String hexToUtf8() => utf8HexCodec.decode(this);

  String utf8ToHex() => utf8HexCodec.encode(this);

  cbor.CborValue cborDecode() => hexDecode().cborDecode();

  String hexAddressToBech32() => hexDecode().addressBech32Encode();

  String bech32ToHex() => bech32Decode().hexEncode();

  String hexToBech32(String hrp) => hexDecode().bech32Encode(hrp);

  String assetUnitToFingerprint() => blake2bHash160(hexDecode()).bech32Encode("asset");
}

class Transformations {
  const Transformations._();

  static String assetToFingerprint(String policyId, String hexAssetName) =>
      "$policyId$hexAssetName".assetUnitToFingerprint();
}

extension CborEncodableExtension on CborEncodable {
  String toJson({bool prettyPrint = false}) => serialize(forJson: true).toJsonV2(prettyPrint: prettyPrint);

  Uint8List computeBlake2bHash256() => blake2bHash256(cbor.cborEncode(serialize(forJson: false)));

  Uint8List serializeAsBytes() => serialize(forJson: false).uint8ListEncode();

  String serializeHexString() => cbor.cborEncode(serialize(forJson: false)).hexEncode();
}

extension CborExtensions on cbor.CborValue {
  Uint8List uint8ListEncode() => cbor.cborEncode(this).toUint8List();

  String hexEncode() => cbor.cborEncode(this).toUint8List().hexEncode();

  String toJsonV2({bool prettyPrint = false}) {
    final jsonString = const cbor.CborJsonEncoder().convert(this);

    final result = jsonString.substring(1, jsonString.length - 1);
    if (prettyPrint) {
      const toJsonFromString = JsonDecoder();
      final json = toJsonFromString.convert(jsonString);
      const encoder = JsonEncoder.withIndent("  ");
      final formattedJson = encoder.convert(json);
      return formattedJson;
    } else {
      return result;
    }
  }
}

extension IntListExtensions on Iterable<int> {
  cbor.CborValue cborDecode() => cbor.cborDecode(toList(growable: false));

  cbor.CborValue serializeCbor({required bool forJson, List<int> tags = const []}) => forJson
      ? cbor.CborString(tryCatch(t: (data) => utf8Encode(), c: (data) => hexEncode()))
      : cbor.CborBytes(toList(growable: false), tags: tags);

  String hexEncode() => HEX.encode(toList(growable: false));

  String utf8Encode() => utf8.decode(toList(growable: false));

  String bech32Encode(String hrp) => Bech32Encoder(hrp: hrp).encode(toList(growable: false));

  String addressBech32Encode() => bech32Encode(CardanoAddress.getAddressHrp(this));

  String addressBase58Orbech32Encode() => CardanoAddress.getAddressType(this) == AddressType.byron
      ? Base58Encode(toList(growable: false)) //
      : addressBech32Encode();

  Uint8List toUint8List() => Uint8List.fromList(toList(growable: false));
}

extension IntListListExtensions on Iterable<List<int>> {
  cbor.CborValue serializeCbor({required bool forJson, List<int> tags = const []}) => forJson
      ? cbor.CborString(fold<List<int>>([], (previousValue, element) => [...previousValue, ...element])
          .tryCatch(t: (data) => data.utf8Encode(), c: (data) => data.hexEncode()))
      : cbor.CborBytes.indefinite(toList(growable: false), tags: tags);
}
