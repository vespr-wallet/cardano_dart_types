import "package:bip32_ed25519/cardano.dart";
import "package:cbor/cbor.dart";
// ignore_for_file: invalid_annotation_target

import "package:freezed_annotation/freezed_annotation.dart";

import "../../../hd/util/CborDeserializationException.dart";
import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";
import "../../shared/anchor.dart";
import "../../shared/drep.dart";
import "../../shared/rational_number.dart";
import "../../transaction.dart";
import "credential.dart";
import "pool_metadata.dart";
import "stake_pool_id.dart";

part "certificate.freezed.dart";

@freezed
sealed class Certificate with _$Certificate implements CborEncodable {
  Certificate._();

  // Deprecated in conway era
  factory Certificate.stakeRegistrationLegacy({
    required Credential stakeCredential,
  }) = Certificate_StakeRegistrationLegacy;

  // Deprecated in conway era
  factory Certificate.stakeDeRegistrationLegacy({
    required Credential stakeCredential,
  }) = Certificate_StakeDeRegistrationLegacy;

  factory Certificate.stakeDelegation({
    required Credential stakeCredential,
    required StakePoolId stakePoolId,
  }) = Certificate_StakeDelegation;

  @Assert("pledge.toBigInt() >= BigInt.from(0)")
  @Assert("cost.toBigInt() >= BigInt.from(0)")
  factory Certificate.poolRegistration({
    required StakePoolId operator, // pool key hash 28 bytes
    required Uint8List vrfKeyHash, // vrf key hash 32 bytes
    required CborInt pledge, // pledge in lovelace
    required CborInt cost, // cost in lovelace
    required RationalNumber margin, // margin
    required Uint8List rewardAccount, // decoded address bytes (can be encoded to bech32 directly)
    required List<Uint8List> poolOwners, // decoded pool owner address key hash 28
    required CborValue relays, // relays ; we don't bother to decode this for now
    required PoolMetadata? poolMetadata,
  }) = Certificate_PoolRegistration;

  @Assert("epoch.toBigInt() >= BigInt.from(0)")
  factory Certificate.poolRetirement({
    required StakePoolId operator, // pool key hash 28 bytes
    required CborInt epoch,
  }) = Certificate_PoolRetirement;

  // introduced in conway era
  @Assert("coin.toBigInt() >= BigInt.from(0)")
  factory Certificate.stakeRegistration({
    required Credential stakeCredential,
    required CborInt coin,
  }) = Certificate_StakeRegistration;

  // introduced in conway era
  @Assert("coin.toBigInt() >= BigInt.from(0)")
  factory Certificate.stakeDeRegistration({
    required Credential stakeCredential,
    required CborInt coin,
  }) = Certificate_StakeDeRegistration;

  // introduced in conway era
  factory Certificate.voteDelegation({
    required Credential stakeCredential,
    required Drep dRep,
  }) = Certificate_VoteDelegation;

  // introduced in conway era
  // combination of [StakeDelegation] and [VoteDelegation] certs in one
  factory Certificate.stakeVoteDelegation({
    required Credential stakeCredential,
    required StakePoolId stakePoolId,
    required Drep dRep,
  }) = Certificate_StakeVoteDelegation;

  // introduced in conway era
  // combination of [StakeRegistration] and [StakeDelegation] certs in one
  @Assert("coin.toBigInt() >= BigInt.from(0)")
  factory Certificate.stakeRegistrationDelegation({
    required Credential stakeCredential,
    required StakePoolId stakePoolId,
    required CborInt coin,
  }) = Certificate_StakeRegistrationDelegation;

  // introduced in conway era
  // combination of [StakeRegistration] and [StakeDelegation] certs in one
  @Assert("coin.toBigInt() >= BigInt.from(0)")
  factory Certificate.voteRegistrationDelegation({
    required Credential stakeCredential,
    required Drep dRep,
    required CborInt coin,
  }) = Certificate_VoteRegistrationDelegation;

