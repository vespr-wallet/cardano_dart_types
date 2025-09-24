// ignore_for_file: non_constant_identifier_names

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../exceptions/parse_exceptions.dart";
import "../../../utils/transformations.dart";
import "../../cbor_encodable.dart";
import "../../transaction.dart";

part "plutus_data.freezed.dart";

const _generalFormTag = 102;

@freezed
sealed class PlutusData with _$PlutusData implements CborEncodable {
  const PlutusData._();

  factory PlutusData.bigInt(BigInt value) = PlutusData_BigInt;

  factory PlutusData.definiteBytes(List<int> bytes, List<int> tags) = PlutusData_DefiniteBytes;

  factory PlutusData.indefiniteBytes(List<List<int>> bytesList, List<int> tags) = PlutusData_IndefiniteBytes;

  factory PlutusData.constr(int alternative, PlutusData_List data, List<int> tags, CborLengthType cborLengthType) =
      PlutusData_Constr;

  factory PlutusData.list(List<PlutusData> data, List<int> tags, CborLengthType cborLengthType) = PlutusData_List;

  factory PlutusData.map(Map<PlutusData, PlutusData> data, List<int> tags, CborLengthType cborLengthType) =
      PlutusData_Map;

  @override
  CborValue serialize({required bool forJson}) {
    final obj = this;
    return switch (obj) {
      PlutusData_BigInt() => CborInt(obj.value),
      PlutusData_DefiniteBytes() => obj.bytes.serializeCbor(forJson: forJson, tags: obj.tags),
      PlutusData_IndefiniteBytes() => obj.bytesList.serializeCbor(forJson: forJson, tags: obj.tags),
      PlutusData_Constr() => _serializePlutusData_Constr(obj, forJson: forJson),
      PlutusData_List() => _serializePlutusData_List(obj, forJson: forJson),
      PlutusData_Map() => CborMap(
        obj.data.map((key, value) => MapEntry(key.serialize(forJson: forJson), value.serialize(forJson: forJson))),
        tags: obj.tags,
        type: obj.cborLengthType,
      ),
    };
  }

  factory PlutusData.deserialize(CborValue cValue) {
    PlutusData fromCborList(CborList cValue) {
      if (cValue.tags.any((element) => element == _generalFormTag)) {
        if (cValue.length != 2) {
          throw PlutusDataParseException("constr: Length is ${cValue.length} instead of 2");
        }
        final alternative = cValue[0] as CborSmallInt;
        final data = cValue[1] as CborList;

        return PlutusData.constr(
          _compactCborTagToAlternative(alternative.toInt()),
          _deserialisePlutusData_List(data),
          cValue.tags,
          cValue.type,
        );
      } else {
        return _deserialisePlutusData_List(cValue);
      }
    }

    final result = switch (cValue) {
      CborInt() => PlutusData.bigInt(cValue.toBigInt()),
      CborBytes() =>
        cValue.type == CborLengthType.indefinite
            ? PlutusData.indefiniteBytes(cValue.bytesList, cValue.tags)
            : PlutusData.definiteBytes(cValue.bytes, cValue.tags),
      CborMap() => PlutusData.map(
        cValue.map((key, value) => MapEntry(PlutusData.deserialize(key), PlutusData.deserialize(value))),
        cValue.tags,
        cValue.type,
      ),
      CborList() => fromCborList(cValue),
      _ => throw PlutusDataParseException("constr: Unknown type ${cValue.runtimeType}"),
    };

    conditionalAssert(() => result.serializeHexString() == cValue.hexEncode());

    return result;
  }
}

int _compactCborTagToAlternative(int cborTag) {
  // return cborTag; // Not sure this is needed
  if (cborTag >= 121 && cborTag <= 127) {
    return cborTag - 121;
  } else if (cborTag >= 1280 && cborTag <= 1400) {
    return cborTag - 1280 + 7;
  } else {
    return cborTag;
  }
}

int _alternativeToCompactCborTag(int altTag) {
  // return altTag; // Not sure this is needed
  if (altTag <= 6) {
    return altTag + 121;
  } else if (altTag <= 127) {
    return altTag + 1280 - 7;
  } else {
    return altTag;
  }
}

CborValue _serializePlutusData_Constr(PlutusData_Constr d, {required bool forJson}) => CborList(
  [
    CborSmallInt(forJson ? d.alternative : _alternativeToCompactCborTag(d.alternative)),
    _serializePlutusData_List(d.data, forJson: forJson),
  ],
  tags: d.tags,
  type: d.cborLengthType,
);

CborValue _serializePlutusData_List(PlutusData_List d, {required bool forJson}) => CborList(
  d.data
      .map((e) => e.serialize(forJson: forJson)) //
      .toList(growable: false),
  tags: d.tags,
  type: d.cborLengthType,
);

PlutusData_List _deserialisePlutusData_List(CborList cborList) => PlutusData_List(
  cborList
      .map(PlutusData.deserialize) //
      .toList(growable: false),
  cborList.tags,
  cborList.type,
);
