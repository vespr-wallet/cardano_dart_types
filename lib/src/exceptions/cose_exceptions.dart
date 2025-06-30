class CoseSign1ParseException extends CoseParseException {
  CoseSign1ParseException(super.message);
}

class CoseSignParseException extends CoseParseException {
  CoseSignParseException(super.message);
}

class CoseSigStructureParseException extends CoseParseException {
  CoseSigStructureParseException(super.message);
}

class CoseHeadersParseException extends CoseParseException {
  CoseHeadersParseException(super.message);
}

class CoseSignatureParseException extends CoseParseException {
  CoseSignatureParseException(super.message);
}

class CoseProtectedHeaderMapParseException extends CoseParseException {
  CoseProtectedHeaderMapParseException(super.message);
}

class CoseHeaderMapParseException extends CoseParseException {
  CoseHeaderMapParseException(super.message);
}

abstract class CoseParseException extends Error {
  final String message;

  CoseParseException(this.message);

  @override
  String toString() {
    return "Failed to parse COSE: $message";
  }
}
