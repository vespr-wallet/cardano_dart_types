// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../cardano/cbor_encodable.dart";
import "../exceptions/cose_exceptions.dart";
import "../utils/transformations.dart";
import "cip30_constants.dart";

part "cose_key.freezed.dart";

const _defaultAlgorithmId = CborSmallInt(ALG_EdDSA);
const _defaultCrvKey = CborSmallInt(CRV_Ed25519);
const _defaultKeyType = CborSmallInt(OKP);

@freezed
sealed class CoseKey with _$CoseKey implements CborEncodable {
  const factory CoseKey({
    required Uint8List keyId, // verification key bytes
    @Default(_defaultAlgorithmId) CborValue algorithmId,
    @Default(_defaultCrvKey) CborValue crvKey,
    @Default(_defaultKeyType) CborValue keyType,
  }) = _CoseKey;
  const CoseKey._();

  @override
  CborValue serialize({required bool forJson}) => CborMap.of(
        {
          (forJson ? CborString("keyType") : const CborSmallInt(1)): keyType,
          (forJson ? CborString("algorithmId") : const CborSmallInt(3)): algorithmId,
          (forJson ? CborString("crvKey") : const CborSmallInt(CRV_KEY)): crvKey,
          (forJson ? CborString("keyId") : const CborSmallInt(X_KEY)):
              (forJson ? CborString(keyId.addressBech32Encode()) : CborBytes(keyId)),
        },
      );

  factory CoseKey.deserialize(CborValue cValue) {
    if (cValue is! CborMap) {
      throw CoseKeyParseException("cbor value is type ${cValue.runtimeType}");
    }

    final keyId = cValue[const CborSmallInt(X_KEY)] as CborBytes?;
    if (keyId == null) {
      throw CoseKeyParseException("keyId (X_KEY) is required but not found");
    }

    final keyType = cValue[const CborSmallInt(1)] ?? _defaultKeyType;
    final algorithmId = cValue[const CborSmallInt(3)] ?? _defaultAlgorithmId;
    final crvKey = cValue[const CborSmallInt(CRV_KEY)] ?? _defaultCrvKey;

    return CoseKey(
      keyId: keyId.bytes.toUint8List(),
      keyType: keyType,
      algorithmId: algorithmId,
      crvKey: crvKey,
    );
  }

  factory CoseKey.deserializeHex(String hex) {
    final cborValue = hex.cborDecode();
    return CoseKey.deserialize(cborValue);
  }
}
