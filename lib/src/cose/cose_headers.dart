// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../exceptions/cose_exceptions.dart";
import "cose_header_map.dart";
import "cose_item.dart";
import "cose_protected_header_map.dart";

part "cose_headers.freezed.dart";

@freezed
sealed class CoseHeaders with _$CoseHeaders implements COSEItem {
  const factory CoseHeaders({
    required CoseProtectedHeaderMap protectedHeader,
    required CoseHeaderMap unprotectedHeader,
  }) = _CoseHeaders;
  const CoseHeaders._();

  factory CoseHeaders.deserialize(CborValue cborValue) {
    if (cborValue is! CborList) {
      throw CoseHeadersParseException("cborValue is type ${cborValue.runtimeType}");
    }
    if (cborValue.length != 2) {
      throw CoseHeadersParseException("cborValue length is ${cborValue.length}. Expected length 3");
    }

    return CoseHeaders(
      protectedHeader: CoseProtectedHeaderMap.deserialize(cborValue[0]),
      unprotectedHeader: CoseHeaderMap.deserialize(cborValue[1]),
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborList.of([
    protectedHeader.serialize(forJson: forJson),
    unprotectedHeader.serialize(forJson: forJson),
  ]);
}
