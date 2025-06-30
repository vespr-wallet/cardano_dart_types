import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../hd/util/CborDeserializationException.dart";
import "../../utils/transformations.dart";
import "../0_body/0_inputs/transaction_input.dart";
import "../0_body/1_outputs/transaction_output.dart";
import "../cbor_encodable.dart";

part "utxo.freezed.dart";

@freezed
sealed class Utxo with _$Utxo implements CborEncodable {
  const factory Utxo({
    required CardanoTransactionInput identifier,
    required CardanoTransactionOutput content,
  }) = _Utxo;
  const Utxo._();

  @override
  CborValue serialize({required bool forJson}) => CborList([
        identifier.serialize(forJson: forJson),
        content.serialize(forJson: forJson),
      ]);

  factory Utxo.deserializeBytes(Uint8List bytes) {
    return Utxo.deserialize(cbor.decode(bytes));
  }

  factory Utxo.deserializeHex(String cborHex) {
    return Utxo.deserializeBytes(cborHex.hexDecode());
  }

  factory Utxo.deserialize(CborValue cborValue) {
    if (cborValue is CborList) {
      if (cborValue.length != 2) {
        throw CborDeserializationException("Utxo deserialization failed. Invalid cbor length ${cborValue.length}");
      }
      final utxoInfo = cborValue[0] as CborList;
      final utxoContent = cborValue[1];

      return Utxo(
        identifier: CardanoTransactionInput.deserialize(cList: utxoInfo),
        content: CardanoTransactionOutput.deserialize(utxoContent),
      );
    } else {
      throw CborDeserializationException("Utxo deserialization failed. Invalid cbor type ${cborValue.runtimeType}");
    }
  }

//
// [
//  [
//    "RIzCpEd89jg-fU_hP7Lzy-9x2zr0rpL1wOaS4Ab6sBc", // txhash Bytes -> usable as hex
//    1 // txId
//  ],
//  [
//    "Ae1J2a29BlkikLmhYDI3XWt51N92DK0Nm8qVVfxBmfZrFs6etYSe2WRz-s4CWy6by98eNSrUNimB", // address bytes -> usable as bech32
//    [
//      2129140, // lovelace bigint
//      { // Value object
//        "CkNSR11mOB1bxyVyJHJep6g6EV_4HCV9sHpoPA":{"SURqZWVmbw":1},
//      }
//    ]
//  ]
// ]
//
}
