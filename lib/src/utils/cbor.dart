import "package:cbor/cbor.dart";

List<int>? mergeCborTags(List<int>? tags, List<int>? tags2) {
  if (tags == null) return tags2;
  if (tags2 == null) return tags;
  return {...tags, ...tags2}.toList(growable: false);
}

/// Key order of an int-keyed CBOR map, or null when it is ascending (the standard order).
///
/// Ascending order is deliberately not stored: new keys added via copyWith are then sorted into
/// place instead of being appended, keeping the map canonical.
List<int>? nonAscendingKeyOrder(CborMap cMap) {
  final keys = cMap.keys.map((k) => (k as CborSmallInt).toInt()).toList(growable: false);
  for (var i = 1; i < keys.length; i++) {
    if (keys[i] <= keys[i - 1]) return keys;
  }
  return null;
}

/// Orders [entries] (keyed by their int map key) by [keyOrder]. Keys missing from [keyOrder]
/// (e.g. added via copyWith) are appended in ascending order. A null [keyOrder] means ascending.
List<MapEntry<CborValue, CborValue>> orderEntries(
  Map<int, MapEntry<CborValue, CborValue>> entries,
  List<int>? keyOrder,
) {
  final remaining = Map.of(entries);
  return [
    for (final key in keyOrder ?? const <int>[]) ?remaining.remove(key),
    for (final key in remaining.keys.toList()..sort()) remaining[key]!,
  ];
}
