import "dart:convert";
import "dart:typed_data";

import "./frame.dart";
import "binary_exceptions.dart";

T useBinaryReader<T>(Uint8List bytes, T Function(BinaryReader reader) callback) {
  final reader = BinaryReader(bytes);
  return callback(reader);
}

/// Not part of public API
class BinaryReader {
  static const utf8Decoder = Utf8Decoder();

  final ByteData _byteData;

  final int _bufferLimit;
  int _offset = 0;

  /// Not part of public API
  BinaryReader(Uint8List list, [int? bufferLength])
    : _byteData = ByteData.sublistView(
        list,
        /* start: */ 0,
        /* end: */ bufferLength ?? list.length,
      ),
      _bufferLimit = bufferLength ?? (list.length);

  @pragma("vm:prefer-inline")
  @pragma("wasm:prefer-inline")
  @pragma("dart2js:tryInline")
  int get availableBytes => _bufferLimit - _offset;

  int get usedBytes => _offset;

  @pragma("vm:prefer-inline")
  @pragma("wasm:prefer-inline")
  @pragma("dart2js:tryInline")
  void _requireBytes(int bytes) {
    if (_offset + bytes > _bufferLimit) {
      throw BinaryRangeErrorException(
        requiredBytes: bytes,
        availableBytes: availableBytes,
      );
    }
  }

  @pragma("vm:prefer-inline")
  @pragma("wasm:prefer-inline")
  @pragma("dart2js:tryInline")
  void skip(int bytes) {
    _requireBytes(bytes);
    _offset += bytes;
  }

  @pragma("vm:prefer-inline")
  @pragma("wasm:prefer-inline")
  @pragma("dart2js:tryInline")
  int readByte() {
    _requireBytes(1);
    return _byteData.getInt8(_offset++);
  }

  @pragma("vm:prefer-inline")
  @pragma("wasm:prefer-inline")
  @pragma("dart2js:tryInline")
  Uint8List viewBytes(int bytes) {
    _requireBytes(bytes);
    _offset += bytes;
    return Uint8List.sublistView(
      /* data: */ _byteData,
      /* start: */ _offset - bytes,
      /* end: */ _offset,
    );
  }

  ByteData peekBytes(int bytes) {
    _requireBytes(bytes);
    return ByteData.sublistView(
      /* data: */ _byteData,
      /* start: */ _offset,
      /* end: */ _offset + bytes,
    );
    // return _list.view(_offset, bytes);
  }

  int readWord() {
    _requireBytes(2);
    _offset += 2;
    return _byteData.getInt16(_offset - 2, Endian.little);
  }

  int readInt32() {
    _requireBytes(4);
    _offset += 4;
    return _byteData.getInt32(_offset - 4, Endian.little);
  }

  @pragma("vm:prefer-inline")
  @pragma("wasm:prefer-inline")
  @pragma("dart2js:tryInline")
  int readUint32() {
    _requireBytes(4);
    _offset += 4;
    return _byteData.getUint32(_offset - 4, Endian.little);
  }

  /// Not part of public API
  int peekUint32() {
    _requireBytes(4);
    return _byteData.getUint32(_offset, Endian.little);
  }

  int readInt() => readDouble().toInt();

  BigInt readBigInt() => BigInt.parse(readString());

  double readDouble() {
    _requireBytes(8);
    _offset += 8;
    return _byteData.getFloat64(_offset - 8, Endian.little);
  }

  bool readBool() {
    return readByte() > 0;
  }

  int? readOptionalByte() {
    final typeId = readByte();
    return switch (FrameValueType.fromBinaryValue(typeId)) {
      FrameValueType.nullT => null,
      FrameValueType.intT => readByte(),
      _ => throw UnexpectedBinaryTypeException(
        expectedTypeId: FrameValueType.intT,
        actualTypeId: typeId,
      ),
    };
  }

  String? readOptionalString([int? byteCount, Converter<List<int>, String> decoder = BinaryReader.utf8Decoder]) {
    final typeId = readByte();
    return switch (FrameValueType.fromBinaryValue(typeId)) {
      FrameValueType.nullT => null,
      FrameValueType.stringT => readString(byteCount, decoder),
      _ => throw UnexpectedBinaryTypeException(
        expectedTypeId: FrameValueType.stringT,
        actualTypeId: typeId,
      ),
    };
  }

  String readString([int? byteCount, Converter<List<int>, String> decoder = BinaryReader.utf8Decoder]) {
    byteCount ??= readUint32();
    final view = viewBytes(byteCount);
    return decoder.convert(view);
  }

