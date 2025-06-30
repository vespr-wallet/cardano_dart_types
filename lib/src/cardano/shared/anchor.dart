// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:freezed_annotation/freezed_annotation.dart";

import "../../../cardano_dart_types.dart";
import "../../hd/util/CborDeserializationException.dart";
import "../cbor_encodable.dart";

part "anchor.freezed.dart";

@freezed
sealed class Anchor with _$Anchor implements CborEncodable {
  factory Anchor({
    required String anchorUrl,
    required Uint8List anchorDataHash,
    @Default(CborLengthType.auto) CborLengthType cborLengthType,
  }) = _Anchor;
  Anchor._();

  factory Anchor.deserialize(CborValue value) {
    if (value is! CborList) {
      throw CborDeserializationException(
        "Anchor deserialization failed. Expected a cbor list but got ${value.runtimeType}",
      );
    }
    if (value.length < 2) {
      throw CborDeserializationException(
        "Anchor deserialization failed. Invalid number of DataItem(s) : ${value.length}",
      );
    }

    return Anchor(
      anchorUrl: (value[0] as CborString).toString(),
      anchorDataHash: (value[1] as CborBytes).bytes.toUint8List(),
      cborLengthType: value.type,
    );
  }

  @override
  late final Lazy<String> metadataHashHex = Lazy(() => anchorDataHash.hexEncode());

  @override
  CborValue serialize({required bool forJson}) => CborList.of(
        [
          CborString(anchorUrl),
          forJson ? CborString(metadataHashHex.value) : CborBytes(anchorDataHash),
        ],
        type: cborLengthType,
      );
}
