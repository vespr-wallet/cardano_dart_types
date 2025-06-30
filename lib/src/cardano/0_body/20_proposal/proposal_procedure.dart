// ignore_for_file: invalid_annotation_target

import "package:bip32_ed25519/cardano.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../cardano_dart_types.dart";
import "../../cbor_encodable.dart";

part "proposal_procedure.freezed.dart";

@freezed
sealed class ProposalProcedure with _$ProposalProcedure implements CborEncodable {
  const factory ProposalProcedure({
    required CborInt deposit,
    required Uint8List rewardAccount,
    required GovAction govAction,
    required Anchor anchor,
    @Default(CborLengthType.auto) CborLengthType cborLengthType,
  }) = _ProposalProcedure;
  const ProposalProcedure._();

  factory ProposalProcedure.deserialize(CborValue cList) {
    if (cList is! CborList) {
      throw Exception(
        "ProposalProcedure deserialization failed. Expected a cbor list but got ${cList.runtimeType}",
      );
    }
    if (cList.length != 4) {
      throw Exception(
        "ProposalProcedure deserialization failed. Expected a cbor list with length 4 but got ${cList.length}",
      );
    }

    final depositCbor = cList[0];
    if (depositCbor is! CborInt) {
      throw Exception(
        "ProposalProcedure deserialization failed. Expected cList[0] to be cbor int but got ${depositCbor.runtimeType}",
      );
    }
    final rewardAccountCbor = cList[1];
    if (rewardAccountCbor is! CborBytes) {
      throw Exception(
        "ProposalProcedure deserialization failed. Expected cList[1] to be cbor bytes but got ${rewardAccountCbor.runtimeType}",
      );
    }
    return ProposalProcedure(
      deposit: depositCbor,
      rewardAccount: rewardAccountCbor.bytes.toUint8List(),
      govAction: GovAction.deserialize(cList[2]),
      anchor: Anchor.deserialize(cList[3]),
      cborLengthType: cList.type,
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborList(
        [
          deposit,
          forJson ? CborString(rewardAccount.addressBase58Orbech32Encode()) : CborBytes(rewardAccount),
          govAction.serialize(forJson: forJson),
          anchor.serialize(forJson: forJson),
        ],
        type: cborLengthType,
      );
}
