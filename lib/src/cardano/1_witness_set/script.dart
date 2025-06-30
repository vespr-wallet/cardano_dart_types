import "dart:typed_data";

import "package:cbor/cbor.dart";

import "../../hd/util/blake2bhash.dart";
import "../../utils/transformations.dart";
import "../cbor_encodable.dart";

abstract class Script implements CborEncodable {
  const Script();

  Uint8List getScriptHash() => blake2bHash224(serialize(forJson: false).uint8ListEncode());

  String getPolicyId() => getScriptHash().hexEncode();

  @override
  CborValue serialize({required bool forJson});
}
