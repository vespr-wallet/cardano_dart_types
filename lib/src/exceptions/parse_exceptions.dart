class CardanoValueParseException extends TransactionParseException {
  CardanoValueParseException(super.message);
}

class PolicyIdParseException extends TransactionParseException {
  PolicyIdParseException(super.message);
}

class AssetNameParseException extends TransactionParseException {
  AssetNameParseException(super.message);
}

class AddressParseException extends TransactionParseException {
  AddressParseException(super.message);
}

class TransactionHashParseException extends TransactionParseException {
  TransactionHashParseException(super.message);
}

class TransactionOutputParseException extends TransactionParseException {
  TransactionOutputParseException(super.message);
}

/// A post-Alonzo transaction output has a key this library does not parse: anything but 0 (address), 1 (value),
/// 2 (datum) and 3 (script ref), or one of those with a CBOR tag. A parsed output would leave it out, so a summary of it
/// could differ from the signed one, while the witnesses still sign the original bytes, key included. Refused instead.
class TransactionOutputUnknownKeyException extends TransactionOutputParseException {
  TransactionOutputUnknownKeyException(this.keys)
    : super("the transaction output has keys that are not supported: $keys");

  /// The unsupported keys, in the order they appear in the output.
  final List<Object> keys;
}

class TransactionBodyParseException extends TransactionParseException {
  TransactionBodyParseException(super.message);
}

/// A map in the transaction body has a duplicate key. Decoding keeps only the last value, which need not be the one the
/// ledger reads, so a summary of the parsed body could differ from the signed one. Refused instead.
class TransactionBodyDuplicateKeyException extends TransactionBodyParseException {
  TransactionBodyDuplicateKeyException() : super("a map in the transaction body has a duplicate key");
}

/// The transaction body has a key this library does not parse, such as the Dijkstra era's sub-transactions (23) or
/// direct deposits (25). A parsed body would leave it out, so a summary of it could differ from the signed one, while
/// the witnesses still sign the original bytes, key included. Refused instead.
class TransactionBodyUnknownKeyException extends TransactionBodyParseException {
  TransactionBodyUnknownKeyException(this.keys) : super("the transaction body has keys that are not supported: $keys");

  /// The unsupported keys, in the order they appear in the body.
  final List<Object> keys;
}

class WitnessBootstrapParseException extends TransactionParseException {
  WitnessBootstrapParseException(super.message);
}

class WitnessPlutusScriptV1ParseException extends TransactionParseException {
  WitnessPlutusScriptV1ParseException(super.message);
}

class WitnessPlutusScriptV2ParseException extends TransactionParseException {
  WitnessPlutusScriptV2ParseException(super.message);
}

class WitnessPlutusScriptV3ParseException extends TransactionParseException {
  WitnessPlutusScriptV3ParseException(super.message);
}

class PlutusDataParseException extends TransactionParseException {
  PlutusDataParseException(super.message);
}

class ExUnitsParseException extends TransactionParseException {
  ExUnitsParseException(super.message);
}

class RedeemerParseException extends TransactionParseException {
  RedeemerParseException(super.message);
}

class NativeScriptParseException extends WitnessParseException {
  NativeScriptParseException(super.message);
}

abstract class TransactionParseException extends Error {
  final String message;

  TransactionParseException(this.message);

  @override
  String toString() {
    return "Failed to parse Cardano Transaction: $message";
  }
}

abstract class WitnessParseException extends Error {
  final String message;

  WitnessParseException(this.message);

  @override
  String toString() {
    return "Failed to parse Witness: $message";
  }
}
