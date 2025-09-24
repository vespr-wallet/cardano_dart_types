// ignore_for_file: invalid_annotation_target

import "package:freezed_annotation/freezed_annotation.dart";

import "../hd/address/hd_wallet.dart";

part "cardano_signing_path.freezed.dart";

const int _harden = 0x80000000;

String _convert2HdPath({required List<int> path}) {
  final List<String> pathParts = path.map((part) {
    return (part >= _harden) ? "${part - _harden}'" : "$part";
  }).toList();

  return "m/${pathParts.join('/')}";
}

@freezed
sealed class CardanoSigningPath with _$CardanoSigningPath {
  CardanoSigningPath._();

  factory CardanoSigningPath.byron({
    required int address,
  }) = CardanoSigningPath_Byron;

  factory CardanoSigningPath.shelley({
    required int address,
    required Bip32KeyRole role,
  }) = CardanoSigningPath_Shelley;

  factory CardanoSigningPath.cip36({
    required int address,
  }) = CardanoSigningPath_CIP36;

  List<int> signingPath({required int accountIndex}) => switch (this) {
    CardanoSigningPath_Byron(:final address) => [
      _harden + 44,
      _harden + 1815,
      _harden + accountIndex,
      0,
      address,
    ],
    CardanoSigningPath_Shelley(:final role, :final address) => [
      _harden + 1852,
      _harden + 1815,
      _harden + accountIndex,
      role.derivationIndex,
      address,
    ],
    CardanoSigningPath_CIP36(:final address) => [
      _harden + 1694,
      _harden + 1815,
      _harden + accountIndex,
      0,
      address,
    ],
    // CardanoSigningPath_Custom(:final path) => path,
  };

  String hdPath({required int accountIndex}) => _convert2HdPath(
    path: signingPath(accountIndex: accountIndex),
  );
}
