// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:freezed_annotation/freezed_annotation.dart";

import "../../binary/binary_reader_impl.dart";
import "../../binary/binary_writer_impl.dart";

part "data_signature.freezed.dart";

part "data_signature.g.dart";

@freezed
sealed class DataSignature with _$DataSignature {
  const factory DataSignature({
    @JsonKey(name: "key") required String coseKeyHex, // hex encoded [CoseKey]
    @JsonKey(name: "signature") required String coseSignHex, // hex encoded [CoseSign] or [CoseSign1]
  }) = _DataSignature;
  const DataSignature._();

  factory DataSignature.fromJson(Map<String, dynamic> json) => _DataSignature.fromJson(json);

  factory DataSignature.unmarshal(Uint8List bytes) {
    final reader = BinaryReaderImpl(bytes);
    final coseKeyHex = reader.readString();
    final coseSignHex = reader.readString();
    return DataSignature(
      coseKeyHex: coseKeyHex,
      coseSignHex: coseSignHex,
    );
  }

  Uint8List marshal() {
    final writer = BinaryWriterImpl();
    writer.writeString(coseKeyHex);
    writer.writeString(coseSignHex);
    return writer.toBytes();
  }
}
