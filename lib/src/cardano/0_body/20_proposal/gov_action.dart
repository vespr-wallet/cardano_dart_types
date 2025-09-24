// ignore_for_file: invalid_annotation_target

import "package:bip32_ed25519/cardano.dart";
import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";
import "../../shared/rational_number.dart";
import "../19_voting/gov_action_id.dart";
import "../4_cert/credential.dart";
import "../5_withdraw/withdraw.dart";
import "constitution.dart";
import "protocol_param_update.dart";
import "protocol_version.dart";

part "gov_action.freezed.dart";

@freezed
sealed class GovAction with _$GovAction implements CborEncodable {
  const GovAction._();

  // 0
  const factory GovAction.parameterChange({
    required GovActionId prevGovActionId,
    required ProtocolParamUpdate protocolParamUpdate,
    required Uint8List? policyHash,
  }) = GovAction_ParameterChange;

  // 1
  const factory GovAction.hardForkInitiation({
    required GovActionId prevGovActionId,
    required ProtocolVersion protocolVersion,
  }) = GovAction_HardForkInitiation;

  // 2
  const factory GovAction.treasuryWithdrawals({
    required List<Withdraw> withdrawals,
    required Uint8List? policyHash,
  }) = GovAction_TreasuryWithdrawals;

  // 3
  const factory GovAction.noConfidence({
    required GovActionId prevGovActionId,
  }) = GovAction_NoConfidence;

  // 4
  const factory GovAction.updateCommittee({
    required GovActionId prevGovActionId,
    required Set<Credential> membersForRemoval,
    required Map<Credential, int> newMembersAndTerms,
    required RationalNumber quorumThreshold,
  }) = GovAction_UpdateCommittee;

  // 5
  const factory GovAction.newConstitution({
    required GovActionId prevGovActionId,
    required Constitution constitution,
  }) = GovAction_NewConstitution;

  // 6
  const factory GovAction.infoAction() = GovAction_InfoAction;

  factory GovAction.deserialize(CborValue cValue) {
    if (cValue is! CborList) {
      throw Exception(
        "GovAction deserialization failed. Expected a cbor list but got ${cValue.runtimeType}",
      );
    }

    final actionType = cValue[0];
    if (actionType is! CborInt) {
      throw Exception(
        "GovAction deserialization failed. Expected cValue[0] to be cbor int but got ${actionType.runtimeType}",
      );
    }
    switch (actionType.toInt()) {
      case 0:
        if (cValue.length > 4) {
          throw Exception(
            "GovAction.parameterChange deserialization failed. Expected a cbor list with length <= 4 but got ${cValue.length}",
          );
        }
        return GovAction.parameterChange(
          prevGovActionId: GovActionId.deserialize(cValue[1]),
          protocolParamUpdate: ProtocolParamUpdate.deserialize(cValue[2]),
          policyHash: _parsePolicyHash(cValue[3]),
        );
      case 1:
        if (cValue.length > 3) {
          throw Exception(
            "GovAction.hardForkInitiationAction deserialization failed. Expected a cbor list with length <= 3 but got ${cValue.length}",
          );
        }
        return GovAction.hardForkInitiation(
          prevGovActionId: GovActionId.deserialize(cValue[1]),
          protocolVersion: ProtocolVersion.deserialize(cValue[2]),
        );
      case 2:
        if (cValue.length > 3) {
          throw Exception(
            "GovAction.treasuryWithdrawals deserialization failed. Expected a cbor list with length <= 3 but got ${cValue.length}",
          );
        }
        final withdrawals = cValue[1];
        if (withdrawals is! CborMap) {
          throw Exception(
            "GovAction.treasuryWithdrawals deserialization failed. Expected cValue[1] to be cbor map but got ${withdrawals.runtimeType}",
          );
        }

        return GovAction.treasuryWithdrawals(
          withdrawals: withdrawals.entries
              .map((e) => Withdraw.deserialize(stakeAddress: e.key as CborBytes, coin: e.value as CborInt))
              .toList(),
          policyHash: _parsePolicyHash(cValue[2]),
        );
      case 3:
        if (cValue.length > 2) {
          throw Exception(
            "GovAction.noConfidence deserialization failed. Expected a cbor list with length <= 2 but got ${cValue.length}",
          );
        }
        return GovAction.noConfidence(
          prevGovActionId: GovActionId.deserialize(cValue[1]),
        );
      case 4:
        if (cValue.length > 5) {
          throw Exception(
            "GovAction.updateCommittee deserialization failed. Expected a cbor list with length <= 5 but got ${cValue.length}",
          );
        }
        final membersForRemoval = cValue[2];
        if (membersForRemoval is! CborList) {
          throw Exception(
            "GovAction.updateCommittee deserialization failed. Expected cValue[2] to be cbor list but got ${membersForRemoval.runtimeType}",
          );
        }
        final newMembersAndTerms = cValue[3];
        if (newMembersAndTerms is! CborMap) {
          throw Exception(
            "GovAction.updateCommittee deserialization failed. Expected cValue[3] to be cbor map but got ${newMembersAndTerms.runtimeType}",
          );
        }
        return GovAction.updateCommittee(
          prevGovActionId: GovActionId.deserialize(cValue[1]),
          membersForRemoval: membersForRemoval.map(Credential.deserialize).toSet(),
          newMembersAndTerms: Map.fromEntries(
            newMembersAndTerms.entries.map(
              (e) => MapEntry(
                Credential.deserialize(e.key),
                (e.value as CborInt).toInt(),
              ),
            ),
          ),
          quorumThreshold: RationalNumber.deserialize(cValue[4]),
        );
      case 5:
        if (cValue.length > 3) {
          throw Exception(
            "GovAction.newConstitution deserialization failed. Expected a cbor list with length <= 3 but got ${cValue.length}",
          );
        }
        return GovAction.newConstitution(
          prevGovActionId: GovActionId.deserialize(cValue[1]),
          constitution: Constitution.deserialize(cValue[2]),
        );
      case 6:
        return const GovAction.infoAction();
      default:
        throw Exception(
          "GovAction deserialization failed. Invalid GovAction type ${actionType.toInt()}",
        );
    }
  }

