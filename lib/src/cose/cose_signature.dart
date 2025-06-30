// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../exceptions/cose_exceptions.dart";
import "../utils/transformations.dart";
import "cose_headers.dart";
import "cose_item.dart";

part "cose_signature.freezed.dart";

@freezed
sealed class CoseSignature with _$CoseSignature implements COSEItem {
  const factory CoseSignature({
    required CoseHeaders headers,
    required Uint8List signature,
  }) = _CoseSignature;
  const CoseSignature._();

  factory CoseSignature.deserialize(CborValue cborValue) {
    if (cborValue is! CborList) {
      throw CoseSignatureParseException("cborValue is type ${cborValue.runtimeType}");
    }
    if (cborValue.length != 3) {
      throw CoseSignatureParseException("cborValue length is ${cborValue.length}. Expected length 3");
    }

    return CoseSignature(
      headers: CoseHeaders.deserialize(CborList.of(cborValue.take(2))),
      signature: (cborValue[2] as CborBytes).bytes.toUint8List(),
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborList.of([
        ...(headers.serialize(forJson: forJson) as CborList),
        forJson ? CborString(signature.hexEncode()) : CborBytes(signature),
      ]);
}
