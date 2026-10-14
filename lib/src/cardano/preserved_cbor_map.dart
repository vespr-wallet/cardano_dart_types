import "package:cbor/cbor.dart";
import "package:collection/collection.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/transformations.dart";

/// The decoded CBOR of an int-keyed map (tx body, witness set), kept next to its typed model
/// so encodings the model can't express (indefinite lengths, key order, nested quirks) survive
/// re-serialization.
///
/// A field's original value is re-emitted only while the field's typed encoding still matches the
/// one produced at parse time, so modified fields fall back to their typed encoding.
@immutable
class PreservedCborMap {
  PreservedCborMap._(this.original, this._typedHexByKey) : _originalHex = original.hexEncode();

  final CborMap original;
  final Map<int, String> _typedHexByKey;
  final String _originalHex;

  /// Returns null when [typed] already encodes to the same bytes as [original].
  static PreservedCborMap? capture({required CborMap original, required CborMap typed}) {
    if (original.hexEncode() == typed.hexEncode()) return null;
    return PreservedCborMap._(original, {
      for (final MapEntry(:key, :value) in typed.entries) (key as CborSmallInt).toInt(): value.hexEncode(),
    });
  }

  List<int> get keyOrder => original.keys.whereType<CborSmallInt>().map((k) => k.toInt()).toList(growable: false);

  /// Rebuilds the map from freshly serialized [typed] entries, restoring the original key order,
  /// length type, tags and every field value whose typed encoding is unchanged.
  /// Keys missing from the original are appended in ascending order (or sorted in, if the
  /// original order was ascending).
  CborMap restore(Map<int, CborValue> typed) {
    final kept = keyOrder.where(typed.containsKey).toList();
    final added = typed.keys.where((k) => !kept.contains(k)).toList()..sort();
    final keys = isAscending(keyOrder) ? ([...kept, ...added]..sort()) : [...kept, ...added];

    return CborMap.fromEntries(
      keys.map((k) {
        final value = typed[k]!;
        final isUnchanged = _typedHexByKey[k] == value.hexEncode();
        return MapEntry(CborSmallInt(k), isUnchanged ? original[CborSmallInt(k)]! : value);
      }),
      tags: original.tags,
      type: original.type,
    );
  }

  static bool isAscending(List<int> keys) => keys.isSorted((a, b) => a.compareTo(b));

  @override
  bool operator ==(Object other) =>
      other is PreservedCborMap &&
      other._originalHex == _originalHex &&
      const MapEquality<int, String>().equals(other._typedHexByKey, _typedHexByKey);

  @override
  int get hashCode => Object.hash(_originalHex, const MapEquality<int, String>().hash(_typedHexByKey));
}
