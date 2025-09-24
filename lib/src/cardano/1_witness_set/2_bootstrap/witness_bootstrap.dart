import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../exceptions/parse_exceptions.dart";
import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";

part "witness_bootstrap.freezed.dart";

@freezed
sealed class WitnessBootstrap with _$WitnessBootstrap implements CborEncodable {
  const factory WitnessBootstrap({
    required Uint8List publicKey,
    required Uint8List signature,
    required Uint8List chainCode,
    required Uint8List attributes,
  }) = _WitnessBootstrap;
  const WitnessBootstrap._();

  factory WitnessBootstrap.deserialize(CborValue cborValue) {
    if (cborValue is! CborList) {
      throw WitnessBootstrapParseException("cborValue is type ${cborValue.runtimeType}");
    }
    if (cborValue.length != 4) {
      throw WitnessBootstrapParseException("cborValue length is ${cborValue.length}");
    }

    return WitnessBootstrap(
      publicKey: (cborValue[0] as CborBytes).bytes.toUint8List(),
      signature: (cborValue[1] as CborBytes).bytes.toUint8List(),
      chainCode: (cborValue[2] as CborBytes).bytes.toUint8List(),
      attributes: (cborValue[3] as CborBytes).bytes.toUint8List(),
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborList.of([
    publicKey.serializeCbor(forJson: forJson),
    signature.serializeCbor(forJson: forJson),
    chainCode.serializeCbor(forJson: forJson),
    attributes.serializeCbor(forJson: forJson),
  ]);
}
