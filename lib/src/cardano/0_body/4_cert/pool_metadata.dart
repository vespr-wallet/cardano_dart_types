// ignore_for_file: invalid_annotation_target

import "package:bip32_ed25519/cardano.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../cardano_dart_types.dart";
import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";

part "pool_metadata.freezed.dart";

@freezed
sealed class PoolMetadata with _$PoolMetadata implements CborEncodable {
  factory PoolMetadata({
    required String metadataUrl,
    required Uint8List metadataHash,
    required CborLengthType cborLengthType,
  }) = _PoolMetadata;
  PoolMetadata._();

  factory PoolMetadata.deserialize(CborValue value) {
    if (value is! CborList) {
      throw CborDeserializationException(
        "PoolMetadata deserialization failed. Expected a cbor list but got ${value.runtimeType}",
      );
    }
    if (value.length < 2) {
      throw CborDeserializationException(
        "PoolMetadata deserialization failed. Invalid number of DataItem(s) : ${value.length}",
      );
    }

    return PoolMetadata(
      metadataUrl: (value[0] as CborString).toString(),
      metadataHash: (value[1] as CborBytes).bytes.toUint8List(),
      cborLengthType: value.type,
    );
  }

  @override
  late final Lazy<String> metadataHashHex = Lazy(() => metadataHash.hexEncode());

  @override
  CborValue serialize({required bool forJson}) => CborList.of(
    [
      CborString(metadataUrl),
      forJson ? CborString(metadataHashHex.value) : CborBytes(metadataHash),
    ],
    type: cborLengthType,
  );
}
