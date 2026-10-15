// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";
import "gov_action_id.dart";
import "voter.dart";
import "voting_procedure.dart";

part "voting_procedures.freezed.dart";

@freezed
sealed class VotingProcedures with _$VotingProcedures implements CborEncodable {
  const factory VotingProcedures({
    // each voter's votes with the cbor length type of that inner map
    required Map<Voter, (Map<GovActionId, VotingProcedure>, CborLengthType)> voting,
    @Default(CborLengthType.definite) CborLengthType lengthType,
  }) = _VotingProcedures;
  const VotingProcedures._();

  factory VotingProcedures.deserialize({required CborValue cValue}) {
    if (cValue is! CborMap) {
      throw CborDeserializationException(
        "VotingProcedures deserialization failed. Invalid cbor type ${cValue.runtimeType} ; expected CborMap",
      );
    }

    return VotingProcedures(
      voting: {
        for (final e in cValue.entries)
          Voter.deserialize(e.key): (_deserializeVotingProcedureMap(e.value), (e.value as CborMap).type),
      },
      lengthType: cValue.type,
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborMap.fromEntries(
    voting.entries.map(
      (e) {
        final voter = e.key;
        final (votingProcedureMap, votesLengthType) = e.value;

        return MapEntry(
          voter.serialize(forJson: forJson),
          votingProcedureMap.serialize(forJson: forJson, lengthType: votesLengthType),
        );
      },
    ),
    type: lengthType,
  );
}

Map<GovActionId, VotingProcedure> _deserializeVotingProcedureMap(CborValue cMap) {
  if (cMap is! CborMap) {
    throw CborDeserializationException(
      "VotingProcedures deserialization failed. Invalid cbor type ${cMap.runtimeType} ; expected CborMap",
    );
  }

  return Map.fromEntries(
    cMap.entries.map(
      (e) {
        final govActionId = GovActionId.deserialize(e.key);
        final votingProcedure = VotingProcedure.deserialize(e.value);

        return MapEntry(govActionId, votingProcedure);
      },
    ),
  );
}

extension VotingProcedureMapX on Map<GovActionId, VotingProcedure> {
  CborMap serialize({required bool forJson, CborLengthType lengthType = CborLengthType.definite}) {
    return CborMap.fromEntries(
      entries.map(
        (e) {
          final govActionId = e.key;
          final votingProcedure = e.value;

          return MapEntry(
            govActionId.serialize(forJson: forJson),
            votingProcedure.serialize(forJson: forJson),
          );
        },
      ),
      type: lengthType,
    );
  }
}
