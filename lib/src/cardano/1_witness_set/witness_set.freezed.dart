// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListWithCborType<T> {
  List<T> get items;
  CborLengthType get cborLengthType;
  List<int>? get tags;

  /// Create a copy of ListWithCborType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<T, ListWithCborType<T>> get copyWith =>
      _$ListWithCborTypeCopyWithImpl<T, ListWithCborType<T>>(
          this as ListWithCborType<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListWithCborType<T> &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.cborLengthType, cborLengthType) ||
                other.cborLengthType == cborLengthType) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      cborLengthType,
      const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'ListWithCborType<$T>(items: $items, cborLengthType: $cborLengthType, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $ListWithCborTypeCopyWith<T, $Res> {
  factory $ListWithCborTypeCopyWith(
          ListWithCborType<T> value, $Res Function(ListWithCborType<T>) _then) =
      _$ListWithCborTypeCopyWithImpl;
  @useResult
  $Res call({List<T> items, CborLengthType cborLengthType, List<int>? tags});
}

/// @nodoc
class _$ListWithCborTypeCopyWithImpl<T, $Res>
    implements $ListWithCborTypeCopyWith<T, $Res> {
  _$ListWithCborTypeCopyWithImpl(this._self, this._then);

  final ListWithCborType<T> _self;
  final $Res Function(ListWithCborType<T>) _then;

  /// Create a copy of ListWithCborType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? cborLengthType = null,
    Object? tags = freezed,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      cborLengthType: null == cborLengthType
          ? _self.cborLengthType
          : cborLengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _ListWithCborType<T> extends ListWithCborType<T> {
  const _ListWithCborType(
      final List<T> items, this.cborLengthType, final List<int>? tags)
      : _items = items,
        _tags = tags,
        super._();

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final CborLengthType cborLengthType;
  final List<int>? _tags;
  @override
  List<int>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ListWithCborType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListWithCborTypeCopyWith<T, _ListWithCborType<T>> get copyWith =>
      __$ListWithCborTypeCopyWithImpl<T, _ListWithCborType<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListWithCborType<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.cborLengthType, cborLengthType) ||
                other.cborLengthType == cborLengthType) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      cborLengthType,
      const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'ListWithCborType<$T>(items: $items, cborLengthType: $cborLengthType, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$ListWithCborTypeCopyWith<T, $Res>
    implements $ListWithCborTypeCopyWith<T, $Res> {
  factory _$ListWithCborTypeCopyWith(_ListWithCborType<T> value,
          $Res Function(_ListWithCborType<T>) _then) =
      __$ListWithCborTypeCopyWithImpl;
  @override
  @useResult
  $Res call({List<T> items, CborLengthType cborLengthType, List<int>? tags});
}