  // introduced in conway era
  // combination of [StakeRegistration] and [StakeDelegation] certs in one
  @Assert("coin.toBigInt() >= BigInt.from(0)")
  factory Certificate.stakeVoteRegistrationDelegation({
    required Credential stakeCredential,
    required StakePoolId stakePoolId,
    required Drep dRep,
    required CborInt coin,
  }) = Certificate_StakeVoteRegistrationDelegation;

  // introduced in conway era
  // Authorizes the constitutional committee hot credential
  factory Certificate.authorizeCommitteeHot({
    required Credential committeeColdCredential,
    required Credential committeeHotCredential,
  }) = Certificate_AuthorizeCommitteeHot;

  // introduced in conway era
  // Resigns the constitutional committee cold credential
  factory Certificate.resignCommitteeCold({
    required Credential committeeColdCredential,
    required Anchor? anchor,
  }) = Certificate_ResignCommitteeCold;

  // introduced in conway era
  // Registers DRep's credentials
  @Assert("coin.toBigInt() >= BigInt.from(0)")
  factory Certificate.registerDRep({
    required Credential dRepCredential,
    required CborInt coin,
    required Anchor? anchor,
  }) = Certificate_RegisterDRep;

  // introduced in conway era
  // Unregisters (retires) DRep's credentials
  @Assert("coin.toBigInt() >= BigInt.from(0)")
  factory Certificate.unregisterDRep({
    required Credential dRepCredential,
    required CborInt coin,
  }) = Certificate_UnregisterDRep;

  // introduced in conway era
  // Updates DRep's metadata anchor
  factory Certificate.updateDRep({
    required Credential dRepCredential,
    required Anchor? anchor,
  }) = Certificate_UpdateDRep;

  factory Certificate.deserialize(CborValue cList) {
    if (cList is! CborList) {
      throw CborDeserializationException(
        "Certificate deserialization failed. Expected a cbor list but got ${cList.runtimeType}",
      );
    }
    if (cList.isEmpty) {
      throw CborDeserializationException(
        "Certificate deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
      );
    }
    final certType = cList[0] as CborInt;

    final parsedCert = switch (certType.toInt()) {
      0 => _deserializeStakeRegistrationLegacy(cList: cList),
      1 => _deserializeStakeDeRegistrationLegacy(cList: cList),
      2 => _deserializeStakeDelegation(cList: cList),
      3 => _deserializePoolRegistration(cList: cList),
      4 => _deserializePoolRetirement(cList: cList),
      // ; numbers 5 and 6 used to be the Genesis and MIR certificates respectively,
      // ; which were deprecated in Conway
      5 => throw const CborDeserializationException("Certificate deserialization failed. Deprecated type : 5"),
      6 => throw const CborDeserializationException("Certificate deserialization failed. Deprecated type : 6"),
      7 => _parseStakeRegistrationConway(cList: cList),
      8 => _parseStakeDeRegistrationConway(cList: cList),
      9 => _parseVoteDelegation(cList: cList),
      10 => _parseStakeVoteDelegation(cList: cList),
      11 => _parseStakeRegistrationDelegation(cList: cList),
      12 => _parseVoteRegistrationDelegation(cList: cList),
      13 => _parseStakeVoteRegistrationDelegation(cList: cList),
      14 => _parseAuthorizeCommitteeHot(cList: cList),
      15 => _parseResignCommitteeCold(cList: cList),
      16 => _parseRegisterDRep(cList: cList),
      17 => _parseUnregisterDRep(cList: cList),
      18 => _parseUpdateDRep(cList: cList),
      _ => throw CborDeserializationException(
        "Certificate deserialization failed. Invalid type : ${cList[0]}",
      ),
    };

    conditionalAssert(
      () => parsedCert.serialize(forJson: false).hexEncode() == cList.hexEncode(),
      "certificate: ${parsedCert.runtimeType} deserialization failed. Serialized and deserialized certs do not match",
    );

    return parsedCert;
  }

