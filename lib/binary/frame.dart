import "dart:collection";

/// Not part of public API
class Frame {
  /// Not part of public API
  final dynamic key;

  /// Not part of public API
  final dynamic value;

  /// Not part of public API
  final bool deleted;

  /// Not part of public API
  final bool lazy;

  /// Not part of public API
  int? length;

  /// Not part of public API
  int offset = -1;

  /// Not part of public API
  Frame(this.key, this.value, {this.length, this.offset = -1}) : lazy = false, deleted = false, assert(assertKey(key));

  /// Not part of public API
  Frame.deleted(this.key, {this.length})
    : value = null,
      lazy = false,
      deleted = true,
      offset = -1,
      assert(assertKey(key));

  /// Not part of public API
  Frame.lazy(this.key, {this.length, this.offset = -1})
    : value = null,
      lazy = true,
      deleted = false,
      assert(assertKey(key));

  /// Not part of public API
  static bool assertKey(dynamic key) {
    if (key is int) {
      if (key < 0 || key > 0xFFFFFFFF) {
        throw Exception("Integer keys need to be in the range 0 - 0xFFFFFFFF");
      }
    } else if (key is String) {
      if (key.length > 0xFF) {
        throw Exception("String keys need to be a max length of 255");
      }
    } else {
      throw Exception("Keys need to be Strings or integers");
    }

    return true;
  }

  /// Not part of public API
  Frame toLazy() {
    if (deleted) return this;
    return Frame.lazy(
      key,
      length: length,
      offset: offset,
    );
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) {
    if (other is Frame) {
      return key == other.key && value == other.value && length == other.length && deleted == other.deleted;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    if (deleted) {
      return "Frame.deleted(key: $key, length: $length)";
    } else if (lazy) {
      return "Frame.lazy(key: $key, length: $length, offset: $offset)";
    } else {
      return "Frame(key: $key, value: $value, "
          "length: $length, offset: $offset)";
    }
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => runtimeType.hashCode ^ key.hashCode ^ value.hashCode ^ length.hashCode ^ deleted.hashCode;
}

/// Possible Key types
class FrameKeyType {
  /// Integer key
  static const uintT = 0;

  /// String key
  static const utf8StringT = 1;
}

/// Possible value types
enum FrameValueType {
  nullT(binaryValue: 0),
  intT(binaryValue: 1),
  doubleT(binaryValue: 2),
  boolT(binaryValue: 3),
  stringT(binaryValue: 4),
  byteListT(binaryValue: 5), // Uint8List
  intListT(binaryValue: 6), // List<int>
  doubleListT(binaryValue: 7), // List<double>
  boolListT(binaryValue: 8), // List<bool>
  stringListT(binaryValue: 9), // List<String>
  listT(binaryValue: 10), // List<dynamic>
  mapT(binaryValue: 11), // Map<dynamic, dynamic>
  bytesListT(binaryValue: 12) // List<Uint8List>
  ;

  final int binaryValue;

  static final Map<int, FrameValueType> _binaryValueToType = UnmodifiableMapView({
    for (final type in values) type.binaryValue: type,
  });

  static FrameValueType? fromBinaryValue(int binaryValue) => _binaryValueToType[binaryValue];

  const FrameValueType({required this.binaryValue});
}
