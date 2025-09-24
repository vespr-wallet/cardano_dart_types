import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../utils/transformations.dart";
import "../../../1_witness_set/4_plutus_data/plutus_data.dart";
import "../../../cbor_encodable.dart";

part "output_datum.freezed.dart";

@freezed
sealed class OutputDatum with _$OutputDatum implements CborEncodable {
  const OutputDatum._();

  factory OutputDatum.hash(Uint8List datumHash) = OutputDatum_Hash;

  factory OutputDatum.inline(PlutusData plutusData) = OutputDatum_Inline;

  @override
  CborValue serialize({required bool forJson}) => switch (this) {
    OutputDatum_Hash(datumHash: final datumHash) => datumHash.serializeCbor(forJson: forJson),
    OutputDatum_Inline(plutusData: final plutusData) => plutusData.serialize(forJson: forJson),
  };
}
