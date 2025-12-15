import "dart:typed_data";

import "package:cardano_dart_types/binary/binary_exceptions.dart";
import "package:cardano_dart_types/binary/binary_reader.dart";
import "package:cardano_dart_types/binary/binary_writer.dart";
import "package:cardano_dart_types/binary/frame.dart";
import "package:test/test.dart";

void main() {
  group("BinaryWriter/BinaryReader round-trip tests", () {
    // Helper to write and then read back
    T roundTrip<T>(void Function(BinaryWriter w) write, T Function(BinaryReader r) read) {
      final bytes = useBinaryWriter(write);
      return useBinaryReader(bytes, read);
    }

    group("Basic types", () {
      group("writeByte/readByte", () {
        test("zero", () {
          final result = roundTrip(
            (w) => w.writeByte(0),
            (r) => r.readByte(),
          );
          expect(result, equals(0));
        });

        test("positive value", () {
          final result = roundTrip(
            (w) => w.writeByte(127),
            (r) => r.readByte(),
          );
          expect(result, equals(127));
        });

        test("max unsigned byte value (255 reads as -1 signed)", () {
          final result = roundTrip(
            (w) => w.writeByte(255),
            (r) => r.readByte(),
          );
          // readByte uses getInt8, so 255 becomes -1
          expect(result, equals(-1));
        });

        test("multiple bytes", () {
          final bytes = useBinaryWriter((w) {
            w.writeByte(0);
            w.writeByte(1);
            w.writeByte(127);
            w.writeByte(128);
            w.writeByte(255);
          });
          final results = useBinaryReader(bytes, (r) {
            return [r.readByte(), r.readByte(), r.readByte(), r.readByte(), r.readByte()];
          });
          expect(results, equals([0, 1, 127, -128, -1]));
        });
      });

      group("writeWord/readWord", () {
        test("zero", () {
          final result = roundTrip(
            (w) => w.writeWord(0),
            (r) => r.readWord(),
          );
          expect(result, equals(0));
        });

        test("positive value", () {
          final result = roundTrip(
            (w) => w.writeWord(12345),
            (r) => r.readWord(),
          );
          expect(result, equals(12345));
        });

        test("max positive signed 16-bit", () {
          final result = roundTrip(
            (w) => w.writeWord(32767),
            (r) => r.readWord(),
          );
          expect(result, equals(32767));
        });

        test("endianness preserved", () {
          final result = roundTrip(
            (w) => w.writeWord(0x1234),
            (r) => r.readWord(),
          );
          expect(result, equals(0x1234));
        });
      });

      group("writeInt32/readInt32", () {
        test("zero", () {
          final result = roundTrip(
            (w) => w.writeInt32(0),
            (r) => r.readInt32(),
          );
          expect(result, equals(0));
        });

        test("positive value", () {
          final result = roundTrip(
            (w) => w.writeInt32(123456789),
            (r) => r.readInt32(),
          );
          expect(result, equals(123456789));
        });

        test("negative value", () {
          final result = roundTrip(
            (w) => w.writeInt32(-123456789),
            (r) => r.readInt32(),
          );
          expect(result, equals(-123456789));
        });

        test("max int32", () {
          final result = roundTrip(
            (w) => w.writeInt32(2147483647),
            (r) => r.readInt32(),
          );
          expect(result, equals(2147483647));
        });

        test("min int32", () {
          final result = roundTrip(
            (w) => w.writeInt32(-2147483648),
            (r) => r.readInt32(),
          );
          expect(result, equals(-2147483648));
        });
      });

      group("writeUint32/readUint32", () {
        test("zero", () {
          final result = roundTrip(
            (w) => w.writeUint32(0),
            (r) => r.readUint32(),
          );
          expect(result, equals(0));
        });

        test("positive value", () {
          final result = roundTrip(
            (w) => w.writeUint32(123456789),
            (r) => r.readUint32(),
          );
          expect(result, equals(123456789));
        });

        test("max uint32", () {
          final result = roundTrip(
            (w) => w.writeUint32(4294967295),
            (r) => r.readUint32(),
          );
          expect(result, equals(4294967295));
        });

        test("peekUint32 does not advance offset", () {
          final bytes = useBinaryWriter((w) => w.writeUint32(42));
          final (peeked, read) = useBinaryReader(bytes, (r) {
            final peeked = r.peekUint32();
            final read = r.readUint32();
            return (peeked, read);
          });
          expect(peeked, equals(42));
          expect(read, equals(42));
        });
      });

      group("writeInt/readInt (via double)", () {
        test("zero", () {
          final result = roundTrip(
            (w) => w.writeInt(0),
            (r) => r.readInt(),
          );
          expect(result, equals(0));
        });

        test("positive value", () {
          final result = roundTrip(
            (w) => w.writeInt(12345678),
            (r) => r.readInt(),
          );
          expect(result, equals(12345678));
        });

        test("negative value", () {
          final result = roundTrip(
            (w) => w.writeInt(-12345678),
            (r) => r.readInt(),
          );
          expect(result, equals(-12345678));
        });

        test("large value within double precision", () {
          // Note: writeInt converts to double, so precision may be lost for very large ints
          final result = roundTrip(
            (w) => w.writeInt(9007199254740991), // max safe integer for JS
            (r) => r.readInt(),
          );
          expect(result, equals(9007199254740991));
        });
      });

      group("writeBigInt/readBigInt", () {
        test("zero", () {
          final result = roundTrip(
            (w) => w.writeBigInt(BigInt.zero),
            (r) => r.readBigInt(),
          );
          expect(result, equals(BigInt.zero));
        });

        test("positive value", () {
          final result = roundTrip(
            (w) => w.writeBigInt(BigInt.parse("123456789012345678901234567890")),
            (r) => r.readBigInt(),
          );
          expect(result, equals(BigInt.parse("123456789012345678901234567890")));
        });

        test("negative value", () {
          final result = roundTrip(
            (w) => w.writeBigInt(BigInt.parse("-123456789012345678901234567890")),
            (r) => r.readBigInt(),
          );
          expect(result, equals(BigInt.parse("-123456789012345678901234567890")));
        });
      });

      group("writeDouble/readDouble", () {
        test("zero", () {
          final result = roundTrip(
            (w) => w.writeDouble(0.0),
            (r) => r.readDouble(),
          );
          expect(result, equals(0.0));
        });

        test("positive value", () {
          final result = roundTrip(
            (w) => w.writeDouble(3.14159265359),
            (r) => r.readDouble(),
          );
          expect(result, closeTo(3.14159265359, 1e-10));
        });

        test("negative value", () {
          final result = roundTrip(
            (w) => w.writeDouble(-3.14159265359),
            (r) => r.readDouble(),
          );
          expect(result, closeTo(-3.14159265359, 1e-10));
        });

        test("very small value", () {
          final result = roundTrip(
            (w) => w.writeDouble(1e-300),
            (r) => r.readDouble(),
          );
          expect(result, equals(1e-300));
        });

        test("very large value", () {
          final result = roundTrip(
            (w) => w.writeDouble(1e300),
            (r) => r.readDouble(),
          );
          expect(result, equals(1e300));
        });

        test("positive infinity", () {
          final result = roundTrip(
            (w) => w.writeDouble(double.infinity),
            (r) => r.readDouble(),
          );
          expect(result, equals(double.infinity));
        });

        test("negative infinity", () {
          final result = roundTrip(
            (w) => w.writeDouble(double.negativeInfinity),
            (r) => r.readDouble(),
          );
          expect(result, equals(double.negativeInfinity));
        });

        test("NaN", () {
          final result = roundTrip(
            (w) => w.writeDouble(double.nan),
            (r) => r.readDouble(),
          );
          expect(result.isNaN, isTrue);
        });

        test("negative zero", () {
          final result = roundTrip(
            (w) => w.writeDouble(-0.0),
            (r) => r.readDouble(),
          );
          expect(result, equals(-0.0));
          expect(result.isNegative, isTrue);
        });
      });

      group("writeBool/readBool", () {
        test("true", () {
          final result = roundTrip(
            (w) => w.writeBool(true),
            (r) => r.readBool(),
          );
          expect(result, isTrue);
        });

        test("false", () {
          final result = roundTrip(
            (w) => w.writeBool(false),
            (r) => r.readBool(),
          );
          expect(result, isFalse);
        });

        test("multiple bools", () {
          final bytes = useBinaryWriter((w) {
            w.writeBool(true);
            w.writeBool(false);
            w.writeBool(true);
            w.writeBool(true);
            w.writeBool(false);
          });
          final results = useBinaryReader(bytes, (r) {
            return [r.readBool(), r.readBool(), r.readBool(), r.readBool(), r.readBool()];
          });
          expect(results, equals([true, false, true, true, false]));
        });
      });
    });

    group("String types", () {
      group("writeString/readString", () {
        test("empty string", () {
          final result = roundTrip(
            (w) => w.writeString(""),
            (r) => r.readString(),
          );
          expect(result, equals(""));
        });

        test("simple ASCII string", () {
          final result = roundTrip(
            (w) => w.writeString("Hello, World!"),
            (r) => r.readString(),
          );
          expect(result, equals("Hello, World!"));
        });

        test("unicode string", () {
          final result = roundTrip(
            (w) => w.writeString("こんにちは世界 🌍 Привет мир"),
            (r) => r.readString(),
          );
          expect(result, equals("こんにちは世界 🌍 Привет мир"));
        });

        test("string with special characters", () {
          final result = roundTrip(
            (w) => w.writeString("Line1\nLine2\tTabbed\r\nWindows"),
            (r) => r.readString(),
          );
          expect(result, equals("Line1\nLine2\tTabbed\r\nWindows"));
        });

        test("string without byte count", () {
          // Write without byte count prefix
          final bytes = useBinaryWriter((w) => w.writeString("test", writeByteCount: false));
          // Read with explicit byte count
          final result = useBinaryReader(bytes, (r) => r.readString(4));
          expect(result, equals("test"));
        });

        test("long string", () {
          final longString = "A" * 10000;
          final result = roundTrip(
            (w) => w.writeString(longString),
            (r) => r.readString(),
          );
          expect(result, equals(longString));
        });
      });

      group("writeOptionalString/readOptionalString", () {
        test("null value", () {
          final result = roundTrip(
            (w) => w.writeOptionalString(null),
            (r) => r.readOptionalString(),
          );
          expect(result, isNull);
        });

        test("non-null value", () {
          final result = roundTrip(
            (w) => w.writeOptionalString("Hello"),
            (r) => r.readOptionalString(),
          );
          expect(result, equals("Hello"));
        });

        test("empty string (not null)", () {
          final result = roundTrip(
            (w) => w.writeOptionalString(""),
            (r) => r.readOptionalString(),
          );
          expect(result, equals(""));
        });
      });
    });

    group("Byte list types", () {
      group("writeByteList/readByteList", () {
        test("empty list", () {
          final result = roundTrip(
            (w) => w.writeByteList(Uint8List(0)),
            (r) => r.readByteList(),
          );
          expect(result, equals(Uint8List(0)));
        });

        test("simple byte list", () {
          final input = Uint8List.fromList([1, 2, 3, 4, 5]);
          final result = roundTrip(
            (w) => w.writeByteList(input),
            (r) => r.readByteList(),
          );
          expect(result, equals(input));
        });

        test("byte list with all values 0-255", () {
          final input = Uint8List.fromList(List.generate(256, (i) => i));
          final result = roundTrip(
            (w) => w.writeByteList(input),
            (r) => r.readByteList(),
          );
          expect(result, equals(input));
        });

        test("large byte list", () {
          final input = Uint8List.fromList(List.generate(10000, (i) => i % 256));
          final result = roundTrip(
            (w) => w.writeByteList(input),
            (r) => r.readByteList(),
          );
          expect(result, equals(input));
        });

        test("byte list without length prefix", () {
          final input = Uint8List.fromList([10, 20, 30]);
          final bytes = useBinaryWriter((w) => w.writeByteList(input, writeLength: false));
          final result = useBinaryReader(bytes, (r) => r.readByteList(3));
          expect(result, equals(input));
        });
      });

      group("writeOptionalByteList/readOptionalByteList", () {
        test("null value", () {
          final result = roundTrip(
            (w) => w.writeOptionalByteList(null),
            (r) => r.readOptionalByteList(),
          );
          expect(result, isNull);
        });

        test("non-null value", () {
          final input = Uint8List.fromList([1, 2, 3]);
          final result = roundTrip(
            (w) => w.writeOptionalByteList(input),
            (r) => r.readOptionalByteList(),
          );
          expect(result, equals(input));
        });

        test("empty list (not null)", () {
          final input = Uint8List(0);
          final result = roundTrip(
            (w) => w.writeOptionalByteList(input),
            (r) => r.readOptionalByteList(),
          );
          expect(result, equals(input));
        });
      });

      group("writeBytesList/readBytesList", () {
        test("empty list", () {
          final result = roundTrip(
            (w) => w.writeBytesList([]),
            (r) => r.readBytesList(),
          );
          expect(result, isEmpty);
        });

        test("list with single element", () {
          final input = [
            Uint8List.fromList([1, 2, 3]),
          ];
          final result = roundTrip(
            (w) => w.writeBytesList(input),
            (r) => r.readBytesList(),
          );
          expect(result.length, equals(1));
          expect(result[0], equals(input[0]));
        });

        test("list with multiple elements", () {
          final input = [
            Uint8List.fromList([1, 2, 3]),
            Uint8List.fromList([4, 5]),
            Uint8List.fromList([6, 7, 8, 9]),
            Uint8List(0),
          ];
          final result = roundTrip(
            (w) => w.writeBytesList(input),
            (r) => r.readBytesList(),
          );
          expect(result.length, equals(input.length));
          for (var i = 0; i < input.length; i++) {
            expect(result[i], equals(input[i]));
          }
        });
      });

      group("writeOptionalBytesList/readOptionalBytesList", () {
        test("null value", () {
          final result = roundTrip(
            (w) => w.writeOptionalBytesList(null),
            (r) => r.readOptionalBytesList(),
          );
          expect(result, isNull);
        });

        test("non-null value", () {
          final input = [
            Uint8List.fromList([1, 2]),
            Uint8List.fromList([3, 4, 5]),
          ];
          final result = roundTrip(
            (w) => w.writeOptionalBytesList(input),
            (r) => r.readOptionalBytesList(),
          );
          expect(result, isNotNull);
          expect(result!.length, equals(input.length));
          for (var i = 0; i < input.length; i++) {
            expect(result[i], equals(input[i]));
          }
        });
      });
    });

    group("List types", () {
      group("writeIntList/readIntList", () {
        test("empty list", () {
          final result = roundTrip(
            (w) => w.writeIntList([]),
            (r) => r.readIntList(),
          );
          expect(result, isEmpty);
        });

        test("positive values", () {
          final input = [1, 2, 3, 100, 1000, 1000000];
          final result = roundTrip(
            (w) => w.writeIntList(input),
            (r) => r.readIntList(),
          );
          expect(result, equals(input));
        });

        test("negative values", () {
          final input = [-1, -2, -3, -100, -1000, -1000000];
          final result = roundTrip(
            (w) => w.writeIntList(input),
            (r) => r.readIntList(),
          );
          expect(result, equals(input));
        });

        test("mixed values", () {
          final input = [0, -1, 1, -9223372036854775808, 9223372036854775807];
          final result = roundTrip(
            (w) => w.writeIntList(input),
            (r) => r.readIntList(),
          );
          expect(result, equals(input));
        });

        test("without length prefix", () {
          final input = [10, 20, 30];
          final bytes = useBinaryWriter((w) => w.writeIntList(input, writeLength: false));
          final result = useBinaryReader(bytes, (r) => r.readIntList(3));
          expect(result, equals(input));
        });
      });

      group("writeDoubleList/readDoubleList", () {
        test("empty list", () {
          final result = roundTrip(
            (w) => w.writeDoubleList([]),
            (r) => r.readDoubleList(),
          );
          expect(result, isEmpty);
        });

        test("positive values", () {
          final input = [1.1, 2.2, 3.3, 3.14159];
          final result = roundTrip(
            (w) => w.writeDoubleList(input),
            (r) => r.readDoubleList(),
          );
          expect(result.length, equals(input.length));
          for (var i = 0; i < input.length; i++) {
            expect(result[i], closeTo(input[i], 1e-10));
          }
        });

        test("special values", () {
          final input = [0.0, -0.0, double.infinity, double.negativeInfinity, double.nan];
          final result = roundTrip(
            (w) => w.writeDoubleList(input),
            (r) => r.readDoubleList(),
          );
          expect(result[0], equals(0.0));
          expect(result[1].isNegative, isTrue);
          expect(result[2], equals(double.infinity));
          expect(result[3], equals(double.negativeInfinity));
          expect(result[4].isNaN, isTrue);
        });
      });

      group("writeBoolList/readBoolList", () {
        test("empty list", () {
          final result = roundTrip(
            (w) => w.writeBoolList([]),
            (r) => r.readBoolList(),
          );
          expect(result, isEmpty);
        });

        test("mixed values", () {
          final input = [true, false, true, true, false, false, true];
          final result = roundTrip(
            (w) => w.writeBoolList(input),
            (r) => r.readBoolList(),
          );
          expect(result, equals(input));
        });

        test("all true", () {
          final input = List.filled(100, true);
          final result = roundTrip(
            (w) => w.writeBoolList(input),
            (r) => r.readBoolList(),
          );
          expect(result, equals(input));
        });

        test("all false", () {
          final input = List.filled(100, false);
          final result = roundTrip(
            (w) => w.writeBoolList(input),
            (r) => r.readBoolList(),
          );
          expect(result, equals(input));
        });
      });

      group("writeStringList/readStringList", () {
        test("empty list", () {
          final result = roundTrip(
            (w) => w.writeStringList([]),
            (r) => r.readStringList(),
          );
          expect(result, isEmpty);
        });

        test("simple strings", () {
          final input = ["hello", "world", "test"];
          final result = roundTrip(
            (w) => w.writeStringList(input),
            (r) => r.readStringList(),
          );
          expect(result, equals(input));
        });

        test("unicode strings", () {
          final input = ["hello", "世界", "🚀", "Привет"];
          final result = roundTrip(
            (w) => w.writeStringList(input),
            (r) => r.readStringList(),
          );
          expect(result, equals(input));
        });

        test("empty strings in list", () {
          final input = ["", "test", "", ""];
          final result = roundTrip(
            (w) => w.writeStringList(input),
            (r) => r.readStringList(),
          );
          expect(result, equals(input));
        });
      });

      group("writeOptionalStringList/readOptionalStringList", () {
        test("null value", () {
          final result = roundTrip(
            (w) => w.writeOptionalStringList(null),
            (r) => r.readOptionalStringList(),
          );
          expect(result, isNull);
        });

        test("non-null value", () {
          final input = ["hello", "world"];
          final result = roundTrip(
            (w) => w.writeOptionalStringList(input),
            (r) => r.readOptionalStringList(),
          );
          expect(result, equals(input));
        });

        test("empty list (not null)", () {
          final result = roundTrip(
            (w) => w.writeOptionalStringList([]),
            (r) => r.readOptionalStringList(),
          );
          expect(result, isNotNull);
          expect(result, isEmpty);
        });
      });

      group("writeList/readList (generic)", () {
        test("empty list", () {
          final result = roundTrip(
            (w) => w.writeList([]),
            (r) => r.readList(),
          );
          expect(result, isEmpty);
        });

        test("mixed types list", () {
          final input = [42, 3.14, true, "hello"];
          final result = roundTrip(
            (w) => w.writeList(input),
            (r) => r.readList(),
          );
          // Int is written as double, so comparison needs adjustment
          expect(result[0], equals(42));
          expect(result[1], closeTo(3.14, 1e-10));
          expect(result[2], equals(true));
          expect(result[3], equals("hello"));
        });

        test("nested list", () {
          final input = [
            1,
            [2, 3],
            "test",
          ];
          final result = roundTrip(
            (w) => w.writeList(input),
            (r) => r.readList(),
          );
          expect(result[0], equals(1));
          expect(result[1], isA<List>());
          expect((result[1] as List)[0], equals(2));
          expect((result[1] as List)[1], equals(3));
          expect(result[2], equals("test"));
        });

        test("list with nulls", () {
          final input = [1, null, "test", null];
          final result = roundTrip(
            (w) => w.writeList(input),
            (r) => r.readList(),
          );
          expect(result[0], equals(1));
          expect(result[1], isNull);
          expect(result[2], equals("test"));
          expect(result[3], isNull);
        });
      });
    });

    group("Map types", () {
      group("writeMap/readMap", () {
        test("empty map", () {
          final result = roundTrip(
            (w) => w.writeMap({}),
            (r) => r.readMap(),
          );
          expect(result, isEmpty);
        });

        test("string keys", () {
          final input = {"a": 1, "b": 2, "c": 3};
          final result = roundTrip(
            (w) => w.writeMap(input),
            (r) => r.readMap(),
          );
          expect(result["a"], equals(1));
          expect(result["b"], equals(2));
          expect(result["c"], equals(3));
        });

        test("int keys", () {
          final input = {1: "one", 2: "two", 3: "three"};
          final result = roundTrip(
            (w) => w.writeMap(input),
            (r) => r.readMap(),
          );
          expect(result[1], equals("one"));
          expect(result[2], equals("two"));
          expect(result[3], equals("three"));
        });

        test("mixed value types", () {
          final input = {
            "int": 42,
            "double": 3.14,
            "bool": true,
            "string": "hello",
            "null": null,
          };
          final result = roundTrip(
            (w) => w.writeMap(input),
            (r) => r.readMap(),
          );
          expect(result["int"], equals(42));
          expect(result["double"], closeTo(3.14, 1e-10));
          expect(result["bool"], equals(true));
          expect(result["string"], equals("hello"));
          expect(result["null"], isNull);
        });

        test("nested map", () {
          final input = {
            "outer": {
              "inner": "value",
            },
          };
          final result = roundTrip(
            (w) => w.writeMap(input),
            (r) => r.readMap(),
          );
          expect(result["outer"], isA<Map>());
          expect((result["outer"] as Map)["inner"], equals("value"));
        });
      });
    });

    group("Key encoding", () {
      group("writeKey/readKey", () {
        test("integer key", () {
          final result = roundTrip(
            (w) => w.writeKey(42),
            (r) => r.readKey(),
          );
          expect(result, equals(42));
        });

        test("string key", () {
          final result = roundTrip(
            (w) => w.writeKey("myKey"),
            (r) => r.readKey(),
          );
          expect(result, equals("myKey"));
        });

        test("zero integer key", () {
          final result = roundTrip(
            (w) => w.writeKey(0),
            (r) => r.readKey(),
          );
          expect(result, equals(0));
        });

        test("empty string key", () {
          final result = roundTrip(
            (w) => w.writeKey(""),
            (r) => r.readKey(),
          );
          expect(result, equals(""));
        });

        test("max uint32 key", () {
          final result = roundTrip(
            (w) => w.writeKey(0xFFFFFFFF),
            (r) => r.readKey(),
          );
          expect(result, equals(0xFFFFFFFF));
        });
      });
    });

    group("Generic write/read", () {
      group("write<T>/read", () {
        test("null", () {
          final result = roundTrip(
            (w) => w.write(null),
            (r) => r.read(),
          );
          expect(result, isNull);
        });

        test("int", () {
          final result = roundTrip(
            (w) => w.write(42),
            (r) => r.read(),
          );
          expect(result, equals(42));
        });

        test("double", () {
          final result = roundTrip(
            (w) => w.write(3.14),
            (r) => r.read(),
          );
          expect(result, closeTo(3.14, 1e-10));
        });

        test("bool", () {
          final result = roundTrip(
            (w) => w.write(true),
            (r) => r.read(),
          );
          expect(result, equals(true));
        });

        test("string", () {
          final result = roundTrip(
            (w) => w.write("hello"),
            (r) => r.read(),
          );
          expect(result, equals("hello"));
        });

        test("Uint8List", () {
          final input = Uint8List.fromList([1, 2, 3]);
          final result = roundTrip(
            (w) => w.write(input),
            (r) => r.read(),
          );
          expect(result, equals(input));
        });

        test("List<int>", () {
          final input = <int>[1, 2, 3];
          final result = roundTrip(
            (w) => w.write(input),
            (r) => r.read(),
          );
          // Note: read returns the list with original values
          expect(result, equals(input));
        });

        test("List<double>", () {
          final input = <double>[1.1, 2.2, 3.3];
          final result = roundTrip(
            (w) => w.write(input),
            (r) => r.read(),
          );
          expect(result, isA<List>());
          for (var i = 0; i < input.length; i++) {
            expect((result as List)[i], closeTo(input[i], 1e-10));
          }
        });

        test("List<bool>", () {
          final input = <bool>[true, false, true];
          final result = roundTrip(
            (w) => w.write(input),
            (r) => r.read(),
          );
          expect(result, equals(input));
        });

        test("List<String>", () {
          final input = <String>["a", "b", "c"];
          final result = roundTrip(
            (w) => w.write(input),
            (r) => r.read(),
          );
          expect(result, equals(input));
        });

        test("List with nulls uses generic list type", () {
          final input = [1, null, "test"];
          final result = roundTrip(
            (w) => w.write(input),
            (r) => r.read(),
          );
          expect(result, isA<List>());
          expect((result as List)[0], equals(1));
          expect(result[1], isNull);
          expect(result[2], equals("test"));
        });

        test("Map", () {
          final input = {"key": "value", "num": 42};
          final result = roundTrip(
            (w) => w.write(input),
            (r) => r.read(),
          );
          expect(result, isA<Map>());
          expect((result as Map)["key"], equals("value"));
          expect(result["num"], equals(42));
        });
      });
    });

    group("Optional byte value", () {
      group("writeOptionalByte/readOptionalByte", () {
        test("null value", () {
          final result = roundTrip(
            (w) => w.writeOptionalByte(null),
            (r) => r.readOptionalByte(),
          );
          expect(result, isNull);
        });

        test("zero value", () {
          final result = roundTrip(
            (w) => w.writeOptionalByte(0),
            (r) => r.readOptionalByte(),
          );
          expect(result, equals(0));
        });

        test("positive value", () {
          final result = roundTrip(
            (w) => w.writeOptionalByte(127),
            (r) => r.readOptionalByte(),
          );
          expect(result, equals(127));
        });
      });
    });

    group("Reader utilities", () {
      test("availableBytes tracks remaining bytes", () {
        final bytes = useBinaryWriter((w) {
          w.writeByte(1);
          w.writeByte(2);
          w.writeByte(3);
        });

        useBinaryReader(bytes, (r) {
          expect(r.availableBytes, equals(3));
          r.readByte();
          expect(r.availableBytes, equals(2));
          r.readByte();
          expect(r.availableBytes, equals(1));
          r.readByte();
          expect(r.availableBytes, equals(0));
        });
      });

      test("usedBytes tracks consumed bytes", () {
        final bytes = useBinaryWriter((w) {
          w.writeByte(1);
          w.writeByte(2);
          w.writeByte(3);
        });

        useBinaryReader(bytes, (r) {
          expect(r.usedBytes, equals(0));
          r.readByte();
          expect(r.usedBytes, equals(1));
          r.readByte();
          expect(r.usedBytes, equals(2));
          r.readByte();
          expect(r.usedBytes, equals(3));
        });
      });

      test("skip advances offset", () {
        final bytes = useBinaryWriter((w) {
          w.writeByte(1);
          w.writeByte(2);
          w.writeByte(3);
          w.writeByte(4);
        });

        final result = useBinaryReader(bytes, (r) {
          r.skip(2);
          return r.readByte();
        });
        expect(result, equals(3));
      });

      test("viewBytes returns sublist view", () {
        final input = Uint8List.fromList([1, 2, 3, 4, 5]);
        final bytes = useBinaryWriter((w) => w.writeByteList(input, writeLength: false));

        final result = useBinaryReader(bytes, (r) => r.viewBytes(3));
        expect(result, equals(Uint8List.fromList([1, 2, 3])));
      });

      test("peekBytes returns view without advancing", () {
        final bytes = useBinaryWriter((w) {
          w.writeUint32(0x12345678);
        });

        useBinaryReader(bytes, (r) {
          final peeked = r.peekBytes(4);
          expect(peeked.lengthInBytes, equals(4)); // Verify we got the right bytes
          expect(r.usedBytes, equals(0)); // Should not advance
          final read = r.readUint32();
          expect(read, equals(0x12345678));
        });
      });
    });

    group("Error conditions", () {
      test("reading beyond buffer throws BinaryRangeErrorException", () {
        final bytes = useBinaryWriter((w) => w.writeByte(1));

        expect(
          () => useBinaryReader(bytes, (r) {
            r.readByte();
            r.readByte(); // Should throw
          }),
          throwsA(isA<BinaryRangeErrorException>()),
        );
      });

      test("skip beyond buffer throws BinaryRangeErrorException", () {
        final bytes = useBinaryWriter((w) => w.writeByte(1));

        expect(
          () => useBinaryReader(bytes, (r) => r.skip(10)),
          throwsA(isA<BinaryRangeErrorException>()),
        );
      });

      test("reading optional with wrong type throws UnexpectedBinaryTypeException", () {
        final bytes = useBinaryWriter((w) {
          w.writeByte(FrameValueType.intT.binaryValue);
          w.writeInt(42);
        });

        expect(
          () => useBinaryReader(bytes, (r) => r.readOptionalString()),
          throwsA(isA<UnexpectedBinaryTypeException>()),
        );
      });

      test("reading unknown type throws UnknownBinaryTypeException", () {
        final bytes = useBinaryWriter((w) => w.writeByte(255)); // Invalid type

        expect(
          () => useBinaryReader(bytes, (r) => r.read()),
          throwsA(isA<UnknownBinaryTypeException>()),
        );
      });

      test("reading key with invalid type throws BinaryCorruptedException", () {
        final bytes = useBinaryWriter((w) => w.writeByte(99)); // Invalid key type

        expect(
          () => useBinaryReader(bytes, (r) => r.readKey()),
          throwsA(isA<BinaryCorruptedException>()),
        );
      });
    });

    group("Buffer growth", () {
      test("writing large data triggers buffer growth", () {
        // Default buffer is 4096, write more than that
        final largeList = List<int>.generate(1000, (i) => i);
        final result = roundTrip(
          (w) => w.writeIntList(largeList),
          (r) => r.readIntList(),
        );
        expect(result, equals(largeList));
      });

      test("multiple large writes work correctly", () {
        final string1 = "A" * 5000;
        final string2 = "B" * 5000;
        final string3 = "C" * 5000;

        final bytes = useBinaryWriter((w) {
          w.writeString(string1);
          w.writeString(string2);
          w.writeString(string3);
        });

        final results = useBinaryReader(bytes, (r) {
          return [r.readString(), r.readString(), r.readString()];
        });

        expect(results[0], equals(string1));
        expect(results[1], equals(string2));
        expect(results[2], equals(string3));
      });
    });

    group("Complex round-trips", () {
      test("multiple types in sequence", () {
        final bytes = useBinaryWriter((w) {
          w.writeByte(42);
          w.writeUint32(123456);
          w.writeDouble(3.14159);
          w.writeBool(true);
          w.writeString("Hello");
          w.writeByteList(Uint8List.fromList([1, 2, 3]));
          w.writeOptionalString(null);
          w.writeOptionalString("World");
        });

        useBinaryReader(bytes, (r) {
          expect(r.readByte(), equals(42));
          expect(r.readUint32(), equals(123456));
          expect(r.readDouble(), closeTo(3.14159, 1e-5));
          expect(r.readBool(), isTrue);
          expect(r.readString(), equals("Hello"));
          expect(r.readByteList(), equals(Uint8List.fromList([1, 2, 3])));
          expect(r.readOptionalString(), isNull);
          expect(r.readOptionalString(), equals("World"));
        });
      });

      test("nested structures", () {
        final input = {
          "users": [
            {"name": "Alice", "age": 30},
            {"name": "Bob", "age": 25},
          ],
          "metadata": {
            "version": 1,
            "active": true,
          },
        };

        final result = roundTrip(
          (w) => w.write(input),
          (r) => r.read(),
        );

        expect(result, isA<Map>());
        final resultMap = result as Map;
        expect(resultMap["users"], isA<List>());
        final users = resultMap["users"] as List;
        expect(users.length, equals(2));
        expect((users[0] as Map)["name"], equals("Alice"));
        expect((users[0] as Map)["age"], equals(30));
        expect((users[1] as Map)["name"], equals("Bob"));
        expect((users[1] as Map)["age"], equals(25));
        expect((resultMap["metadata"] as Map)["version"], equals(1));
        expect((resultMap["metadata"] as Map)["active"], equals(true));
      });

      test("all optional types in sequence", () {
        final bytes = useBinaryWriter((w) {
          w.writeOptionalByte(null);
          w.writeOptionalByte(42);
          w.writeOptionalString(null);
          w.writeOptionalString("test");
          w.writeOptionalByteList(null);
          w.writeOptionalByteList(Uint8List.fromList([1, 2]));
          w.writeOptionalStringList(null);
          w.writeOptionalStringList(["a", "b"]);
          w.writeOptionalBytesList(null);
          w.writeOptionalBytesList([
            Uint8List.fromList([1]),
            Uint8List.fromList([2]),
          ]);
        });

        useBinaryReader(bytes, (r) {
          expect(r.readOptionalByte(), isNull);
          expect(r.readOptionalByte(), equals(42));
          expect(r.readOptionalString(), isNull);
          expect(r.readOptionalString(), equals("test"));
          expect(r.readOptionalByteList(), isNull);
          expect(r.readOptionalByteList(), equals(Uint8List.fromList([1, 2])));
          expect(r.readOptionalStringList(), isNull);
          expect(r.readOptionalStringList(), equals(["a", "b"]));
          expect(r.readOptionalBytesList(), isNull);
          final bytesList = r.readOptionalBytesList();
          expect(bytesList, isNotNull);
          expect(bytesList!.length, equals(2));
          expect(bytesList[0], equals(Uint8List.fromList([1])));
          expect(bytesList[1], equals(Uint8List.fromList([2])));
        });
      });
    });

    group("BinaryReader with bufferLength", () {
      test("respects bufferLength limit", () {
        final fullData = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8]);
        final reader = BinaryReader(fullData, 4);

        expect(reader.availableBytes, equals(4));
        expect(reader.readByte(), equals(1));
        expect(reader.readByte(), equals(2));
        expect(reader.readByte(), equals(3));
        expect(reader.readByte(), equals(4));
        expect(reader.availableBytes, equals(0));
      });
    });
  });
}
