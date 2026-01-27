import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../cardano_dart_types.dart";
import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";

part "transaction_input.freezed.dart";

/// Points to an UTXO unspent change entry using a transactionId and index.
@freezed
sealed class CardanoTransactionInput with _$CardanoTransactionInput implements CborEncodable {
  const factory CardanoTransactionInput({
    required TransactionHash transactionHash,
    required int index,
    @Default(CborLengthType.definite) CborLengthType lengthType,
    @Default([]) List<int> cborTags,
  }) = _CardanoTransactionInput;
  const CardanoTransactionInput._();

  @override
  CborList serialize({required bool forJson}) {
    return CborList.of(
      [
        transactionHash.serialize(forJson: forJson),
        CborSmallInt(index),
      ],
      type: lengthType,
      tags: cborTags,
    );
  }

  factory CardanoTransactionInput.deserialize({required CborList cList}) {
    if (cList.length != 2) {
      throw CborDeserializationException(
        "CardanoTransactionInput deserialization failed. Invalid cbor length ${cList.length}",
      );
    }

    final result = CardanoTransactionInput(
      transactionHash: TransactionHash.deserialize(cList[0]),
      index: (cList[1] as CborSmallInt).toInt(),
      lengthType: cList.type,
      cborTags: cList.tags,
    );

    conditionalAssert(() => result.serializeHexString() == cList.hexEncode());

    return result;
  }
}
