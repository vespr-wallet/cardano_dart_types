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