  @override
  CborValue serialize({required bool forJson}) {
    final self = this;
    return switch (self) {
      GovAction_ParameterChange() => self.serializeAction(forJson: forJson),
      GovAction_HardForkInitiation() => self.serializeAction(forJson: forJson),
      GovAction_TreasuryWithdrawals() => self.serializeAction(forJson: forJson),
      GovAction_NoConfidence() => self.serializeAction(forJson: forJson),
      GovAction_UpdateCommittee() => self.serializeAction(forJson: forJson),
      GovAction_NewConstitution() => self.serializeAction(forJson: forJson),
      GovAction_InfoAction() => self.serializeAction(forJson: forJson),
    };
  }
}

Uint8List? _parsePolicyHash(CborValue cValue) {
  if (cValue is CborNull) {
    return null;
  }
  if (cValue is CborBytes) {
    return cValue.bytes.toUint8List();
  }
  throw Exception(
    "GovAction deserialization failed. Expected policy hash to be cbor bytes/null but got ${cValue.runtimeType}",
  );
}

extension _ParameterChangeX on GovAction_ParameterChange {
  CborValue serializeAction({required bool forJson}) {
    final policyHash = this.policyHash;
    return CborList([
      forJson ? CborString("ParameterChange") : const CborSmallInt(0),
      prevGovActionId.serialize(forJson: forJson),
      protocolParamUpdate.serialize(forJson: forJson),
      policyHash == null
          ? const CborNull()
          : forJson
          ? CborString(policyHash.hexEncode())
          : CborBytes(policyHash),
    ]);
  }
}

extension _HardForkInitiationX on GovAction_HardForkInitiation {
  CborValue serializeAction({required bool forJson}) {
    return CborList([
      forJson ? CborString("HardForkInitiation") : const CborSmallInt(1),
      prevGovActionId.serialize(forJson: forJson),
      protocolVersion.serialize(forJson: forJson),
    ]);
  }
}

extension _TreasuryWithdrawalsX on GovAction_TreasuryWithdrawals {
  CborValue serializeAction({required bool forJson}) {
    final policyHash = this.policyHash;
    return CborList([
      forJson ? CborString("TreasuryWithdrawals") : const CborSmallInt(2),
      CborMap.fromEntries(withdrawals.map((withdraw) => withdraw.serializeEntry(forJson: forJson))),
      policyHash == null
          ? const CborNull()
          : forJson
          ? CborString(policyHash.hexEncode())
          : CborBytes(policyHash),
    ]);
  }
}

extension _NoConfidenceX on GovAction_NoConfidence {
  CborValue serializeAction({required bool forJson}) {
    return CborList([
      forJson ? CborString("NoConfidence") : const CborSmallInt(3),
      prevGovActionId.serialize(forJson: forJson),
    ]);
  }
}

extension _UpdateCommitteeX on GovAction_UpdateCommittee {
  CborValue serializeAction({required bool forJson}) {
    return CborList([
      forJson ? CborString("UpdateCommittee") : const CborSmallInt(4),
      prevGovActionId.serialize(forJson: forJson),
      CborList(membersForRemoval.map((member) => member.serialize(forJson: forJson)).toList()),
      CborMap.fromEntries(
        newMembersAndTerms.entries.map((e) => MapEntry(e.key.serialize(forJson: forJson), CborSmallInt(e.value))),
      ),
      quorumThreshold.serialize(forJson: forJson),
    ]);
  }
}

extension _NewConstitutionX on GovAction_NewConstitution {
  CborValue serializeAction({required bool forJson}) {
    return CborList([
      forJson ? CborString("NewConstitution") : const CborSmallInt(5),
      prevGovActionId.serialize(forJson: forJson),
      constitution.serialize(forJson: forJson),
    ]);
  }
}

extension _InfoActionX on GovAction_InfoAction {
  CborValue serializeAction({required bool forJson}) {
    return CborList([
      forJson ? CborString("InfoAction") : const CborSmallInt(6),
    ]);
  }
}
