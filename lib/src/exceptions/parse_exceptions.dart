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

class TransactionBodyParseException extends TransactionParseException {
  TransactionBodyParseException(super.message);
}

/// The transaction body does not re-serialize to the bytes it was parsed from, because of an encoding this library
/// normalizes: a non-minimal integer or length head, a chunked string or a duplicate map key (only the last value is
/// kept). The parsed body may then differ from what the ledger reads from those bytes, and its hash is not the
/// transaction id, so a summary or signature of it would not be of the transaction. Refused instead.
class NonCanonicalTransactionBodyException extends TransactionBodyParseException {
  NonCanonicalTransactionBodyException()
    : super(
        "the transaction body does not re-serialize to its original bytes. Encode it without non-minimal integer or "
        "length heads, chunked strings or duplicate map keys",
      );
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