  @override
  late final int certType = switch (this) {
    Certificate_StakeRegistrationLegacy() => 0,
    Certificate_StakeDeRegistrationLegacy() => 1,
    Certificate_StakeDelegation() => 2,
    Certificate_PoolRegistration() => 3,
    Certificate_PoolRetirement() => 4,
    // ; numbers 5 and 6 used to be the Genesis and MIR certificates respectively ; deprecated in Conway
    Certificate_StakeRegistration() => 7,
    Certificate_StakeDeRegistration() => 8,
    Certificate_VoteDelegation() => 9,
    Certificate_StakeVoteDelegation() => 10,
    Certificate_StakeRegistrationDelegation() => 11,
    Certificate_VoteRegistrationDelegation() => 12,
    Certificate_StakeVoteRegistrationDelegation() => 13,
    Certificate_AuthorizeCommitteeHot() => 14,
    Certificate_ResignCommitteeCold() => 15,
    Certificate_RegisterDRep() => 16,
    Certificate_UnregisterDRep() => 17,
    Certificate_UpdateDRep() => 18,
  };

  @override
  CborValue serialize({required bool forJson}) {
    final thisCert = this;
    return CborList(
      [
        // ignore: no_runtimetype_tostring
        forJson ? CborString(runtimeType.toString()) : CborSmallInt(certType),
        ...switch (thisCert) {
          Certificate_StakeRegistrationLegacy() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
          ],
          Certificate_StakeDeRegistrationLegacy() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
          ],
          Certificate_StakeDelegation() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
            thisCert.stakePoolId.serialize(forJson: forJson),
          ],
          Certificate_PoolRegistration() => [
            thisCert.operator.serialize(forJson: forJson),
            forJson ? CborString(thisCert.vrfKeyHash.hexEncode()) : CborBytes(thisCert.vrfKeyHash),
            thisCert.pledge,
            thisCert.cost,
            thisCert.margin.serialize(forJson: forJson),
            forJson ? CborString(thisCert.rewardAccount.addressBech32Encode()) : CborBytes(thisCert.rewardAccount),
            CborList.of(thisCert.poolOwners.map(CborBytes.new)),
            thisCert.relays,
            thisCert.poolMetadata?.serialize(forJson: forJson) ?? const CborNull(),
          ],
          Certificate_PoolRetirement() => [
            thisCert.operator.serialize(forJson: forJson),
            thisCert.epoch,
          ],
          Certificate_StakeRegistration() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
            thisCert.coin,
          ],
          Certificate_StakeDeRegistration() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
            thisCert.coin,
          ],
          Certificate_VoteDelegation() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
            thisCert.dRep.serialize(forJson: forJson),
          ],
          Certificate_StakeVoteDelegation() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
            thisCert.stakePoolId.serialize(forJson: forJson),
            thisCert.dRep.serialize(forJson: forJson),
          ],
          Certificate_StakeRegistrationDelegation() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
            thisCert.stakePoolId.serialize(forJson: forJson),
            thisCert.coin,
          ],
          Certificate_VoteRegistrationDelegation() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
            thisCert.dRep.serialize(forJson: forJson),
            thisCert.coin,
          ],
          Certificate_StakeVoteRegistrationDelegation() => [
            thisCert.stakeCredential.serialize(forJson: forJson),
            thisCert.stakePoolId.serialize(forJson: forJson),
            thisCert.dRep.serialize(forJson: forJson),
            thisCert.coin,
          ],
          Certificate_AuthorizeCommitteeHot() => [
            thisCert.committeeColdCredential.serialize(forJson: forJson),
            thisCert.committeeHotCredential.serialize(forJson: forJson),
          ],
          Certificate_ResignCommitteeCold() => [
            thisCert.committeeColdCredential.serialize(forJson: forJson),
            thisCert.anchor?.serialize(forJson: forJson) ?? const CborNull(),
          ],
          Certificate_RegisterDRep() => [
            thisCert.dRepCredential.serialize(forJson: forJson),
            thisCert.coin,
            thisCert.anchor?.serialize(forJson: forJson) ?? const CborNull(),
          ],
          Certificate_UnregisterDRep() => [
            thisCert.dRepCredential.serialize(forJson: forJson),
            thisCert.coin,
          ],
          Certificate_UpdateDRep() => [
            thisCert.dRepCredential.serialize(forJson: forJson),
            thisCert.anchor?.serialize(forJson: forJson) ?? const CborNull(),
          ],
        },
      ],
    );
  }
}

