// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../utils/sugar.dart";
import "../../cbor_encodable.dart";
import "../../shared/nonce.dart";
import "../../shared/rational_number.dart";
import "protocol_version.dart";

part "protocol_param_update.freezed.dart";

@freezed
sealed class ProtocolParamUpdate with _$ProtocolParamUpdate implements CborEncodable {
  const factory ProtocolParamUpdate({
    required BigInt? minFeeA, // 0
    required BigInt? minFeeB, // 1
    required int? maxBlockSize, // 2
    required int? maxTxSize, // 3
    required int? maxBlockHeaderSize, // 4
    required BigInt? keyDeposit, // 5
    required BigInt? poolDeposit, // 6
    required int? maxEpoch, // 7
    required int? nOpt, // 8
    required RationalNumber? poolPledgeInfluence, // 9
    required RationalNumber? expansionRate, // 10
    required RationalNumber? treasuryGrowth, // 11
    @Deprecated("") required RationalNumber? decentralisationConstant, // 12
    @Deprecated("Removed in Babbage era") required Nonce? extraEntropy, // 13
    required ProtocolVersion? protocolVersion, // 14
    @Deprecated("") required BigInt? minUtxo, // 15
    required BigInt? minPoolCost, // 16
    required BigInt? adaPerUtxoByte, // 17
    // Alonzo changes
    required CborValue? costmdls, // 18
    required CborValue? executionCosts, // 19
    required CborValue? maxTxExUnits, // 20
    required CborValue? maxBlockExUnits, // 21
    required BigInt? maxValSize, // 22
    required int? collateralPercentage, // 23
    required int? maxCollateralInputs, // 24
  }) = _ProtocolParamUpdate;
  const ProtocolParamUpdate._();

