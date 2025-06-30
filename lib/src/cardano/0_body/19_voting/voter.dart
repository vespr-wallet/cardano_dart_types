// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../hd/util/CborDeserializationException.dart";
import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";
import "voter_type.dart";

part "voter.freezed.dart";

@freezed
sealed class Voter with _$Voter implements CborEncodable {
  // This is very similar to [Credential]
  const factory Voter({
    required VoterType voterType,
    required Uint8List vKeyHash,
  }) = _Voter;
  const Voter._();

  @override
  CborValue serialize({required bool forJson}) => CborList([
        voterType.serialize(forJson: forJson),
        forJson ? CborString(vKeyHash.hexEncode()) : CborBytes(vKeyHash),
      ]);

  factory Voter.deserialize(CborValue cList) {
    if (cList is! CborList) {
      throw CborDeserializationException(
        "Voter deserialization failed. Invalid cbor type ${cList.runtimeType} ; expected CborList",
      );
    }
    if (cList.length != 2) {
      throw CborDeserializationException(
        "Voter deserialization failed. Invalid number of DataItem(s) : ${cList.length} ; expected  2",
      );
    }
    final vKeyHash = cList[1];
    if (vKeyHash is! CborBytes) {
      throw CborDeserializationException(
        "Voter deserialization failed. Invalid cbor type ${vKeyHash.runtimeType} ; expected CborBytes",
      );
    }

    return Voter(
      voterType: VoterType.deserialize(cList[0]),
      vKeyHash: vKeyHash.bytes.toUint8List(),
    );
  }
}
