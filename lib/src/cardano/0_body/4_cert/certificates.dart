// ignore_for_file: invalid_annotation_target

import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../hd/util/CborDeserializationException.dart";
import "../../cbor_encodable.dart";
import "certificate.dart";

part "certificates.freezed.dart";

@freezed
sealed class Certificates with _$Certificates implements CborEncodable {
  const factory Certificates({
    required List<Certificate> certificates,
    required List<int> cborTags,
    required CborLengthType lengthType,
  }) = _Certificates;

  const Certificates._();

  @override
  CborValue serialize({required bool forJson}) => CborList.of(
        certificates.map((certificate) => certificate.serialize(forJson: forJson)),
        tags: cborTags,
        type: lengthType,
      );

  factory Certificates.deserialize(CborValue value) {
    if (value is! CborList) {
      throw CborDeserializationException(
        "Certificates deserialization failed. Expected a cbor list but got ${value.runtimeType}",
      );
    }
    return Certificates(
      certificates: value.map(Certificate.deserialize).toList(),
      cborTags: value.tags,
      lengthType: value.type,
    );
  }
}
