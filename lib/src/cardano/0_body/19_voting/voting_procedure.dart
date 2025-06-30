// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";
import "../../shared/anchor.dart";
import "vote.dart";

part "voting_procedure.freezed.dart";

@freezed
sealed class VotingProcedure with _$VotingProcedure implements CborEncodable {
  const factory VotingProcedure({
    required Vote vote,
    required Anchor? anchor,
  }) = _VotingProcedure;
  const VotingProcedure._();

  @override
  CborValue serialize({required bool forJson}) {
    final anchor = this.anchor;

    return CborList([
      vote.serialize(forJson: forJson),
      anchor == null ? const CborNull() : anchor.serialize(forJson: forJson),
    ]);
  }

  static VotingProcedure deserialize(CborValue cList) {
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

    final vote = Vote.deserialize(cList[0]);
    final anchor = cList[1] is CborNull ? null : Anchor.deserialize(cList[1]);

    return VotingProcedure(
      vote: vote,
      anchor: anchor,
    );
  }
}
