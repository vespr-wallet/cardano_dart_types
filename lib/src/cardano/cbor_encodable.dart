import "package:cbor/cbor.dart";

abstract interface class CborEncodable {
  const CborEncodable();

  CborValue serialize({required bool forJson});
}
