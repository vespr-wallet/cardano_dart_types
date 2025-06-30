# Cardano Dart Types

[![pub package](https://img.shields.io/pub/v/cardano_dart_types.svg)](https://pub.dev/packages/cardano_dart_types)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

A lightweight, open-source Dart/Flutter library providing Cardano blockchain data types and serialization utilities. This package is part of the [Cardano Flutter SDK](https://github.com/vespr-wallet/cardano_dart_sdk) and is designed to be used in Cardano wallets, explorers, and dApps built with Dart or Flutter.

**You can use this package standalone to manage Cardano types and perform serialization/deserialization. For more advanced features such as transaction signing and wallet operations, check out the [Cardano Flutter SDK](https://github.com/vespr-wallet/cardano_dart_sdk).**

## Features

- Comprehensive Cardano blockchain data models (addresses, transactions, UTxOs, voting, proposals, certificates, etc.)
- CBOR serialization/deserialization for all types
- Utilities for working with Cardano addresses (Bech32, Base58, hex, etc.)
- Support for Cardano governance/voting types (CIP-1694, etc.)
- Freezed data classes for immutability and pattern matching
- Well-tested and production-ready

## Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  cardano_dart_types: ^2.9.1
```

Then run:

```sh
dart pub get
```

## Usage

Import the package:

```dart
import 'package:cardano_dart_types/cardano_dart_types.dart';
```

### Example: Parse and Inspect a UTxO

```dart
import 'package:cardano_dart_types/cardano_dart_types.dart';

void main() {
  final hex = "828258202eae380975b17328970363c1729b95656d9fa121491847879020d09fd1ab453602825839016b33a292d5b19b2e7a4f78d007ed76050d0a4fed5b0b646c7ca1695fb8ed3be27550543f410a2f770642b1b0c2948887315390615260efa8821a4d76a64ba1581c8c9a2d459d2d8dc7c11192f971ab647fac65833121b7e8181e583c64a158203ef937764ed6b36a07b041ab5d1de7f7d776dc711e402d25a5f1d764c535fb4e1a000f3fb1";
  final utxo = Utxo.deserializeHex(hex);
  print(utxo.toJson(prettyPrint: true));
}
```

See the [`example/`](example/) directory for more usage examples:
- `parse_value_example.dart` — Parse and inspect Cardano values
- `utxos_example.dart` — Parse and print UTxOs
- `parse_hex_tx_example.dart` — Parse Cardano transactions from hex
- `parse_datum.dart` — Parse datum from transactions

## API Reference

All main types and utilities are exported from `package:cardano_dart_types/cardano_dart_types.dart`.

- Addresses: `CardanoAddress`, `CardanoAddressBase`, `CardanoAddressReward`, etc.
- Transactions: `CardanoTransaction`, `TransactionInput`, `TransactionOutput`, etc.
- UTxOs: `Utxo`
- Voting & Governance: `GovActionId`, `Vote`, `Voter`, `VotingProcedure`, etc.
- Certificates, Proposals, Metadata, and more

See the source code and doc comments for details.

## Contributing

Contributions are welcome! Please open issues or pull requests on [GitHub](https://github.com/vespr-wallet/cardano_dart_types).

1. Fork the repo and create your branch from `main`.
2. Add tests for new features or bug fixes.
3. Ensure all tests pass (`dart test`).
4. Open a pull request with a clear description of your changes.

## License

This project is licensed under the [MIT License](LICENSE).

## Links & Resources

- [Cardano Dart Types on pub.dev](https://pub.dev/packages/cardano_dart_types)
- [Cardano Flutter SDK (GitHub)](https://github.com/vespr-wallet/cardano_dart_sdk)
- [Cardano Documentation](https://docs.cardano.org/)
- [Open an Issue](https://github.com/vespr-wallet/cardano_dart_types/issues)
