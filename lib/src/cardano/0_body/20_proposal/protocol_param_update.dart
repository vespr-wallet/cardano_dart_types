// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../utils/cbor.dart";
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
    // Conway changes
    List<RationalNumber>? poolVotingThresholds, // 25
    List<RationalNumber>? drepVotingThresholds, // 26
    int? minCommitteeSize, // 27
    int? committeeTermLimit, // 28
    int? govActionValidityPeriod, // 29
    BigInt? govActionDeposit, // 30
    BigInt? drepDeposit, // 31
    int? drepInactivityPeriod, // 32
    RationalNumber? minFeeRefScriptCostPerByte, // 33
    // encoding details (not part of the protocol params)
    @Default(CborLengthType.definite) CborLengthType lengthType,

    /// Map key order as parsed, or null when ascending (the standard order).
    List<int>? nonStandardKeyOrder,
    @Default(CborLengthType.definite) CborLengthType poolVotingThresholdsLengthType,
    @Default(CborLengthType.definite) CborLengthType drepVotingThresholdsLengthType,
  }) = _ProtocolParamUpdate;
  const ProtocolParamUpdate._();

  factory ProtocolParamUpdate.deserialize(CborValue cMap) {
    if (cMap is! CborMap) {
      throw Exception("ProtocolParamUpdate deserialization failed. Expected a cbor map but got ${cMap.runtimeType}");
    }
    final mapOfCbor = cMap.map((key, value) {
      if (key is! CborInt) {
        throw Exception(
          "ProtocolParamUpdate deserialization failed. Expected key to be cbor int but got ${key.runtimeType}",
        );
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
      poolVotingThresholds: mapOfCbor[25]?.let((cValue) => _parseRationalList(cValue, "poolVotingThresholds")),
      drepVotingThresholds: mapOfCbor[26]?.let((cValue) => _parseRationalList(cValue, "drepVotingThresholds")),
      minCommitteeSize: mapOfCbor[27]?.let((cValue) => _parseSmallInt(cValue, "minCommitteeSize")),
      committeeTermLimit: mapOfCbor[28]?.let((cValue) => _parseSmallInt(cValue, "committeeTermLimit")),
      govActionValidityPeriod: mapOfCbor[29]?.let((cValue) => _parseSmallInt(cValue, "govActionValidityPeriod")),
      govActionDeposit: mapOfCbor[30]?.let((cValue) => _parseBigInt(cValue, "govActionDeposit")),
      drepDeposit: mapOfCbor[31]?.let((cValue) => _parseBigInt(cValue, "drepDeposit")),
      drepInactivityPeriod: mapOfCbor[32]?.let((cValue) => _parseSmallInt(cValue, "drepInactivityPeriod")),
      minFeeRefScriptCostPerByte: mapOfCbor[33]?.let(RationalNumber.deserialize),
      lengthType: cMap.type,
      nonStandardKeyOrder: nonAscendingKeyOrder(cMap),
      poolVotingThresholdsLengthType: (mapOfCbor[25] as CborList?)?.type ?? CborLengthType.definite,
      drepVotingThresholdsLengthType: (mapOfCbor[26] as CborList?)?.type ?? CborLengthType.definite,
    );
  }

  @override
  CborValue serialize({required bool forJson}) {
    final entries = <MapEntry<CborValue, CborValue>?>[
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
      poolVotingThresholds?.let(
        (value) => MapEntry(
          const CborSmallInt(25),
          CborList(
            value.map((e) => e.serialize(forJson: forJson)).toList(growable: false),
            type: poolVotingThresholdsLengthType,
          ),
        ),
      ),
      drepVotingThresholds?.let(
        (value) => MapEntry(
          const CborSmallInt(26),
          CborList(
            value.map((e) => e.serialize(forJson: forJson)).toList(growable: false),
            type: drepVotingThresholdsLengthType,
          ),
        ),
      ),
      minCommitteeSize?.let((value) => MapEntry(const CborSmallInt(27), CborSmallInt(value))),
      committeeTermLimit?.let((value) => MapEntry(const CborSmallInt(28), CborSmallInt(value))),
      govActionValidityPeriod?.let((value) => MapEntry(const CborSmallInt(29), CborSmallInt(value))),
      govActionDeposit?.let((value) => MapEntry(const CborSmallInt(30), CborInt(value))),
      drepDeposit?.let((value) => MapEntry(const CborSmallInt(31), CborInt(value))),
      drepInactivityPeriod?.let((value) => MapEntry(const CborSmallInt(32), CborSmallInt(value))),
      minFeeRefScriptCostPerByte?.let(
        (value) => MapEntry(const CborSmallInt(33), value.serialize(forJson: forJson)),
      ),
    ].nonNulls;

    return CborMap.fromEntries(
      orderEntries(
        {for (final entry in entries) (entry.key as CborSmallInt).toInt(): entry},
        nonStandardKeyOrder,
      ),
      type: lengthType,
    );
  }
}

int _parseSmallInt(CborValue cValue, String name) {
  if (cValue is! CborInt || !cValue.toBigInt().isValidInt) {
    throw Exception(
      "ProtocolParamUpdate deserialization failed. Expected $name to be cbor small int but got ${cValue.runtimeType}",
    );
  }
  return cValue.toInt();
}

BigInt _parseBigInt(CborValue cValue, String name) {
  if (cValue is! CborInt) {
    throw Exception(
      "ProtocolParamUpdate deserialization failed. Expected $name to be cbor int but got ${cValue.runtimeType}",
    );
  }
  return cValue.toBigInt();
}

List<RationalNumber> _parseRationalList(CborValue cValue, String name) {
  if (cValue is! CborList) {
    throw Exception(
      "ProtocolParamUpdate deserialization failed. Expected $name to be cbor list but got ${cValue.runtimeType}",
    );
  }
  return cValue.map(RationalNumber.deserialize).toList(growable: false);
}