  Uint8List? readOptionalByteList([int? length]) {
    final typeId = readByte();
    return switch (FrameValueType.fromBinaryValue(typeId)) {
      FrameValueType.nullT => null,
      FrameValueType.byteListT => readByteList(length),
      _ => throw UnexpectedBinaryTypeException(
        expectedTypeId: FrameValueType.byteListT,
        actualTypeId: typeId,
      ),
    };
  }

  Uint8List readByteList([int? length]) {
    length ??= readUint32();
    _requireBytes(length);
    final byteList = Uint8List.sublistView(
      /* data: */ _byteData,
      /* start: */ _offset,
      /* end: */ _offset + length,
    );

    _offset += length;
    return byteList;
  }

  List<int> readIntList([int? length]) {
    length ??= readUint32();
    _requireBytes(length * 8);
    final byteData = _byteData;
    final list = List<int>.filled(length, 0, growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = byteData.getInt64(_offset, Endian.little);
      _offset += 8;
    }
    return list;
  }

  List<double> readDoubleList([int? length]) {
    length ??= readUint32();
    _requireBytes(length * 8);
    final byteData = _byteData;
    final list = List<double>.filled(length, 0.0, growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = byteData.getFloat64(_offset, Endian.little);
      _offset += 8;
    }
    return list;
  }

  List<bool> readBoolList([int? length]) {
    length ??= readUint32();
    _requireBytes(length);
    final list = List<bool>.filled(length, false, growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = _byteData.getInt8(_offset++) > 0;
    }
    return list;
  }

  List<String>? readOptionalStringList([int? length, Converter<List<int>, String> decoder = BinaryReader.utf8Decoder]) {
    final typeId = readByte();
    return switch (FrameValueType.fromBinaryValue(typeId)) {
      FrameValueType.nullT => null,
      FrameValueType.stringListT => readStringList(length, decoder),
      _ => throw UnexpectedBinaryTypeException(
        expectedTypeId: FrameValueType.stringListT,
        actualTypeId: typeId,
      ),
    };
  }

  List<String> readStringList([int? length, Converter<List<int>, String> decoder = BinaryReader.utf8Decoder]) {
    length ??= readUint32();
    final list = List<String>.filled(length, "", growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = readString(null, decoder);
    }
    return list;
  }

  List readList([int? length]) {
    length ??= readUint32();
    final list = List<dynamic>.filled(length, null, growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = read();
    }
    return list;
  }

  List<Uint8List>? readOptionalBytesList([int? length]) {
    final typeId = readByte();
    return switch (FrameValueType.fromBinaryValue(typeId)) {
      FrameValueType.nullT => null,
      FrameValueType.bytesListT => readBytesList(length),
      _ => throw UnexpectedBinaryTypeException(
        expectedTypeId: FrameValueType.bytesListT,
        actualTypeId: typeId,
      ),
    };
  }

  List<Uint8List> readBytesList([int? length]) {
    length ??= readUint32();
    return List<Uint8List>.generate(length, (index) => readByteList());
  }

  Map readMap([int? length]) {
    length ??= readUint32();
    final map = <dynamic, dynamic>{};
    for (var i = 0; i < length; i++) {
      map[read()] = read();
    }
    return map;
  }

  /// Not part of public API
  dynamic readKey() {
    final keyType = readByte();
    if (keyType == FrameKeyType.uintT) {
      return readUint32();
    } else if (keyType == FrameKeyType.utf8StringT) {
      final byteCount = readByte();
      return BinaryReader.utf8Decoder.convert(viewBytes(byteCount));
    } else {
      throw BinaryCorruptedException("Unsupported key type. Frame might be corrupted.");
    }
  }

  dynamic read([int? typeId]) {
    typeId ??= readByte();
    return switch (FrameValueType.fromBinaryValue(typeId)) {
      FrameValueType.nullT => null,
      FrameValueType.intT => readInt(),
      FrameValueType.doubleT => readDouble(),
      FrameValueType.boolT => readBool(),
      FrameValueType.stringT => readString(),
      FrameValueType.byteListT => readByteList(),
      FrameValueType.intListT => readIntList(),
      FrameValueType.doubleListT => readDoubleList(),
      FrameValueType.boolListT => readBoolList(),
      FrameValueType.stringListT => readStringList(),
      FrameValueType.listT => readList(),
      FrameValueType.mapT => readMap(),
      FrameValueType.bytesListT => readBytesList(),
      null => throw UnknownBinaryTypeException(typeId: typeId, message: "Failed to read value"),
    };
  }
}
