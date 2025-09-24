// ignore_for_file: invalid_annotation_target

import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../cardano/cbor_encodable.dart";
import "../exceptions/cose_exceptions.dart";
import "../utils/iterable_extensions.dart";
import "../utils/transformations.dart";
import "cose_protected_header_map.dart";

part "cose_sig_structure.freezed.dart";

@freezed
sealed class CoseSigStructure with _$CoseSigStructure implements CborEncodable {
  const factory CoseSigStructure({
    required CoseProtectedHeaderMap bodyProtected,
    required CoseProtectedHeaderMap? signProtected,
    required SigContext sigContext,
    required Uint8List payload,
    required Uint8List externalAad,
  }) = _CoseSigStructure;
  const CoseSigStructure._();

  /// Signed with a single key
  factory CoseSigStructure.fromSign1({
    required CoseProtectedHeaderMap bodyProtected,
    required Uint8List payload,
  }) => CoseSigStructure(
    sigContext: SigContext.signature1,
    bodyProtected: bodyProtected,
    signProtected: null,
    payload: payload,
    externalAad: <int>[].toUint8List(),
  );

  /// Signed with multiple keys (for single key use [CoseSigStructure.fromSign1])
  factory CoseSigStructure.fromSign({
    required CoseProtectedHeaderMap bodyProtected,
    required Uint8List payload,
  }) => CoseSigStructure(
    sigContext: SigContext.signature,
    bodyProtected: bodyProtected,
    signProtected: null,
    payload: payload,
    externalAad: <int>[].toUint8List(),
  );

  factory CoseSigStructure.deserialize(CborValue cborValue) {
    if (cborValue is! CborList) {
      throw CoseSigStructureParseException("cborValue is type ${cborValue.runtimeType}");
    }
    if (cborValue.length != 4 && cborValue.length != 5) {
      throw CoseSigStructureParseException("cborValue length is ${cborValue.length}. Expected 4 or 5.");
    }

    final sigContext = SigContext.fromString((cborValue[0] as CborString).toString());
    final protectedHeaderMap = CoseProtectedHeaderMap.deserialize(cborValue[1]);
    final signProtected = cborValue.length == 4 ? null : CoseProtectedHeaderMap.deserialize(cborValue[2]);
    final externalAad = (cborValue[cborValue.length - 2] as CborBytes).bytes.toUint8List();
    final payload = (cborValue[cborValue.length - 1] as CborBytes).bytes.toUint8List();

    return CoseSigStructure(
      bodyProtected: protectedHeaderMap,
      signProtected: signProtected,
      sigContext: sigContext,
      payload: payload,
      externalAad: externalAad,
    );
  }

  @override
  CborValue serialize({required bool forJson}) => CborList.of(
    [
      CborString(sigContext.utf8Value),
      bodyProtected.serialize(forJson: forJson),
      signProtected?.serialize(forJson: forJson),
      CborBytes(externalAad),
      CborBytes(payload),
    ].nonNulls().toList(growable: false),
  );
}

enum SigContext {
  signature("Signature"),
  signature1("Signature1"),
  counterSignature("CounterSignature");

  final String utf8Value;
  const SigContext(this.utf8Value);

  factory SigContext.fromString(String value) => SigContext.values.singleWhere((element) => element.utf8Value == value);
}
