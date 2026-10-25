import "dart:typed_data";

import "package:cbor/cbor.dart";
import "package:collection/collection.dart";

// Byte-level reading of well-formed CBOR (RFC 8949 section 3), for what package:cbor does not expose: where an item
// ends in its bytes, and how many map entries those bytes have before duplicate keys are dropped by decoding.

/// Offset of what follows the head at [offset]: the first item of an array or map, the tagged item, string content.
int cborContentStart(Uint8List bytes, int offset) {
  final additionalInfo = bytes[offset] & 0x1f;
  // 0-23 and 31 (indefinite): no argument bytes; 24-27: the argument is in the next 1, 2, 4 or 8 bytes
  return offset + 1 + (additionalInfo >= 24 && additionalInfo <= 27 ? 1 << (additionalInfo - 24) : 0);
}

/// End offset of the data item at [offset] and the number of map entries in it, nested ones included. Strings are not
/// looked into, so neither is CBOR embedded in a byte string (tag 24).
({int end, int mapEntries}) scanCborItem(Uint8List bytes, int offset) {
  final majorType = bytes[offset] >> 5;
  final contentStart = cborContentStart(bytes, offset);

  if (bytes[offset] & 0x1f == 31) {
    // indefinite length: items, or string chunks, up to the 0xff break
    var end = contentStart;
    var items = 0;
    var mapEntries = 0;
    while (bytes[end] != 0xff) {
      final item = scanCborItem(bytes, end);
      end = item.end;
      mapEntries += item.mapEntries;
      items++;
    }
    return (end: end + 1, mapEntries: mapEntries + (majorType == 5 ? items ~/ 2 : 0));
  }

  final argument = _argument(bytes, offset);
  switch (majorType) {
    case 2 || 3:
      return (end: contentStart + argument, mapEntries: 0);
    case 4 || 5:
      var end = contentStart;
      var mapEntries = majorType == 5 ? argument : 0;
      for (var i = 0; i < (majorType == 5 ? 2 * argument : argument); i++) {
        final item = scanCborItem(bytes, end);
        end = item.end;
        mapEntries += item.mapEntries;
      }
      return (end: end, mapEntries: mapEntries);
    case 6:
      return scanCborItem(bytes, contentStart);
    default: // 0, 1: integers; 7: simple values and floats
      return (end: contentStart, mapEntries: 0);
  }
}

/// Map entries in [value], nested ones included. Fewer than [scanCborItem] counts in the bytes [value] was decoded from
/// means a duplicate key: decoding keeps only its last value.
int countCborMapEntries(CborValue value) => switch (value) {
  CborMap() => value.length + value.entries.map((e) => countCborMapEntries(e.key) + countCborMapEntries(e.value)).sum,
  CborList() => value.map(countCborMapEntries).sum,
  _ => 0,
};

int _argument(Uint8List bytes, int offset) {
  final additionalInfo = bytes[offset] & 0x1f;
  if (additionalInfo < 24) {
    return additionalInfo;
  }
  // multiplied, not shifted: shifts are 32-bit on the web
  return Uint8List.sublistView(
    bytes,
    offset + 1,
    cborContentStart(bytes, offset),
  ).fold(0, (value, byte) => value * 256 + byte);
}
