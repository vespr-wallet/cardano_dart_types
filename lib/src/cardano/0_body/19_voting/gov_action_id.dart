// ignore_for_file: invalid_annotation_target

import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../cardano_dart_types.dart";
import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";

part "gov_action_id.freezed.dart";

const govActionBech32Hrp = "gov_action";

@freezed
sealed class GovActionId with _$GovActionId implements CborEncodable {
  factory GovActionId({
    required String transactionId,
    required int govActionIndex,
  }) = _GovActionId;
  GovActionId._();

  @override
  late final Lazy<String> bech32 = Lazy(
    () => "$transactionId${govActionIndex.toRadixString(16).padLeft(2, '0')}".hexToBech32(govActionBech32Hrp),
  );

  @override
  CborValue serialize({required bool forJson}) => CborList([
        forJson ? CborString(transactionId) : CborBytes(transactionId.hexDecode()),
        CborSmallInt(govActionIndex),
      ]);

  static GovActionId deserialize(CborValue cList) {
    if (cList is! CborList) {
      throw CborDeserializationException(
        "GovActionId deserialization failed. Expected a cbor list but got ${cList.runtimeType}",
      );
    }
    if (cList.length != 2) {
      throw CborDeserializationException(
        "GovActionId deserialization failed. Invalid number of DataItem(s) : ${cList.length} ; expected  2",
      );
    }

    final txIdCbor = cList[0];
    if (txIdCbor is! CborBytes) {
      throw CborDeserializationException(
        "GovActionId - txIdCbor deserialization failed. Expected a cbor bytes but got ${txIdCbor.runtimeType}",
      );
    }
    final govActionIndexCbor = cList[1];
    if (govActionIndexCbor is! CborInt) {
      throw CborDeserializationException(
        "GovActionId - govActionIndexCbor deserialization failed. Expected a cbor int but got ${govActionIndexCbor.runtimeType}",
      );
    }

    final txId = txIdCbor.bytes.hexEncode();
    final govActionIndex = govActionIndexCbor.toBigInt();
    if (!govActionIndex.isValidInt) {
      throw CborDeserializationException(
        "GovActionId - govActionIndex deserialization failed. Expected value in small int range but got $govActionIndex",
      );
    }

    return GovActionId(
      transactionId: txId,
      govActionIndex: govActionIndex.toInt(),
    );
  }
}
