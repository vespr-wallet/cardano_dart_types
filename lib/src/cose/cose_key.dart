// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../cardano/cbor_encodable.dart";
import "../utils/transformations.dart";
import "cip30_constants.dart";

part "cose_key.freezed.dart";

@freezed
class CoseKey with _$CoseKey implements CborEncodable {

  const factory CoseKey({
    required Uint8List keyId, // verification key bytes
    @Default(CborSmallInt(ALG_EdDSA)) CborValue algorithmId,
    @Default(CborSmallInt(CRV_Ed25519)) CborValue crvKey,
    @Default(CborSmallInt(OKP)) CborValue keyType,
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
}