extension CertificateIterableExtension on Iterable<Certificate> {
  CborValue serialize({required bool forJson}) => CborList.of(
    map((withdrawEntry) => withdrawEntry.serialize(forJson: forJson)),
  );
}

Certificate_StakeRegistrationLegacy _deserializeStakeRegistrationLegacy({required CborList cList}) {
  if (cList.length < 2) {
    throw CborDeserializationException(
      "Certificate deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 0) {
    throw CborDeserializationException("StakeRegistration deserialization failed. Invalid type : ${certType.value}");
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  return Certificate_StakeRegistrationLegacy(stakeCredential: stakeCredentials);
}

Certificate_StakeDeRegistrationLegacy _deserializeStakeDeRegistrationLegacy({required CborList cList}) {
  if (cList.length < 2) {
    throw CborDeserializationException(
      "Certificate_StakeDeRegistrationLegacy deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 1) {
    throw CborDeserializationException("StakeDeRegistration deserialization failed. Invalid type : ${certType.value}");
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  return Certificate_StakeDeRegistrationLegacy(stakeCredential: stakeCredentials);
}

Certificate_StakeDelegation _deserializeStakeDelegation({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_StakeDelegation deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 2) {
    throw CborDeserializationException("StakeDelegation deserialization failed. Invalid type : ${certType.value}");
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  final cPoolKeyHashId = cList[2] as CborBytes;
  final stakePoolId = StakePoolId.deserialize(cPoolKeyHashId);

  return Certificate_StakeDelegation(stakeCredential: stakeCredentials, stakePoolId: stakePoolId);
}

Certificate_PoolRegistration _deserializePoolRegistration({required CborList cList}) {
  if (cList.length != 10) {
    throw CborDeserializationException(
      "Certificate_PoolRegistration deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 3) {
    throw CborDeserializationException("PoolRegistration deserialization failed. Invalid type : ${certType.value}");
  }

  final cOperator = cList[1] as CborBytes;
  final operator = StakePoolId.deserialize(cOperator);

  final cVrfKeyHash = cList[2] as CborBytes;
  final vrfKeyHash = cVrfKeyHash.bytes.toUint8List();

  final cPledge = cList[3] as CborInt;
  final cCost = cList[4] as CborInt;

  final cMargin = cList[5];
  final margin = RationalNumber.deserialize(cMargin);

  final cRewardAccount = cList[6] as CborBytes;
  final rewardAccount = cRewardAccount.bytes.toUint8List();

  final cPoolOwners = cList[7] as CborList;
  final poolOwners = cPoolOwners.map((poolOwner) => (poolOwner as CborBytes).bytes.toUint8List()).toList();

  final cRelays = cList[8];

  final cPoolMetadata = cList[9];
  final poolMetadata = cPoolMetadata is CborNull ? null : PoolMetadata.deserialize(cPoolMetadata);

  return Certificate_PoolRegistration(
    operator: operator,
    vrfKeyHash: vrfKeyHash,
    pledge: cPledge,
    cost: cCost,
    margin: margin,
    rewardAccount: rewardAccount,
    poolOwners: poolOwners,
    relays: cRelays,
    poolMetadata: poolMetadata,
  );
}

Certificate_PoolRetirement _deserializePoolRetirement({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_PoolRetirement deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 4) {
    throw CborDeserializationException("PoolRetirement deserialization failed. Invalid type : ${certType.value}");
  }

  final cOperator = cList[1] as CborBytes;
  final operator = StakePoolId.deserialize(cOperator);

  final cEpoch = cList[2] as CborInt;

  return Certificate_PoolRetirement(operator: operator, epoch: cEpoch);
}

Certificate_StakeRegistration _parseStakeRegistrationConway({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_StakeRegistration deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 7) {
    throw CborDeserializationException("StakeRegistration deserialization failed. Invalid type : ${certType.value}");
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  final cCoin = cList[2] as CborInt;

  return Certificate_StakeRegistration(stakeCredential: stakeCredentials, coin: cCoin);
}

Certificate_StakeDeRegistration _parseStakeDeRegistrationConway({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_StakeDeRegistration deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 8) {
    throw CborDeserializationException("StakeDeRegistration deserialization failed. Invalid type : ${certType.value}");
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  final cCoin = cList[2] as CborInt;

  return Certificate_StakeDeRegistration(stakeCredential: stakeCredentials, coin: cCoin);
}

Certificate_VoteDelegation _parseVoteDelegation({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_VoteDelegation deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 9) {
    throw CborDeserializationException("VoteDelegation deserialization failed. Invalid type : ${certType.value}");
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  final cDRep = cList[2] as CborList;
  final dRep = Drep.deserialize(cDRep);

  return Certificate_VoteDelegation(stakeCredential: stakeCredentials, dRep: dRep);
}

Certificate_StakeVoteDelegation _parseStakeVoteDelegation({required CborList cList}) {
  if (cList.length != 4) {
    throw CborDeserializationException(
      "Certificate_StakeVoteDelegation deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 10) {
    throw CborDeserializationException("StakeVoteDelegation deserialization failed. Invalid type : ${certType.value}");
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  final cStakePoolId = cList[2] as CborBytes;
  final stakePoolId = StakePoolId.deserialize(cStakePoolId);

  final cDRep = cList[3] as CborList;
  final dRep = Drep.deserialize(cDRep);

  return Certificate_StakeVoteDelegation(stakeCredential: stakeCredentials, stakePoolId: stakePoolId, dRep: dRep);
}

Certificate_StakeRegistrationDelegation _parseStakeRegistrationDelegation({required CborList cList}) {
  if (cList.length != 4) {
    throw CborDeserializationException(
      "Certificate_StakeRegistrationDelegation deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 11) {
    throw CborDeserializationException(
      "StakeRegistrationDelegation deserialization failed. Invalid type : ${certType.value}",
    );
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  final cStakePoolId = cList[2] as CborBytes;
  final stakePoolId = StakePoolId.deserialize(cStakePoolId);

  final cCoin = cList[3] as CborInt;

  return Certificate_StakeRegistrationDelegation(
    stakeCredential: stakeCredentials,
    stakePoolId: stakePoolId,
    coin: cCoin,
  );
}

Certificate_VoteRegistrationDelegation _parseVoteRegistrationDelegation({required CborList cList}) {
  if (cList.length != 4) {
    throw CborDeserializationException(
      "Certificate_VoteRegistrationDelegation deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 12) {
    throw CborDeserializationException(
      "VoteRegistrationDelegation deserialization failed. Invalid type : ${certType.value}",
    );
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  final cDRep = cList[2] as CborList;
  final dRep = Drep.deserialize(cDRep);

  final cCoin = cList[3] as CborInt;

  return Certificate_VoteRegistrationDelegation(stakeCredential: stakeCredentials, dRep: dRep, coin: cCoin);
}

Certificate_StakeVoteRegistrationDelegation _parseStakeVoteRegistrationDelegation({required CborList cList}) {
  if (cList.length != 5) {
    throw CborDeserializationException(
      "Certificate_StakeVoteRegistrationDelegation deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 13) {
    throw CborDeserializationException(
      "StakeVoteRegistrationDelegation deserialization failed. Invalid type : ${certType.value}",
    );
  }

  final cStakeCred = cList[1];
  final stakeCredentials = Credential.deserialize(cStakeCred);

  final cStakePoolId = cList[2] as CborBytes;
  final stakePoolId = StakePoolId.deserialize(cStakePoolId);

  final cDRep = cList[3] as CborList;
  final dRep = Drep.deserialize(cDRep);

  final cCoin = cList[4] as CborInt;

  return Certificate_StakeVoteRegistrationDelegation(
    stakeCredential: stakeCredentials,
    stakePoolId: stakePoolId,
    dRep: dRep,
    coin: cCoin,
  );
}

Certificate_AuthorizeCommitteeHot _parseAuthorizeCommitteeHot({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_AuthorizeCommitteeHot deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 14) {
    throw CborDeserializationException(
      "AuthorizeCommitteeHot deserialization failed. Invalid type : ${certType.value}",
    );
  }

  final cCommitteeColdCredential = cList[1];
  final committeeColdCredential = Credential.deserialize(cCommitteeColdCredential);

  final cCommitteeHotCredential = cList[2];
  final committeeHotCredential = Credential.deserialize(cCommitteeHotCredential);

  return Certificate_AuthorizeCommitteeHot(
    committeeColdCredential: committeeColdCredential,
    committeeHotCredential: committeeHotCredential,
  );
}

Certificate_ResignCommitteeCold _parseResignCommitteeCold({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_ResignCommitteeCold deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 15) {
    throw CborDeserializationException(
      "ResignCommitteeCold deserialization failed. Invalid type : ${certType.value}",
    );
  }

  final cCommitteeColdCredential = cList[1];
  final committeeColdCredential = Credential.deserialize(cCommitteeColdCredential);

  final cAnchor = cList[2];
  final anchor = switch (cAnchor) {
    CborNull() => null,
    CborList() => Anchor.deserialize(cAnchor),
    _ => throw CborDeserializationException(
      "RegisterDRep deserialization failed. Invalid anchor cbor type : ${cAnchor.runtimeType}",
    ),
  };

  return Certificate_ResignCommitteeCold(
    committeeColdCredential: committeeColdCredential,
    anchor: anchor,
  );
}

Certificate_RegisterDRep _parseRegisterDRep({required CborList cList}) {
  if (cList.length != 4) {
    throw CborDeserializationException(
      "Certificate_RegisterDRep deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 16) {
    throw CborDeserializationException(
      "RegisterDRep deserialization failed. Invalid type : ${certType.value}",
    );
  }

  final cDRepCredential = cList[1];
  final dRepCredential = Credential.deserialize(cDRepCredential);

  final cCoin = cList[2] as CborInt;

  final cAnchor = cList[3];
  final anchor = switch (cAnchor) {
    CborNull() => null,
    CborList() => Anchor.deserialize(cAnchor),
    _ => throw CborDeserializationException(
      "RegisterDRep deserialization failed. Invalid anchor cbor type : ${cAnchor.runtimeType}",
    ),
  };

  return Certificate_RegisterDRep(
    dRepCredential: dRepCredential,
    coin: cCoin,
    anchor: anchor,
  );
}

Certificate_UnregisterDRep _parseUnregisterDRep({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_UnregisterDRep deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 17) {
    throw CborDeserializationException(
      "UnregisterDRep deserialization failed. Invalid type : ${certType.value}",
    );
  }

  final cDRepCredential = cList[1];
  final dRepCredential = Credential.deserialize(cDRepCredential);

  final cCoin = cList[2] as CborInt;

  return Certificate_UnregisterDRep(
    dRepCredential: dRepCredential,
    coin: cCoin,
  );
}

Certificate_UpdateDRep _parseUpdateDRep({required CborList cList}) {
  if (cList.length != 3) {
    throw CborDeserializationException(
      "Certificate_UpdateDRep deserialization failed. Invalid number of DataItem(s) : ${cList.length}",
    );
  }
  final certType = cList[0] as CborSmallInt;

  if (certType.value != 18) {
    throw CborDeserializationException(
      "UpdateDRep deserialization failed. Invalid type : ${certType.value}",
    );
  }

  final cDRepCredential = cList[1];
  final dRepCredential = Credential.deserialize(cDRepCredential);

  final cAnchor = cList[2];
  final anchor = switch (cAnchor) {
    CborNull() => null,
    CborList() => Anchor.deserialize(cAnchor),
    _ => throw CborDeserializationException(
      "RegisterDRep deserialization failed. Invalid anchor cbor type : ${cAnchor.runtimeType}",
    ),
  };

  return Certificate_UpdateDRep(
    dRepCredential: dRepCredential,
    anchor: anchor,
  );
}
