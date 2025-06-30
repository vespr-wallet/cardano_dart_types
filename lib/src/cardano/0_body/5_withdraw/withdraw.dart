import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../utils/transformations.dart";

part "withdraw.freezed.dart";

@freezed
class Withdraw with _$Withdraw {

  const factory Withdraw(String stakeAddressBech32, BigInt coin) = _Withdraw;
  const Withdraw._();

  MapEntry<CborValue, CborInt> serializeEntry({required bool forJson}) => MapEntry(
        forJson ? CborString(stakeAddressBech32) : CborBytes(stakeAddressBech32.bech32Decode()),
        CborInt(coin),
      );

  factory Withdraw.deserialize({required CborBytes stakeAddress, required CborInt coin}) =>
      Withdraw(stakeAddress.bytes.toUint8List().addressBech32Encode(), coin.toBigInt());
}

extension WithdrawIterableExtension on Iterable<Withdraw> {
  CborValue serialize({required bool forJson}) => CborMap.fromEntries(
        map((withdrawEntry) => withdrawEntry.serializeEntry(forJson: forJson)),
      );
}
