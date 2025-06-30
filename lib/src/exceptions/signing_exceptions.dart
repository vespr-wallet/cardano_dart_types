import "../hd/ada_types.dart";
import "../hd/address/cardano_address.dart";

class InvalidWalletUsedForSigningException extends Error {
  final String expectedWalletAddress;
  final String actualWalletAddress;

  InvalidWalletUsedForSigningException({
    required this.expectedWalletAddress,
    required this.actualWalletAddress,
  });

  @override
  String toString() {
    return "Expected signature request with wallet [$expectedWalletAddress] but requested with [$actualWalletAddress]";
  }
}

class InvalidWalletNetworkForSigningException extends Error {
  final NetworkId expectedWalletNetwork;
  final NetworkId actualWalletNetwork;

  InvalidWalletNetworkForSigningException({
    required this.expectedWalletNetwork,
    required this.actualWalletNetwork,
  });

  @override
  String toString() {
    return "Expected signature request on network [$expectedWalletNetwork] but requested on [$actualWalletNetwork]";
  }
}

class SigningAddressNotFoundException extends Error {
  final Set<String> missingAddresses;
  final int searchedAddressesCount;

  SigningAddressNotFoundException({
    required this.missingAddresses,
    required this.searchedAddressesCount,
  });

  @override
  String toString() {
    return "Couldn't find the signing addresses [${missingAddresses.join(", ")}] requested in the searched range [0, $searchedAddressesCount]";
  }
}

class UnexpectedSigningAddressTypeException extends Error {
  final String hexAddress;
  final AddressType type;
  final String signingContext; // context where this error was thrown

  UnexpectedSigningAddressTypeException({
    required this.hexAddress,
    required this.type,
    required this.signingContext,
  });

  @override
  String toString() {
    return "Signing address (hex) [$hexAddress] is of unexpected type [$type]. $signingContext";
  }
}

class SigningAddressNotValidException extends Error {
  final String hexInvalidAddressOrCredential;
  final String signingContext; // context where this error was thrown

  SigningAddressNotValidException({
    required this.hexInvalidAddressOrCredential,
    required this.signingContext,
  });

  @override
  String toString() {
    return "Signing address (hex) [$hexInvalidAddressOrCredential] is not matching a valid hex address or credential. $signingContext";
  }
}