  factory ProtocolParamUpdate.deserialize(CborValue cMap) {
    if (cMap is! CborMap) {
      throw Exception("ProtocolParamUpdate deserialization failed. Expected a cbor map but got ${cMap.runtimeType}");
    }
    final mapOfCbor = cMap.map((key, value) {
      if (key is! CborInt) {
        throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected key to be cbor int but got ${key.runtimeType}");
      }
      return MapEntry(key.toInt(), value);
    });

    return ProtocolParamUpdate(
      minFeeA: mapOfCbor[0]?.let((cValue) {
        if (cValue is! CborInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected minFeeA to be cbor int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toBigInt();
      }),
      minFeeB: mapOfCbor[1]?.let((cValue) {
        if (cValue is! CborInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected minFeeB to be cbor int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toBigInt();
      }),
      maxBlockSize: mapOfCbor[2]?.let((cValue) {
        if (cValue is! CborInt || !cValue.toBigInt().isValidInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected maxBlockSize to be cbor small int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toInt();
      }),
      maxTxSize: mapOfCbor[3]?.let((cValue) {
        if (cValue is! CborInt || !cValue.toBigInt().isValidInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected maxTxSize to be cbor small int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toInt();
      }),
      maxBlockHeaderSize: mapOfCbor[4]?.let((cValue) {
        if (cValue is! CborInt || !cValue.toBigInt().isValidInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected maxBlockHeaderSize to be cbor small int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toInt();
      }),
      keyDeposit: mapOfCbor[5]?.let((cValue) {
        if (cValue is! CborInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected keyDeposit to be cbor int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toBigInt();
      }),
      poolDeposit: mapOfCbor[6]?.let((cValue) {
        if (cValue is! CborInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected poolDeposit to be cbor int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toBigInt();
      }),
      maxEpoch: mapOfCbor[7]?.let((cValue) {
        if (cValue is! CborInt || !cValue.toBigInt().isValidInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected maxEpoch to be cbor small int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toInt();
      }),
      nOpt: mapOfCbor[8]?.let((cValue) {
        if (cValue is! CborInt || !cValue.toBigInt().isValidInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected nOpt to be cbor small int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toInt();
      }),
      poolPledgeInfluence: mapOfCbor[9]?.let(RationalNumber.deserialize),
      expansionRate: mapOfCbor[10]?.let(RationalNumber.deserialize),
      treasuryGrowth: mapOfCbor[11]?.let(RationalNumber.deserialize),
      decentralisationConstant: mapOfCbor[12]?.let(RationalNumber.deserialize),
      extraEntropy: mapOfCbor[13]?.let(Nonce.deserialize),
      protocolVersion: mapOfCbor[14]?.let(ProtocolVersion.deserialize),
      minUtxo: mapOfCbor[15]?.let((cValue) {
        if (cValue is! CborInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected minUtxo to be cbor int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toBigInt();
      }),
      minPoolCost: mapOfCbor[16]?.let((cValue) {
        if (cValue is! CborInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected minPoolCost to be cbor int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toBigInt();
      }),
      adaPerUtxoByte: mapOfCbor[17]?.let((cValue) {
        if (cValue is! CborInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected adaPerUtxoByte to be cbor int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toBigInt();
      }),
      costmdls: mapOfCbor[18],
      executionCosts: mapOfCbor[19],
      maxTxExUnits: mapOfCbor[20],
      maxBlockExUnits: mapOfCbor[21],
      maxValSize: mapOfCbor[22]?.let((cValue) {
        if (cValue is! CborInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected maxValSize to be cbor int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toBigInt();
      }),
      collateralPercentage: mapOfCbor[23]?.let((cValue) {
        if (cValue is! CborInt || !cValue.toBigInt().isValidInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected collateralPercentage to be cbor small int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toInt();
      }),
      maxCollateralInputs: mapOfCbor[24]?.let((cValue) {
        if (cValue is! CborInt || !cValue.toBigInt().isValidInt) {
          throw Exception(
            "ProtocolParamUpdate deserialization failed. Expected maxCollateralInputs to be cbor small int but got ${cValue.runtimeType}",
          );
        }
        return cValue.toInt();
      }),
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborMap.fromEntries([
        minFeeA?.let((value) => MapEntry(const CborSmallInt(0), CborInt(value))),
        minFeeB?.let((value) => MapEntry(const CborSmallInt(1), CborInt(value))),
        maxBlockSize?.let((value) => MapEntry(const CborSmallInt(2), CborSmallInt(value))),
        maxTxSize?.let((value) => MapEntry(const CborSmallInt(3), CborSmallInt(value))),
        maxBlockHeaderSize?.let((value) => MapEntry(const CborSmallInt(4), CborSmallInt(value))),
        keyDeposit?.let((value) => MapEntry(const CborSmallInt(5), CborInt(value))),
        poolDeposit?.let((value) => MapEntry(const CborSmallInt(6), CborInt(value))),
        maxEpoch?.let((value) => MapEntry(const CborSmallInt(7), CborSmallInt(value))),
        nOpt?.let((value) => MapEntry(const CborSmallInt(8), CborSmallInt(value))),
        poolPledgeInfluence?.let((value) => MapEntry(const CborSmallInt(9), value.serialize(forJson: forJson))),
        expansionRate?.let((value) => MapEntry(const CborSmallInt(10), value.serialize(forJson: forJson))),
        treasuryGrowth?.let((value) => MapEntry(const CborSmallInt(11), value.serialize(forJson: forJson))),
        decentralisationConstant?.let((value) => MapEntry(const CborSmallInt(12), value.serialize(forJson: forJson))),
        extraEntropy?.let((value) => MapEntry(const CborSmallInt(13), value.serialize(forJson: forJson))),
        protocolVersion?.let((value) => MapEntry(const CborSmallInt(14), value.serialize(forJson: forJson))),
        minUtxo?.let((value) => MapEntry(const CborSmallInt(15), CborInt(value))),
        minPoolCost?.let((value) => MapEntry(const CborSmallInt(16), CborInt(value))),
        adaPerUtxoByte?.let((value) => MapEntry(const CborSmallInt(17), CborInt(value))),
        costmdls?.let((value) => MapEntry(const CborSmallInt(18), value)),
        executionCosts?.let((value) => MapEntry(const CborSmallInt(19), value)),
        maxTxExUnits?.let((value) => MapEntry(const CborSmallInt(20), value)),
        maxBlockExUnits?.let((value) => MapEntry(const CborSmallInt(21), value)),
        maxValSize?.let((value) => MapEntry(const CborSmallInt(22), CborInt(value))),
        collateralPercentage?.let((value) => MapEntry(const CborSmallInt(23), CborSmallInt(value))),
        maxCollateralInputs?.let((value) => MapEntry(const CborSmallInt(24), CborSmallInt(value))),
      ].nonNulls);
}
