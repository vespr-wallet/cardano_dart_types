// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plutus_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlutusData {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlutusData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PlutusData()';
  }
}

/// @nodoc
class $PlutusDataCopyWith<$Res> {
  $PlutusDataCopyWith(PlutusData _, $Res Function(PlutusData) __);
}

/// @nodoc

class PlutusData_BigInt extends PlutusData {
  PlutusData_BigInt(this.value) : super._();

  final BigInt value;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlutusData_BigIntCopyWith<PlutusData_BigInt> get copyWith =>
      _$PlutusData_BigIntCopyWithImpl<PlutusData_BigInt>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlutusData_BigInt &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'PlutusData.bigInt(value: $value)';
  }
}

/// @nodoc
abstract mixin class $PlutusData_BigIntCopyWith<$Res>
    implements $PlutusDataCopyWith<$Res> {
  factory $PlutusData_BigIntCopyWith(
          PlutusData_BigInt value, $Res Function(PlutusData_BigInt) _then) =
      _$PlutusData_BigIntCopyWithImpl;
  @useResult
  $Res call({BigInt value});
}

/// @nodoc
class _$PlutusData_BigIntCopyWithImpl<$Res>
    implements $PlutusData_BigIntCopyWith<$Res> {
  _$PlutusData_BigIntCopyWithImpl(this._self, this._then);

  final PlutusData_BigInt _self;
  final $Res Function(PlutusData_BigInt) _then;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(PlutusData_BigInt(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class PlutusData_DefiniteBytes extends PlutusData {
  PlutusData_DefiniteBytes(final List<int> bytes, final List<int> tags)
      : _bytes = bytes,
        _tags = tags,
        super._();

  final List<int> _bytes;
  List<int> get bytes {
    if (_bytes is EqualUnmodifiableListView) return _bytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytes);
  }

  final List<int> _tags;
  List<int> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlutusData_DefiniteBytesCopyWith<PlutusData_DefiniteBytes> get copyWith =>
      _$PlutusData_DefiniteBytesCopyWithImpl<PlutusData_DefiniteBytes>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlutusData_DefiniteBytes &&
            const DeepCollectionEquality().equals(other._bytes, _bytes) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bytes),
      const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'PlutusData.definiteBytes(bytes: $bytes, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $PlutusData_DefiniteBytesCopyWith<$Res>
    implements $PlutusDataCopyWith<$Res> {
  factory $PlutusData_DefiniteBytesCopyWith(PlutusData_DefiniteBytes value,
          $Res Function(PlutusData_DefiniteBytes) _then) =
      _$PlutusData_DefiniteBytesCopyWithImpl;
  @useResult
  $Res call({List<int> bytes, List<int> tags});
}

/// @nodoc
class _$PlutusData_DefiniteBytesCopyWithImpl<$Res>
    implements $PlutusData_DefiniteBytesCopyWith<$Res> {
  _$PlutusData_DefiniteBytesCopyWithImpl(this._self, this._then);

  final PlutusData_DefiniteBytes _self;
  final $Res Function(PlutusData_DefiniteBytes) _then;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytes = null,
    Object? tags = null,
  }) {
    return _then(PlutusData_DefiniteBytes(
      null == bytes
          ? _self._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class PlutusData_IndefiniteBytes extends PlutusData {
  PlutusData_IndefiniteBytes(
      final List<List<int>> bytesList, final List<int> tags)
      : _bytesList = bytesList,
        _tags = tags,
        super._();

  final List<List<int>> _bytesList;
  List<List<int>> get bytesList {
    if (_bytesList is EqualUnmodifiableListView) return _bytesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytesList);
  }

  final List<int> _tags;
  List<int> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlutusData_IndefiniteBytesCopyWith<PlutusData_IndefiniteBytes>
      get copyWith =>
          _$PlutusData_IndefiniteBytesCopyWithImpl<PlutusData_IndefiniteBytes>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlutusData_IndefiniteBytes &&
            const DeepCollectionEquality()
                .equals(other._bytesList, _bytesList) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bytesList),
      const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'PlutusData.indefiniteBytes(bytesList: $bytesList, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $PlutusData_IndefiniteBytesCopyWith<$Res>
    implements $PlutusDataCopyWith<$Res> {
  factory $PlutusData_IndefiniteBytesCopyWith(PlutusData_IndefiniteBytes value,
          $Res Function(PlutusData_IndefiniteBytes) _then) =
      _$PlutusData_IndefiniteBytesCopyWithImpl;
  @useResult
  $Res call({List<List<int>> bytesList, List<int> tags});
}

/// @nodoc
class _$PlutusData_IndefiniteBytesCopyWithImpl<$Res>
    implements $PlutusData_IndefiniteBytesCopyWith<$Res> {
  _$PlutusData_IndefiniteBytesCopyWithImpl(this._self, this._then);

  final PlutusData_IndefiniteBytes _self;
  final $Res Function(PlutusData_IndefiniteBytes) _then;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bytesList = null,
    Object? tags = null,
  }) {
    return _then(PlutusData_IndefiniteBytes(
      null == bytesList
          ? _self._bytesList
          : bytesList // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class PlutusData_Constr extends PlutusData {
  PlutusData_Constr(
      this.alternative, this.data, final List<int> tags, this.cborLengthType)
      : _tags = tags,
        super._();

  final int alternative;
  final PlutusData_List data;
  final List<int> _tags;
  List<int> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final CborLengthType cborLengthType;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlutusData_ConstrCopyWith<PlutusData_Constr> get copyWith =>
      _$PlutusData_ConstrCopyWithImpl<PlutusData_Constr>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlutusData_Constr &&
            (identical(other.alternative, alternative) ||
                other.alternative == alternative) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.cborLengthType, cborLengthType) ||
                other.cborLengthType == cborLengthType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      alternative,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(_tags),
      cborLengthType);

  @override
  String toString() {
    return 'PlutusData.constr(alternative: $alternative, data: $data, tags: $tags, cborLengthType: $cborLengthType)';
  }
}

/// @nodoc
abstract mixin class $PlutusData_ConstrCopyWith<$Res>
    implements $PlutusDataCopyWith<$Res> {
  factory $PlutusData_ConstrCopyWith(
          PlutusData_Constr value, $Res Function(PlutusData_Constr) _then) =
      _$PlutusData_ConstrCopyWithImpl;
  @useResult
  $Res call(
      {int alternative,
      PlutusData_List data,
      List<int> tags,
      CborLengthType cborLengthType});
}

/// @nodoc
class _$PlutusData_ConstrCopyWithImpl<$Res>
    implements $PlutusData_ConstrCopyWith<$Res> {
  _$PlutusData_ConstrCopyWithImpl(this._self, this._then);

  final PlutusData_Constr _self;
  final $Res Function(PlutusData_Constr) _then;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alternative = null,
    Object? data = freezed,
    Object? tags = null,
    Object? cborLengthType = null,
  }) {
    return _then(PlutusData_Constr(
      null == alternative
          ? _self.alternative
          : alternative // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlutusData_List,
      null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == cborLengthType
          ? _self.cborLengthType
          : cborLengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }
}

/// @nodoc

class PlutusData_List extends PlutusData {
  PlutusData_List(
      final List<PlutusData> data, final List<int> tags, this.cborLengthType)
      : _data = data,
        _tags = tags,
        super._();

  final List<PlutusData> _data;
  List<PlutusData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<int> _tags;
  List<int> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final CborLengthType cborLengthType;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlutusData_ListCopyWith<PlutusData_List> get copyWith =>
      _$PlutusData_ListCopyWithImpl<PlutusData_List>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlutusData_List &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.cborLengthType, cborLengthType) ||
                other.cborLengthType == cborLengthType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_tags),
      cborLengthType);

  @override
  String toString() {
    return 'PlutusData.list(data: $data, tags: $tags, cborLengthType: $cborLengthType)';
  }
}

