// ignore_for_file: invalid_annotation_target

import "package:freezed_annotation/freezed_annotation.dart";

import "../hd/address/hd_wallet.dart";

part "cardano_signing_path.freezed.dart";

const int _harden = 0x80000000;

String _convert2HdPath(List<int> path) {
  final List<String> pathParts = path.map((part) {
    return (part >= _harden) ? "${part - _harden}'" : "$part";
  }).toList();

  return "m/${pathParts.join('/')}";
}

@freezed
sealed class CardanoSigningPath with _$CardanoSigningPath {
  CardanoSigningPath._();

  factory CardanoSigningPath.byron({
    required int account,
    required int address,
  }) = CardanoSigningPath_Byron;

  factory CardanoSigningPath.shelley({
    required int account,
    required int address,
    required Bip32KeyRole role,

  }) = CardanoSigningPath_Shelley;

  factory CardanoSigningPath.cip36({
    required int account,
    required int address,
  }) = CardanoSigningPath_CIP36;

  factory CardanoSigningPath.custom({
    required List<int> path,
  }) = CardanoSigningPath_Custom;

  @override
  late final List<int> signingPath = switch (this) {
    CardanoSigningPath_Byron(:final account, :final address) => [
        _harden + 44,
        _harden + 1815,
        _harden + account,
        0,
        address,
      ],
    CardanoSigningPath_Shelley(:final account, :final role, :final address) => [
        _harden + 1852,
        _harden + 1815,
        _harden + account,
        role.derivationIndex,
        address,
      ],
    CardanoSigningPath_CIP36(:final account, :final address) => [
        _harden + 1694,
        _harden + 1815,
        _harden + account,
        0,
        address,
      ],
    CardanoSigningPath_Custom(:final path) => path,
  };

  String hdPath() => _convert2HdPath(signingPath);
}
