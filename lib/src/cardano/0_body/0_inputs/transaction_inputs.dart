// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";
import "transaction_input.dart";

part "transaction_inputs.freezed.dart";

@freezed
sealed class CardanoTransactionInputs with _$CardanoTransactionInputs implements CborEncodable {
  const factory CardanoTransactionInputs({
    required List<CardanoTransactionInput> data,
    required List<int> cborTags, // [258] tag may be sent in Conway era | passed for ledger serialization
  }) = _CardanoTransactionInputs;
  const CardanoTransactionInputs._();

  factory CardanoTransactionInputs.deserialize(CborValue cValue) {
    if (cValue is! CborList) {
      throw CborDeserializationException(
        "CardanoTransactionInputs deserialization failed. Invalid cbor type ${cValue.runtimeType}",
      );
    }

    return CardanoTransactionInputs(
      data: cValue.map((e) => CardanoTransactionInput.deserialize(cList: e as CborList)).toList(),
      cborTags: cValue.tags,
    );
  }

  @override
  CborList serialize({required bool forJson}) {
    return CborList.of(
      [
        ...data.map((input) => input.serialize(forJson: forJson)),
        ...forJson ? [CborString("tags: $cborTags")] : [],
      ],
      tags: cborTags,
      type: CborLengthType.definite,
    );
  }
}
