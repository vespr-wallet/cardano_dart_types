// ignore_for_file: omit_local_variable_types

import "package:bip32_ed25519/api.dart";
import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:hex/hex.dart";

import "../../../hd/util/blake2bhash.dart";
import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";

part "witness_v_key.freezed.dart";

extension _BechExt on Iterable<int> {
  String vkeyBech32Encode() => const Bech32Encoder(hrp: "addr_vk").encode(toList(growable: false));
}

/// A witness is a public key and a signature (a signed hash of the body) used for on-chain validation.
@freezed
class WitnessVKey with _$WitnessVKey implements CborEncodable {

  const factory WitnessVKey({required Uint8List vkey, required Uint8List signature}) = _WitnessVKey;
  const WitnessVKey._();

  @override
  CborList serialize({required bool forJson}) => CborList.of(
        [
          if (forJson) CborString("credentials: ${blake2bHash224(vkey).hexEncode()}"),
          forJson ? CborString(vkey.vkeyBech32Encode()) : CborBytes(vkey),
          forJson ? CborString(signature.hexEncode()) : CborBytes(signature),
        ],
      );

  factory WitnessVKey.deserialize({required CborList cList}) {
    return WitnessVKey(
      vkey: (cList[0] as CborBytes).bytes.toUint8List(),
      signature: (cList[1] as CborBytes).bytes.toUint8List(),
    );
  }

  factory WitnessVKey.deserializeFromHex({required String hexCbor}) {
    final cborValue = cbor.decode(HEX.decode(hexCbor));
    if (cborValue is! CborList) {
      throw CborMalformedException("cborValue is ${cborValue.runtimeType}");
    }

    return WitnessVKey.deserialize(cList: cborValue);
  }
}
