// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anchor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Anchor {

 String get anchorUrl; Uint8List get anchorDataHash; CborLengthType get cborLengthType;
/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnchorCopyWith<Anchor> get copyWith => _$AnchorCopyWithImpl<Anchor>(this as Anchor, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Anchor;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Anchor&&(identical(other.metadataHashHex, _this.metadataHashHex) || other.metadataHashHex == _this.metadataHashHex)&&(identical(other.anchorUrl, _this.anchorUrl) || other.anchorUrl == _this.anchorUrl)&&const DeepCollectionEquality().equals(other.anchorDataHash, _this.anchorDataHash)&&(identical(other.cborLengthType, _this.cborLengthType) || other.cborLengthType == _this.cborLengthType));
}


@override
int get hashCode {
  final _this = this as Anchor;
  return Object.hash(runtimeType,_this.metadataHashHex,_this.anchorUrl,const DeepCollectionEquality().hash(_this.anchorDataHash),_this.cborLengthType);
}

@override
String toString() {
  final _this = this as Anchor;
  return 'Anchor(metadataHashHex: ${_this.metadataHashHex}, anchorUrl: ${_this.anchorUrl}, anchorDataHash: ${_this.anchorDataHash}, cborLengthType: ${_this.cborLengthType})';
}


}

/// @nodoc
abstract mixin class $AnchorCopyWith<$Res>  {
  factory $AnchorCopyWith(Anchor value, $Res Function(Anchor) _then) = _$AnchorCopyWithImpl;
@useResult
$Res call({
 String anchorUrl, Uint8List anchorDataHash, CborLengthType cborLengthType
});




}
/// @nodoc
class _$AnchorCopyWithImpl<$Res>
    implements $AnchorCopyWith<$Res> {
  _$AnchorCopyWithImpl(this._self, this._then);

  final Anchor _self;
  final $Res Function(Anchor) _then;

/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anchorUrl = null,Object? anchorDataHash = null,Object? cborLengthType = null,}) {
  return _then(Anchor(
anchorUrl: null == anchorUrl ? _self.anchorUrl : anchorUrl // ignore: cast_nullable_to_non_nullable
as String,anchorDataHash: null == anchorDataHash ? _self.anchorDataHash : anchorDataHash // ignore: cast_nullable_to_non_nullable
as Uint8List,cborLengthType: null == cborLengthType ? _self.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _Anchor extends Anchor {
   _Anchor({required this.anchorUrl, required this.anchorDataHash, this.cborLengthType = CborLengthType.auto}): super._();
  

@override final  String anchorUrl;
@override final  Uint8List anchorDataHash;
@override@JsonKey() final  CborLengthType cborLengthType;

/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnchorCopyWith<_Anchor> get copyWith => __$AnchorCopyWithImpl<_Anchor>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Anchor&&(identical(other.anchorUrl, anchorUrl) || other.anchorUrl == anchorUrl)&&const DeepCollectionEquality().equals(other.anchorDataHash, anchorDataHash)&&(identical(other.cborLengthType, cborLengthType) || other.cborLengthType == cborLengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,anchorUrl,const DeepCollectionEquality().hash(anchorDataHash),cborLengthType);
}

@override
String toString() {
    return 'Anchor(anchorUrl: $anchorUrl, anchorDataHash: $anchorDataHash, cborLengthType: $cborLengthType)';
}


}

/// @nodoc
abstract mixin class _$AnchorCopyWith<$Res> implements $AnchorCopyWith<$Res> {
  factory _$AnchorCopyWith(_Anchor value, $Res Function(_Anchor) _then) = __$AnchorCopyWithImpl;
@override @useResult
$Res call({
 String anchorUrl, Uint8List anchorDataHash, CborLengthType cborLengthType
});




}
/// @nodoc
class __$AnchorCopyWithImpl<$Res>
    implements _$AnchorCopyWith<$Res> {
  __$AnchorCopyWithImpl(this._self, this._then);

  final _Anchor _self;
  final $Res Function(_Anchor) _then;

/// Create a copy of Anchor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? anchorUrl = null,Object? anchorDataHash = null,Object? cborLengthType = null,}) {
  return _then(_Anchor(
anchorUrl: null == anchorUrl ? _self.anchorUrl : anchorUrl // ignore: cast_nullable_to_non_nullable
as String,anchorDataHash: null == anchorDataHash ? _self.anchorDataHash : anchorDataHash // ignore: cast_nullable_to_non_nullable
as Uint8List,cborLengthType: null == cborLengthType ? _self.cborLengthType : cborLengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
