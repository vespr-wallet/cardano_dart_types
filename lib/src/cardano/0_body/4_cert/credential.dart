// ignore_for_file: constant_identifier_names

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../hd/util/CborDeserializationException.dart";
import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";

part "credential.freezed.dart";

enum CredType {
  ADDR_KEY_HASH(0),
  SCRIPT_HASH(1);

  final int intValue;

  const CredType(this.intValue);

  factory CredType.fromSmallInt(int value) => CredType.values.singleWhere(
    (element) => element.intValue == value,
    orElse: () =>
        throw CborDeserializationException("CredentialType deserialization failed. Invalid StakeCredType : $value"),
  );
}

@freezed
sealed class Credential with _$Credential implements CborEncodable {
  const factory Credential(
    CredType type,
    Uint8List vKeyHash,
  ) = _Credential;

  const Credential._();

  @override
  CborValue serialize({required bool forJson}) => CborList([
    forJson ? CborString(type.name) : CborSmallInt(type.intValue),
    ...forJson
        ? [
            CborString(vKeyHash.hexEncode()),
            CborString("as stake: ${"e1${vKeyHash.hexEncode()}".hexAddressToBech32()}"),
            CborString("as base: ${"01${vKeyHash.hexEncode()}".hexAddressToBech32()}"),
          ]
        : [CborBytes(vKeyHash)],
  ]);

  factory Credential.deserialize(CborValue cList) {
    if (cList is! CborList) {
      throw CborDeserializationException(
        "Credential deserialization failed. Invalid cbor type ${cList.runtimeType} ; expected CborList",
      );
    }
    if (cList.length < 2) {
      throw CborDeserializationException(
        "Credential deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
      );
    }

    final CborSmallInt cTypeDi = cList[0] as CborSmallInt;
    final CborBytes cHashDi = cList[1] as CborBytes;

    final Credential credential = Credential(
      CredType.fromSmallInt(cTypeDi.value),
      cHashDi.bytes.toUint8List(),
    );

    return credential;
  }
}
