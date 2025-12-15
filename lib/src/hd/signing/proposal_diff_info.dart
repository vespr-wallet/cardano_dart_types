// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:freezed_annotation/freezed_annotation.dart";

import "../../../cardano_dart_types.dart";

part "proposal_diff_info.freezed.dart";

@freezed
sealed class ProposalDiffInfo with _$ProposalDiffInfo {
  const factory ProposalDiffInfo({
    required GovActionId proposalId,
    required GovAction proposal,
  }) = _ProposalDiffInfo;
  const ProposalDiffInfo._();

  Uint8List marshal() {
    final writer = BinaryWriter();
    writer.writeByteList(proposalId.serializeAsBytes());
    writer.writeByteList(proposal.serializeAsBytes());
    return writer.toBytes();
  }

  factory ProposalDiffInfo.unmarshal(Uint8List bytes) {
    final reader = BinaryReader(bytes);
    final proposalId = GovActionId.deserialize(cborDecode(reader.readByteList()));
    final proposal = GovAction.deserialize(cborDecode(reader.readByteList()));
    return ProposalDiffInfo(proposalId: proposalId, proposal: proposal);
  }
}
