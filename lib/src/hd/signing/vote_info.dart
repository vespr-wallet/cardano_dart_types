// ignore_for_file: invalid_annotation_target

import "package:bip32_ed25519/api.dart";
import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../binary/binary_reader_impl.dart";
import "../../../binary/binary_writer_impl.dart";
import "../../cardano/0_body/19_voting/gov_action_id.dart";
import "../../cardano/0_body/19_voting/vote.dart";
import "../../utils/transformations.dart";

part "vote_info.freezed.dart";

@freezed
sealed class VoteInfo with _$VoteInfo {
  const factory VoteInfo({
    required GovActionId action,
    required Vote vote,
  }) = _VoteInfo;
  const VoteInfo._();

  Uint8List marshal() {
    final BinaryWriterImpl writer = BinaryWriterImpl();
    writer.writeByteList(action.serializeAsBytes());
    writer.writeByteList(vote.serializeAsBytes());
    return writer.toBytes();
  }

  factory VoteInfo.unmarshal(Uint8List bytes) {
    final BinaryReaderImpl reader = BinaryReaderImpl(bytes);
    final govAction = GovActionId.deserialize(cborDecode(reader.readByteList()));
    final vote = Vote.deserialize(cborDecode(reader.readByteList()));
    return VoteInfo(action: govAction, vote: vote);
  }
}
