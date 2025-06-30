// ignore_for_file: constant_identifier_names

import "../../../../cardano_dart_types.dart";
import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";

enum Vote implements CborEncodable {
  no(0),
  yes(1),
  abstain(2),
  ;

  final int serializeIntValue;

  const Vote(this.serializeIntValue);

  @override
  CborValue serialize({required bool forJson}) => forJson ? CborString(name) : CborSmallInt(serializeIntValue);

  static Vote deserialize(CborValue cValue) {
    if (cValue is! CborInt) {
      throw CborDeserializationException(
        "Vote deserialization failed. Invalid cbor type ${cValue.runtimeType} ; expected CborInt",
      );
    }
    return fromSerializeIntValue(cValue.toInt());
  }

  static Vote fromSerializeIntValue(int value) => Vote.values.firstWhere(
        (element) => element.serializeIntValue == value,
        orElse: () => throw Exception("Invalid Vote serializeIntValue $value"),
      );
}
