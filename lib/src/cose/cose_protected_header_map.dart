// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../exceptions/cose_exceptions.dart";
import "../utils/transformations.dart";
import "cose_header_map.dart";
import "cose_item.dart";

part "cose_protected_header_map.freezed.dart";

@freezed
sealed class CoseProtectedHeaderMap with _$CoseProtectedHeaderMap implements COSEItem {
  const factory CoseProtectedHeaderMap({
    required Uint8List bytes,
  }) = _CoseProtectedHeaderMap;
  const CoseProtectedHeaderMap._();

  factory CoseProtectedHeaderMap.deserialize(CborValue cborValue) {
    if (cborValue is! CborBytes) {
      throw CoseProtectedHeaderMapParseException("cborValue is type ${cborValue.runtimeType}");
    }

    return CoseProtectedHeaderMap(bytes: cborValue.bytes.toUint8List());
  }

  @override
  CborValue serialize({required bool forJson}) => forJson //
      ? CoseHeaderMap.deserialize(bytes.cborDecode()).serialize(forJson: forJson)
      : CborBytes(bytes);
}