/// @nodoc
abstract mixin class $PlutusData_ListCopyWith<$Res>
    implements $PlutusDataCopyWith<$Res> {
  factory $PlutusData_ListCopyWith(
          PlutusData_List value, $Res Function(PlutusData_List) _then) =
      _$PlutusData_ListCopyWithImpl;
  @useResult
  $Res call(
      {List<PlutusData> data, List<int> tags, CborLengthType cborLengthType});
}

/// @nodoc
class _$PlutusData_ListCopyWithImpl<$Res>
    implements $PlutusData_ListCopyWith<$Res> {
  _$PlutusData_ListCopyWithImpl(this._self, this._then);

  final PlutusData_List _self;
  final $Res Function(PlutusData_List) _then;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? tags = null,
    Object? cborLengthType = null,
  }) {
    return _then(PlutusData_List(
      null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PlutusData>,
      null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == cborLengthType
          ? _self.cborLengthType
          : cborLengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }
}

/// @nodoc

class PlutusData_Map extends PlutusData {
  PlutusData_Map(final Map<PlutusData, PlutusData> data, final List<int> tags,
      this.cborLengthType)
      : _data = data,
        _tags = tags,
        super._();

  final Map<PlutusData, PlutusData> _data;
  Map<PlutusData, PlutusData> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  final List<int> _tags;
  List<int> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final CborLengthType cborLengthType;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlutusData_MapCopyWith<PlutusData_Map> get copyWith =>
      _$PlutusData_MapCopyWithImpl<PlutusData_Map>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlutusData_Map &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.cborLengthType, cborLengthType) ||
                other.cborLengthType == cborLengthType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_tags),
      cborLengthType);

  @override
  String toString() {
    return 'PlutusData.map(data: $data, tags: $tags, cborLengthType: $cborLengthType)';
  }
}

/// @nodoc
abstract mixin class $PlutusData_MapCopyWith<$Res>
    implements $PlutusDataCopyWith<$Res> {
  factory $PlutusData_MapCopyWith(
          PlutusData_Map value, $Res Function(PlutusData_Map) _then) =
      _$PlutusData_MapCopyWithImpl;
  @useResult
  $Res call(
      {Map<PlutusData, PlutusData> data,
      List<int> tags,
      CborLengthType cborLengthType});
}

/// @nodoc
class _$PlutusData_MapCopyWithImpl<$Res>
    implements $PlutusData_MapCopyWith<$Res> {
  _$PlutusData_MapCopyWithImpl(this._self, this._then);

  final PlutusData_Map _self;
  final $Res Function(PlutusData_Map) _then;

  /// Create a copy of PlutusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? tags = null,
    Object? cborLengthType = null,
  }) {
    return _then(PlutusData_Map(
      null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<PlutusData, PlutusData>,
      null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == cborLengthType
          ? _self.cborLengthType
          : cborLengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
    ));
  }
}

// dart format on
