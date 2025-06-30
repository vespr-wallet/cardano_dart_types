import "package:bip32_ed25519/api.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../binary/binary_reader_impl.dart";
import "../../../binary/binary_writer_impl.dart";

part "drep_diff_info.freezed.dart";

@Freezed(copyWith: false)
sealed class DRepDiffInfo with _$DRepDiffInfo {
  const factory DRepDiffInfo({
    required String dRepId, // bech32 id
    required String? metadataUrl,
  }) = _DRepDiffInfo;
  const DRepDiffInfo._();

  Uint8List marshal() {
    final BinaryWriterImpl writer = BinaryWriterImpl();
    writer.writeString(dRepId);
    writer.write(metadataUrl);
    return writer.toBytes();
  }

  factory DRepDiffInfo.unmarshal(Uint8List bytes) {
    final BinaryReaderImpl reader = BinaryReaderImpl(bytes);
    final dRepId = reader.readString();
    final metadataUrl = reader.read() as String?;
    return DRepDiffInfo(dRepId: dRepId, metadataUrl: metadataUrl);
  }
}
