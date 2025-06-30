import "package:bip32_ed25519/cardano.dart";
import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:hex/hex.dart";

import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";

part "stake_pool_id.freezed.dart";

@freezed
class StakePoolId with _$StakePoolId implements CborEncodable {

  const factory StakePoolId(Uint8List poolKeyHash) = _StakePoolId;
  const StakePoolId._();

  @override
  CborValue serialize({required bool forJson}) => forJson ? CborString(bech32PoolId) : CborBytes(poolKeyHash);

  String get bech32PoolId => const Bech32Encoder(hrp: "pool").encode(poolKeyHash);

  String get hexPoolId => poolKeyHash.hexEncode();

  factory StakePoolId.deserialize(CborBytes value) => StakePoolId(value.bytes.toUint8List());

  factory StakePoolId.fromHexPoolId(String poolId) {
    final Uint8List poolIdBytes = HEX.decode(poolId).toUint8List();
    return StakePoolId(poolIdBytes);
  }

  factory StakePoolId.fromBech32PoolId(String poolId) {
    final Uint8List poolIdBytes = const Bech32Encoder(hrp: "pool").decode(poolId);
    return StakePoolId(poolIdBytes);
  }
}
