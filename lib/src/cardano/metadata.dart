import "package:cbor/cbor.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/transformations.dart";
import "cbor_encodable.dart";

part "metadata.freezed.dart";

@freezed
@immutable
sealed class CBORMetadata with _$CBORMetadata implements CborEncodable {
  factory CBORMetadata({required CborValue value}) = _CBORMetadata;
  CBORMetadata._();

  @override
  CborValue serialize({required bool forJson}) => value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CBORMetadata &&
            (identical(other.value, value) ||
                other.value == value ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(computeBlake2bHash256()),
      );

  factory CBORMetadata.deserialize({required CborValue cValue}) => CBORMetadata(value: cValue);
}
