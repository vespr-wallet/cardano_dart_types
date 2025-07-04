import "dart:convert";
import "dart:typed_data";

import "binary_reader.dart";
import "binary_x.dart";
import "frame.dart";

/// Not part of public API
class BinaryReaderImpl extends BinaryReader {
  final Uint8List _buffer;
  final ByteData _byteData;

  final int _bufferLimit;
  int _offset = 0;

  /// Not part of public API
  BinaryReaderImpl(this._buffer, [int? bufferLength])
      : _byteData = ByteData.view(_buffer.buffer, _buffer.offsetInBytes),
        _bufferLimit = bufferLength ?? _buffer.length;

  @pragma("vm:prefer-inline")
  @pragma("dart2js:tryInline")
  @override
  int get availableBytes => _bufferLimit - _offset;

  @override
  int get usedBytes => _offset;

  @pragma("vm:prefer-inline")
  @pragma("dart2js:tryInline")
  void _requireBytes(int bytes) {
    if (_offset + bytes > _bufferLimit) {
      throw RangeError("Not enough bytes available.");
    }
  }

  @pragma("vm:prefer-inline")
  @pragma("dart2js:tryInline")
  @override
  void skip(int bytes) {
    _requireBytes(bytes);
    _offset += bytes;
  }

  @pragma("vm:prefer-inline")
  @pragma("dart2js:tryInline")
  @override
  int readByte() {
    _requireBytes(1);
    return _buffer[_offset++];
  }

  @pragma("vm:prefer-inline")
  @pragma("dart2js:tryInline")
  @override
  Uint8List viewBytes(int bytes) {
    _requireBytes(bytes);
    _offset += bytes;
    return _buffer.view(_offset - bytes, bytes);
  }

  @override
  Uint8List peekBytes(int bytes) {
    _requireBytes(bytes);
    return _buffer.view(_offset, bytes);
  }

  @override
  int readWord() {
    _requireBytes(2);
    return _buffer[_offset++] | _buffer[_offset++] << 8;
  }

  @override
  int readInt32() {
    _requireBytes(4);
    _offset += 4;
    return _byteData.getInt32(_offset - 4, Endian.little);
  }

  @pragma("vm:prefer-inline")
  @pragma("dart2js:tryInline")
  @override
  int readUint32() {
    _requireBytes(4);
    _offset += 4;
    return _buffer.readUint32(_offset - 4);
  }

  /// Not part of public API
  int peekUint32() {
    _requireBytes(4);
    return _buffer.readUint32(_offset);
  }

  @override
  int readInt() {
    return readDouble().toInt();
  }

  @override
  double readDouble() {
    _requireBytes(8);
    final value = _byteData.getFloat64(_offset, Endian.little);
    _offset += 8;
    return value;
  }

  @override
  bool readBool() {
    return readByte() > 0;
  }

  @override
  String readString([int? byteCount, Converter<List<int>, String> decoder = BinaryReader.utf8Decoder]) {
    byteCount ??= readUint32();
    final view = viewBytes(byteCount);
    return decoder.convert(view);
  }

  @override
  Uint8List readByteList([int? length]) {
    length ??= readUint32();
    _requireBytes(length);
    final byteList = _buffer.sublist(_offset, _offset + length);
    _offset += length;
    return byteList;
  }

  @override
  List<int> readIntList([int? length]) {
    length ??= readUint32();
    _requireBytes(length * 8);
    final byteData = _byteData;
    final list = List<int>.filled(length, 0, growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = byteData.getFloat64(_offset, Endian.little).toInt();
      _offset += 8;
    }
    return list;
  }

  @override
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

  @override
  List<bool> readBoolList([int? length]) {
    length ??= readUint32();
    _requireBytes(length);
    final list = List<bool>.filled(length, false, growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = _buffer[_offset++] > 0;
    }
    return list;
  }

  @override
  List<String> readStringList([int? length, Converter<List<int>, String> decoder = BinaryReader.utf8Decoder]) {
    length ??= readUint32();
    final list = List<String>.filled(length, "", growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = readString(null, decoder);
    }
    return list;
  }

  @override
  List readList([int? length]) {
    length ??= readUint32();
    final list = List<dynamic>.filled(length, null, growable: true);
    for (var i = 0; i < length; i++) {
      list[i] = read();
    }
    return list;
  }

  List<Uint8List> readBytesList([int? length]) {
    length ??= readUint32();
    return List<Uint8List>.generate(length, (index) => readByteList());
  }

  @override
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
      throw Exception("Unsupported key type. Frame might be corrupted.");
    }
  }

  @override
  dynamic read([int? typeId]) {
    typeId ??= readByte();
    switch (typeId) {
      case FrameValueType.nullT:
        return null;
      case FrameValueType.intT:
        return readInt();
      case FrameValueType.doubleT:
        return readDouble();
      case FrameValueType.boolT:
        return readBool();
      case FrameValueType.stringT:
        return readString();
      case FrameValueType.byteListT:
        return readByteList();
      case FrameValueType.intListT:
        return readIntList();
      case FrameValueType.doubleListT:
        return readDoubleList();
      case FrameValueType.boolListT:
        return readBoolList();
      case FrameValueType.stringListT:
        return readStringList();
      case FrameValueType.listT:
        return readList();
      case FrameValueType.mapT:
        return readMap();
      default:
        throw Exception("Cannot read, unknown typeId: $typeId. "
            "Did you forget to register an adapter?");
    }
  }
}
