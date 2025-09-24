// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../cardano/cbor_encodable.dart";
import "../exceptions/cose_exceptions.dart";
import "../utils/transformations.dart";
import "cose_headers.dart";
import "cose_signature.dart";

part "cose_sign.freezed.dart";

@freezed
sealed class CoseSign with _$CoseSign implements CborEncodable {
  const factory CoseSign({
    required CoseHeaders headers,
    required Uint8List payload,
    required List<CoseSignature> signatures,
  }) = _CoseSign;
  const CoseSign._();

  factory CoseSign.deserialize(CborValue cborValue) {
    if (cborValue is! CborList) {
      throw CoseSignParseException("cborValue is type ${cborValue.runtimeType}");
    }
    if (cborValue.length != 4) {
      throw CoseSignParseException("cborValue length is ${cborValue.length}. Expected 4.");
    }

    return CoseSign(
      headers: CoseHeaders.deserialize(CborList.of(cborValue.take(2))),
      payload: (cborValue[2] as CborBytes).bytes.toUint8List(),
      signatures: (cborValue[3] as CborList).map(CoseSignature.deserialize).toList(growable: false),
    );
  }

  factory CoseSign.deserializeHex(String hex) {
    final cborValue = hex.cborDecode();
    return CoseSign.deserialize(cborValue);
  }

  @override
  CborValue serialize({required bool forJson}) => CborList.of([
    ...(headers.serialize(forJson: forJson) as CborList),
    forJson ? CborString(payload.utf8Encode()) : CborBytes(payload),
    CborList.of(signatures.map((e) => e.serialize(forJson: forJson))),
  ]);
}
