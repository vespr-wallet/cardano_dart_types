import "../cardano/shared/asset.dart";
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

/// Thrown by `CardanoTransaction.diff` under `TxDiManagement.safeAlwaysReject` (the default) for a transaction whose
/// `isValid` flag (`isValidDi`) is false.
///
/// The flag is not part of the signed transaction body, so it can be switched after signing without breaking any
/// signature. A summary that honours it can be defeated by a requester who presents the transaction as failing
/// phase-2 validation and submits it as valid once signed. See `TxDiManagement`.
class TransactionMarkedInvalidException extends Error {
  /// Hex of the blake2b-256 hash of the transaction body.
  final String txHash;

  TransactionMarkedInvalidException({required this.txHash});

  @override
  String toString() {
    return "Transaction [$txHash] is marked as failing script validation (isValid = false) and is not summarised: the "
        "flag is not covered by the signature, so it can be switched to true after signing, and signing it as marked "
        "would only forfeit the collateral. See TxDiManagement";
  }
}

/// Thrown by `CardanoTransaction.diff` for a transaction whose collateral puts more ADA of the wallet at risk than
/// `maxCollateralAdaExposure` allows, or any of its native tokens.
///
/// The ledger takes the collateral inputs and creates only the collateral return if a script fails, and the requester
/// can arrange that: script evaluation is fixed by the body, and the `isValid` flag can be switched after signing. A
/// legitimate transaction gets the excess back through the collateral return, including every token, since the ledger
/// requires the collateral balance to be ADA only.
class CollateralExposureTooHighException extends Error {
  /// Hex of the blake2b-256 hash of the transaction body.
  final String txHash;

  /// The wallet's collateral inputs minus the collateral return to [walletAddressBech32].
  final Value exposure;
  final double maxAdaExposure;
  final String walletAddressBech32;

  CollateralExposureTooHighException({
    required this.txHash,
    required this.exposure,
    required this.maxAdaExposure,
    required this.walletAddressBech32,
  });

  @override
  String toString() {
    final ada = exposure.lovelace.toBigInt() / BigInt.from(1000000);
    final tokens = exposure.multiAssets.any((e) => e.assets.any((a) => a.value.toBigInt() > BigInt.zero));
    return "Transaction [$txHash] puts $ada ADA${tokens ? " and native tokens" : ""} of the wallet at risk as "
        "collateral, which is lost if a script fails. At most $maxAdaExposure ADA and no tokens are allowed: return "
        "the rest to the wallet address [$walletAddressBech32] with the collateral return output, or use smaller "
        "collateral inputs";
  }
}
