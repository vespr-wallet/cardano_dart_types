///
/// Represents ADA amount in lovelace.
///
typedef Coin = BigInt;

/// placeholder for future BigInt.zero
final Coin coinZero = BigInt.zero;

/// Native Token policyId appended to hex encoded coin name. ADA has no policyId
/// so its assetId is just 'lovelace' in hex: '6c6f76656c616365'. Simalur to 'unit'
/// but 'lovelace' is not hex encoded.
typedef AssetId = String;

/// String representation of bech32 address
typedef Bech32Address = String;

/// Hex encoded transaction hash ID
typedef TxIdHex = String;

/// Hex encoded block hash ID
typedef BlockHashHex = String;

/// Wallet ID - stakingPublicKey for Shelley wallets
typedef WalletId = String;

enum NetworkId {
  testnet(0),
  mainnet(1);

  final int intValue;

  const NetworkId(this.intValue);

  factory NetworkId.fromIntValue(int intValue) =>
      NetworkId.values.singleWhere((element) => element.intValue == intValue);
}
