// ignore_for_file: constant_identifier_names

import "../../../../cardano_dart_types.dart";
import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";

enum VoterType implements CborEncodable {
  CONSTITUTIONAL_COMMITTEE_HOT_KEY_HASH(0),
  CONSTITUTIONAL_COMMITTEE_HOT_SCRIPT_HASH(1),
  DREP_KEY_HASH(2),
  DREP_SCRIPT_HASH(3),
  STAKING_POOL_KEY_HASH(4);

  final int serializeIntValue;

  const VoterType(this.serializeIntValue);

  @override
  CborValue serialize({required bool forJson}) => forJson ? CborString(name) : CborSmallInt(serializeIntValue);

  static VoterType deserialize(CborValue cValue) {
    if (cValue is! CborInt) {
      throw CborDeserializationException(
        "VoterType deserialization failed. Invalid cbor type ${cValue.runtimeType} ; expected CborInt",
      );
    }
    return fromSerializeIntValue(cValue.toInt());
  }

  static VoterType fromSerializeIntValue(int value) => VoterType.values.firstWhere(
    (element) => element.serializeIntValue == value,
    orElse: () => throw Exception("Invalid VoterType serializeIntValue $value"),
  );
}
