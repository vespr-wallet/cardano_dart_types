import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../cardano_dart_types.dart";
import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";

part "transaction_input.freezed.dart";

/// Points to an UTXO unspent change entry using a transactionId and index.
@freezed
sealed class CardanoTransactionInput with _$CardanoTransactionInput implements CborEncodable {
  const factory CardanoTransactionInput({
    required String transactionHash, //hex
    required int index,
  }) = _CardanoTransactionInput;
  const CardanoTransactionInput._();

  @override
  CborList serialize({required bool forJson}) {
    return CborList.of(
      [
        forJson ? CborString(transactionHash) : CborBytes(transactionHash.hexDecode()),
        CborSmallInt(index),
      ],
    );
  }

  factory CardanoTransactionInput.deserialize({required CborList cList}) {
    if (cList.length != 2) {
      throw CborDeserializationException(
        "CardanoTransactionInput deserialization failed. Invalid cbor length ${cList.length}",
      );
    }

    final result = CardanoTransactionInput(
      transactionHash: (cList[0] as CborBytes).bytes.toUint8List().hexEncode(),
      index: (cList[1] as CborSmallInt).toInt(),
    );

    conditionalAssert(() => result.serializeHexString() == cList.hexEncode());

    return result;
  }
}