/// @nodoc
class __$ListWithCborTypeCopyWithImpl<T, $Res>
    implements _$ListWithCborTypeCopyWith<T, $Res> {
  __$ListWithCborTypeCopyWithImpl(this._self, this._then);

  final _ListWithCborType<T> _self;
  final $Res Function(_ListWithCborType<T>) _then;

  /// Create a copy of ListWithCborType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? cborLengthType = null,
    Object? tags = freezed,
  }) {
    return _then(_ListWithCborType<T>(
      null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      null == cborLengthType
          ? _self.cborLengthType
          : cborLengthType // ignore: cast_nullable_to_non_nullable
              as CborLengthType,
      freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
mixin _$WitnessSet {
  ListWithCborType<WitnessVKey>? get ivkeyWitnesses;
  ListWithCborType<NativeScript>? get inativeScripts;
  ListWithCborType<WitnessBootstrap>? get ibootstrap;
  ListWithCborType<PlutusScriptV1>? get iplutusScriptV1;
  ListWithCborType<PlutusData>? get iplutusData;
  ListWithCborType<Redeemer>? get iredeemer;
  ListWithCborType<PlutusScriptV2>? get iplutusScriptV2;
  ListWithCborType<PlutusScriptV3>? get iplutusScriptV3;
  List<int>? get iCborTags;

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WitnessSetCopyWith<WitnessSet> get copyWith =>
      _$WitnessSetCopyWithImpl<WitnessSet>(this as WitnessSet, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WitnessSet &&
            (identical(other.ivkeyWitnesses, ivkeyWitnesses) ||
                other.ivkeyWitnesses == ivkeyWitnesses) &&
            (identical(other.inativeScripts, inativeScripts) ||
                other.inativeScripts == inativeScripts) &&
            (identical(other.ibootstrap, ibootstrap) ||
                other.ibootstrap == ibootstrap) &&
            (identical(other.iplutusScriptV1, iplutusScriptV1) ||
                other.iplutusScriptV1 == iplutusScriptV1) &&
            (identical(other.iplutusData, iplutusData) ||
                other.iplutusData == iplutusData) &&
            (identical(other.iredeemer, iredeemer) ||
                other.iredeemer == iredeemer) &&
            (identical(other.iplutusScriptV2, iplutusScriptV2) ||
                other.iplutusScriptV2 == iplutusScriptV2) &&
            (identical(other.iplutusScriptV3, iplutusScriptV3) ||
                other.iplutusScriptV3 == iplutusScriptV3) &&
            const DeepCollectionEquality().equals(other.iCborTags, iCborTags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ivkeyWitnesses,
      inativeScripts,
      ibootstrap,
      iplutusScriptV1,
      iplutusData,
      iredeemer,
      iplutusScriptV2,
      iplutusScriptV3,
      const DeepCollectionEquality().hash(iCborTags));

  @override
  String toString() {
    return 'WitnessSet(ivkeyWitnesses: $ivkeyWitnesses, inativeScripts: $inativeScripts, ibootstrap: $ibootstrap, iplutusScriptV1: $iplutusScriptV1, iplutusData: $iplutusData, iredeemer: $iredeemer, iplutusScriptV2: $iplutusScriptV2, iplutusScriptV3: $iplutusScriptV3, iCborTags: $iCborTags)';
  }
}

/// @nodoc
abstract mixin class $WitnessSetCopyWith<$Res> {
  factory $WitnessSetCopyWith(
          WitnessSet value, $Res Function(WitnessSet) _then) =
      _$WitnessSetCopyWithImpl;
  @useResult
  $Res call(
      {ListWithCborType<WitnessVKey>? ivkeyWitnesses,
      ListWithCborType<NativeScript>? inativeScripts,
      ListWithCborType<WitnessBootstrap>? ibootstrap,
      ListWithCborType<PlutusScriptV1>? iplutusScriptV1,
      ListWithCborType<PlutusData>? iplutusData,
      ListWithCborType<Redeemer>? iredeemer,
      ListWithCborType<PlutusScriptV2>? iplutusScriptV2,
      ListWithCborType<PlutusScriptV3>? iplutusScriptV3,
      List<int>? iCborTags});

  $ListWithCborTypeCopyWith<WitnessVKey, $Res>? get ivkeyWitnesses;
  $ListWithCborTypeCopyWith<NativeScript, $Res>? get inativeScripts;
  $ListWithCborTypeCopyWith<WitnessBootstrap, $Res>? get ibootstrap;
  $ListWithCborTypeCopyWith<PlutusScriptV1, $Res>? get iplutusScriptV1;
  $ListWithCborTypeCopyWith<PlutusData, $Res>? get iplutusData;
  $ListWithCborTypeCopyWith<Redeemer, $Res>? get iredeemer;
  $ListWithCborTypeCopyWith<PlutusScriptV2, $Res>? get iplutusScriptV2;
  $ListWithCborTypeCopyWith<PlutusScriptV3, $Res>? get iplutusScriptV3;
}

/// @nodoc
class _$WitnessSetCopyWithImpl<$Res> implements $WitnessSetCopyWith<$Res> {
  _$WitnessSetCopyWithImpl(this._self, this._then);

  final WitnessSet _self;
  final $Res Function(WitnessSet) _then;

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ivkeyWitnesses = freezed,
    Object? inativeScripts = freezed,
    Object? ibootstrap = freezed,
    Object? iplutusScriptV1 = freezed,
    Object? iplutusData = freezed,
    Object? iredeemer = freezed,
    Object? iplutusScriptV2 = freezed,
    Object? iplutusScriptV3 = freezed,
    Object? iCborTags = freezed,
  }) {
    return _then(_self.copyWith(
      ivkeyWitnesses: freezed == ivkeyWitnesses
          ? _self.ivkeyWitnesses
          : ivkeyWitnesses // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<WitnessVKey>?,
      inativeScripts: freezed == inativeScripts
          ? _self.inativeScripts
          : inativeScripts // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<NativeScript>?,
      ibootstrap: freezed == ibootstrap
          ? _self.ibootstrap
          : ibootstrap // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<WitnessBootstrap>?,
      iplutusScriptV1: freezed == iplutusScriptV1
          ? _self.iplutusScriptV1
          : iplutusScriptV1 // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<PlutusScriptV1>?,
      iplutusData: freezed == iplutusData
          ? _self.iplutusData
          : iplutusData // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<PlutusData>?,
      iredeemer: freezed == iredeemer
          ? _self.iredeemer
          : iredeemer // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<Redeemer>?,
      iplutusScriptV2: freezed == iplutusScriptV2
          ? _self.iplutusScriptV2
          : iplutusScriptV2 // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<PlutusScriptV2>?,
      iplutusScriptV3: freezed == iplutusScriptV3
          ? _self.iplutusScriptV3
          : iplutusScriptV3 // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<PlutusScriptV3>?,
      iCborTags: freezed == iCborTags
          ? _self.iCborTags
          : iCborTags // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<WitnessVKey, $Res>? get ivkeyWitnesses {
    if (_self.ivkeyWitnesses == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<WitnessVKey, $Res>(_self.ivkeyWitnesses!,
        (value) {
      return _then(_self.copyWith(ivkeyWitnesses: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<NativeScript, $Res>? get inativeScripts {
    if (_self.inativeScripts == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<NativeScript, $Res>(_self.inativeScripts!,
        (value) {
      return _then(_self.copyWith(inativeScripts: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<WitnessBootstrap, $Res>? get ibootstrap {
    if (_self.ibootstrap == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<WitnessBootstrap, $Res>(_self.ibootstrap!,
        (value) {
      return _then(_self.copyWith(ibootstrap: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<PlutusScriptV1, $Res>? get iplutusScriptV1 {
    if (_self.iplutusScriptV1 == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<PlutusScriptV1, $Res>(
        _self.iplutusScriptV1!, (value) {
      return _then(_self.copyWith(iplutusScriptV1: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<PlutusData, $Res>? get iplutusData {
    if (_self.iplutusData == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<PlutusData, $Res>(_self.iplutusData!,
        (value) {
      return _then(_self.copyWith(iplutusData: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<Redeemer, $Res>? get iredeemer {
    if (_self.iredeemer == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<Redeemer, $Res>(_self.iredeemer!, (value) {
      return _then(_self.copyWith(iredeemer: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<PlutusScriptV2, $Res>? get iplutusScriptV2 {
    if (_self.iplutusScriptV2 == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<PlutusScriptV2, $Res>(
        _self.iplutusScriptV2!, (value) {
      return _then(_self.copyWith(iplutusScriptV2: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<PlutusScriptV3, $Res>? get iplutusScriptV3 {
    if (_self.iplutusScriptV3 == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<PlutusScriptV3, $Res>(
        _self.iplutusScriptV3!, (value) {
      return _then(_self.copyWith(iplutusScriptV3: value));
    });
  }
}

/// @nodoc

class _WitnessSet extends WitnessSet {
  const _WitnessSet(
      {this.ivkeyWitnesses,
      this.inativeScripts,
      this.ibootstrap,
      this.iplutusScriptV1,
      this.iplutusData,
      this.iredeemer,
      this.iplutusScriptV2,
      this.iplutusScriptV3,
      final List<int>? iCborTags})
      : _iCborTags = iCborTags,
        super._();

  @override
  final ListWithCborType<WitnessVKey>? ivkeyWitnesses;
  @override
  final ListWithCborType<NativeScript>? inativeScripts;
  @override
  final ListWithCborType<WitnessBootstrap>? ibootstrap;
  @override
  final ListWithCborType<PlutusScriptV1>? iplutusScriptV1;
  @override
  final ListWithCborType<PlutusData>? iplutusData;
  @override
  final ListWithCborType<Redeemer>? iredeemer;
  @override
  final ListWithCborType<PlutusScriptV2>? iplutusScriptV2;
  @override
  final ListWithCborType<PlutusScriptV3>? iplutusScriptV3;
  final List<int>? _iCborTags;
  @override
  List<int>? get iCborTags {
    final value = _iCborTags;
    if (value == null) return null;
    if (_iCborTags is EqualUnmodifiableListView) return _iCborTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WitnessSetCopyWith<_WitnessSet> get copyWith =>
      __$WitnessSetCopyWithImpl<_WitnessSet>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WitnessSet &&
            (identical(other.ivkeyWitnesses, ivkeyWitnesses) ||
                other.ivkeyWitnesses == ivkeyWitnesses) &&
            (identical(other.inativeScripts, inativeScripts) ||
                other.inativeScripts == inativeScripts) &&
            (identical(other.ibootstrap, ibootstrap) ||
                other.ibootstrap == ibootstrap) &&
            (identical(other.iplutusScriptV1, iplutusScriptV1) ||
                other.iplutusScriptV1 == iplutusScriptV1) &&
            (identical(other.iplutusData, iplutusData) ||
                other.iplutusData == iplutusData) &&
            (identical(other.iredeemer, iredeemer) ||
                other.iredeemer == iredeemer) &&
            (identical(other.iplutusScriptV2, iplutusScriptV2) ||
                other.iplutusScriptV2 == iplutusScriptV2) &&
            (identical(other.iplutusScriptV3, iplutusScriptV3) ||
                other.iplutusScriptV3 == iplutusScriptV3) &&
            const DeepCollectionEquality()
                .equals(other._iCborTags, _iCborTags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ivkeyWitnesses,
      inativeScripts,
      ibootstrap,
      iplutusScriptV1,
      iplutusData,
      iredeemer,
      iplutusScriptV2,
      iplutusScriptV3,
      const DeepCollectionEquality().hash(_iCborTags));

  @override
  String toString() {
    return 'WitnessSet(ivkeyWitnesses: $ivkeyWitnesses, inativeScripts: $inativeScripts, ibootstrap: $ibootstrap, iplutusScriptV1: $iplutusScriptV1, iplutusData: $iplutusData, iredeemer: $iredeemer, iplutusScriptV2: $iplutusScriptV2, iplutusScriptV3: $iplutusScriptV3, iCborTags: $iCborTags)';
  }
}

/// @nodoc
abstract mixin class _$WitnessSetCopyWith<$Res>
    implements $WitnessSetCopyWith<$Res> {
  factory _$WitnessSetCopyWith(
          _WitnessSet value, $Res Function(_WitnessSet) _then) =
      __$WitnessSetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ListWithCborType<WitnessVKey>? ivkeyWitnesses,
      ListWithCborType<NativeScript>? inativeScripts,
      ListWithCborType<WitnessBootstrap>? ibootstrap,
      ListWithCborType<PlutusScriptV1>? iplutusScriptV1,
      ListWithCborType<PlutusData>? iplutusData,
      ListWithCborType<Redeemer>? iredeemer,
      ListWithCborType<PlutusScriptV2>? iplutusScriptV2,
      ListWithCborType<PlutusScriptV3>? iplutusScriptV3,
      List<int>? iCborTags});

  @override
  $ListWithCborTypeCopyWith<WitnessVKey, $Res>? get ivkeyWitnesses;
  @override
  $ListWithCborTypeCopyWith<NativeScript, $Res>? get inativeScripts;
  @override
  $ListWithCborTypeCopyWith<WitnessBootstrap, $Res>? get ibootstrap;
  @override
  $ListWithCborTypeCopyWith<PlutusScriptV1, $Res>? get iplutusScriptV1;
  @override
  $ListWithCborTypeCopyWith<PlutusData, $Res>? get iplutusData;
  @override
  $ListWithCborTypeCopyWith<Redeemer, $Res>? get iredeemer;
  @override
  $ListWithCborTypeCopyWith<PlutusScriptV2, $Res>? get iplutusScriptV2;
  @override
  $ListWithCborTypeCopyWith<PlutusScriptV3, $Res>? get iplutusScriptV3;
}

/// @nodoc
class __$WitnessSetCopyWithImpl<$Res> implements _$WitnessSetCopyWith<$Res> {
  __$WitnessSetCopyWithImpl(this._self, this._then);

  final _WitnessSet _self;
  final $Res Function(_WitnessSet) _then;

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ivkeyWitnesses = freezed,
    Object? inativeScripts = freezed,
    Object? ibootstrap = freezed,
    Object? iplutusScriptV1 = freezed,
    Object? iplutusData = freezed,
    Object? iredeemer = freezed,
    Object? iplutusScriptV2 = freezed,
    Object? iplutusScriptV3 = freezed,
    Object? iCborTags = freezed,
  }) {
    return _then(_WitnessSet(
      ivkeyWitnesses: freezed == ivkeyWitnesses
          ? _self.ivkeyWitnesses
          : ivkeyWitnesses // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<WitnessVKey>?,
      inativeScripts: freezed == inativeScripts
          ? _self.inativeScripts
          : inativeScripts // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<NativeScript>?,
      ibootstrap: freezed == ibootstrap
          ? _self.ibootstrap
          : ibootstrap // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<WitnessBootstrap>?,
      iplutusScriptV1: freezed == iplutusScriptV1
          ? _self.iplutusScriptV1
          : iplutusScriptV1 // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<PlutusScriptV1>?,
      iplutusData: freezed == iplutusData
          ? _self.iplutusData
          : iplutusData // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<PlutusData>?,
      iredeemer: freezed == iredeemer
          ? _self.iredeemer
          : iredeemer // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<Redeemer>?,
      iplutusScriptV2: freezed == iplutusScriptV2
          ? _self.iplutusScriptV2
          : iplutusScriptV2 // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<PlutusScriptV2>?,
      iplutusScriptV3: freezed == iplutusScriptV3
          ? _self.iplutusScriptV3
          : iplutusScriptV3 // ignore: cast_nullable_to_non_nullable
              as ListWithCborType<PlutusScriptV3>?,
      iCborTags: freezed == iCborTags
          ? _self._iCborTags
          : iCborTags // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<WitnessVKey, $Res>? get ivkeyWitnesses {
    if (_self.ivkeyWitnesses == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<WitnessVKey, $Res>(_self.ivkeyWitnesses!,
        (value) {
      return _then(_self.copyWith(ivkeyWitnesses: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<NativeScript, $Res>? get inativeScripts {
    if (_self.inativeScripts == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<NativeScript, $Res>(_self.inativeScripts!,
        (value) {
      return _then(_self.copyWith(inativeScripts: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<WitnessBootstrap, $Res>? get ibootstrap {
    if (_self.ibootstrap == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<WitnessBootstrap, $Res>(_self.ibootstrap!,
        (value) {
      return _then(_self.copyWith(ibootstrap: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<PlutusScriptV1, $Res>? get iplutusScriptV1 {
    if (_self.iplutusScriptV1 == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<PlutusScriptV1, $Res>(
        _self.iplutusScriptV1!, (value) {
      return _then(_self.copyWith(iplutusScriptV1: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<PlutusData, $Res>? get iplutusData {
    if (_self.iplutusData == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<PlutusData, $Res>(_self.iplutusData!,
        (value) {
      return _then(_self.copyWith(iplutusData: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<Redeemer, $Res>? get iredeemer {
    if (_self.iredeemer == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<Redeemer, $Res>(_self.iredeemer!, (value) {
      return _then(_self.copyWith(iredeemer: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<PlutusScriptV2, $Res>? get iplutusScriptV2 {
    if (_self.iplutusScriptV2 == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<PlutusScriptV2, $Res>(
        _self.iplutusScriptV2!, (value) {
      return _then(_self.copyWith(iplutusScriptV2: value));
    });
  }

  /// Create a copy of WitnessSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListWithCborTypeCopyWith<PlutusScriptV3, $Res>? get iplutusScriptV3 {
    if (_self.iplutusScriptV3 == null) {
      return null;
    }

    return $ListWithCborTypeCopyWith<PlutusScriptV3, $Res>(
        _self.iplutusScriptV3!, (value) {
      return _then(_self.copyWith(iplutusScriptV3: value));
    });
  }
}

// dart format on
