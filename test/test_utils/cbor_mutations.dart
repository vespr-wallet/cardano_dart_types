import "package:cbor/cbor.dart";

/// Every variant of [value] with exactly one array/map re-encoded as indefinite-length, plus every
/// variant with exactly one multi-entry map's entries reversed. All are valid encodings of the same
/// data, so a lossless model must re-serialize each of them byte-exact.
Iterable<CborValue> encodingVariants(CborValue value) sync* {
  final paths = _containerPaths(value);
  for (final p in paths.keys) {
    yield rebuildCbor(value, (path) => path == p, indefinite: true);
  }
  for (final p in paths.keys.where((p) => paths[p]!)) {
    yield rebuildCbor(value, (path) => path == p);
  }
}

/// Path of every array/map in [v] -> whether it is a map with more than one entry.
Map<String, bool> _containerPaths(CborValue v, [String path = ""]) => switch (v) {
  CborList() => {
    path: false,
    for (var i = 0; i < v.length; i++) ..._containerPaths(v[i], "$path[$i]"),
  },
  CborMap() => {
    path: v.length > 1,
    for (final e in v.entries) ..._containerPaths(e.value, "$path{${_keyPath(e.key)}}"),
  },
  _ => {},
};

/// Copy of [v] where containers whose path matches [isTarget] become indefinite-length or, if not
/// [indefinite], get their map entries reversed. Paths look like `[1]{05}[0]` (map keys as hex).
CborValue rebuildCbor(CborValue v, bool Function(String path) isTarget, {bool indefinite = false, String path = ""}) {
  final hit = isTarget(path);
  return switch (v) {
    CborList() => CborList(
      [for (var i = 0; i < v.length; i++) rebuildCbor(v[i], isTarget, indefinite: indefinite, path: "$path[$i]")],
      tags: v.tags,
      type: hit && indefinite ? CborLengthType.indefinite : v.type,
    ),
    CborMap() => CborMap.fromEntries(
      (hit && !indefinite ? v.entries.toList().reversed : v.entries).map(
        (e) => MapEntry(
          e.key,
          rebuildCbor(e.value, isTarget, indefinite: indefinite, path: "$path{${_keyPath(e.key)}}"),
        ),
      ),
      tags: v.tags,
      type: hit && indefinite ? CborLengthType.indefinite : v.type,
    ),
    _ => v,
  };
}

String _keyPath(CborValue key) => cborEncode(key).map((b) => b.toRadixString(16).padLeft(2, "0")).join();
