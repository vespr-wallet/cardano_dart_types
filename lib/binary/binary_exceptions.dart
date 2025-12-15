import "frame.dart";

sealed class BinaryException implements Exception {
  final String message;

  BinaryException(this.message);

  @override
  // ignore: no_runtimetype_tostring
  String toString() => "BinaryException($runtimeType): $message";
}

class UnexpectedBinaryTypeException extends BinaryException {
  UnexpectedBinaryTypeException({
    required FrameValueType expectedTypeId,
    required int actualTypeId,
  }) : super("Expected ${expectedTypeId.name} but got $actualTypeId");
}

class UnknownBinaryTypeException extends BinaryException {
  UnknownBinaryTypeException({
    required int typeId,
    required String message,
  }) : super("Unknown typeId: $typeId: $message");
}

class BinaryRangeErrorException extends BinaryException {
  BinaryRangeErrorException({
    required int requiredBytes,
    required int availableBytes,
  }) : super("Required $requiredBytes bytes but only $availableBytes available");
}

class BinaryCorruptedException extends BinaryException {
  BinaryCorruptedException(super.message);
}
