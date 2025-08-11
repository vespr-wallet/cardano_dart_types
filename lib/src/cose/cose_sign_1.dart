// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../cardano/cbor_encodable.dart";
import "../exceptions/cose_exceptions.dart";
import "../utils/transformations.dart";
import "cose_headers.dart";

part "cose_sign_1.freezed.dart";

@freezed
sealed class CoseSign1 with _$CoseSign1 implements CborEncodable {
  const factory CoseSign1({
    required CoseHeaders headers,
    required Uint8List payload,
    required Uint8List signature,
  }) = _CoseSign1;
  const CoseSign1._();

  factory CoseSign1.deserialize(CborValue cborValue) {
    if (cborValue is! CborList) {
      throw CoseSign1ParseException("cborValue is type ${cborValue.runtimeType}");
    }
    if (cborValue.length != 4) {
      throw CoseSign1ParseException("cborValue length is ${cborValue.length}. Expected 4.");
    }

    return CoseSign1(
      headers: CoseHeaders.deserialize(CborList.of(cborValue.take(2))),
      payload: (cborValue[2] as CborBytes).bytes.toUint8List(),
      signature: (cborValue[3] as CborBytes).bytes.toUint8List(),
    );
  }

  factory CoseSign1.deserializeHex(String hex) {
    final cborValue = hex.cborDecode();
    return CoseSign1.deserialize(cborValue);
  }

  @override
  CborValue serialize({required bool forJson}) => CborList.of([
        ...(headers.serialize(forJson: forJson) as CborList),
        forJson ? CborString(payload.utf8OrHexEncode()) : CborBytes(payload),
        forJson ? CborString(signature.hexEncode()) : CborBytes(signature),
      ]);
}

extension _StringX on Uint8List {
  String utf8OrHexEncode() {
    try {
      return utf8Encode();
    } catch (e) {
      return hexEncode();
    }
  }
}
