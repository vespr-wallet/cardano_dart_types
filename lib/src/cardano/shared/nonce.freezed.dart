// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nonce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Nonce {

 Uint8List? get nonceHash; CborLengthType get lengthType;
/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NonceCopyWith<Nonce> get copyWith => _$NonceCopyWithImpl<Nonce>(this as Nonce, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Nonce;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nonce&&const DeepCollectionEquality().equals(other.nonceHash, _this.nonceHash)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType));
}


@override
int get hashCode {
  final _this = this as Nonce;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.nonceHash),_this.lengthType);
}

@override
String toString() {
  final _this = this as Nonce;
  return 'Nonce(nonceHash: ${_this.nonceHash}, lengthType: ${_this.lengthType})';
}


}

/// @nodoc
abstract mixin class $NonceCopyWith<$Res>  {
  factory $NonceCopyWith(Nonce value, $Res Function(Nonce) _then) = _$NonceCopyWithImpl;
@useResult
$Res call({
 Uint8List? nonceHash, CborLengthType lengthType
});




}
/// @nodoc
class _$NonceCopyWithImpl<$Res>
    implements $NonceCopyWith<$Res> {
  _$NonceCopyWithImpl(this._self, this._then);

  final Nonce _self;
  final $Res Function(Nonce) _then;

/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nonceHash = freezed,Object? lengthType = null,}) {
  return _then(Nonce(
nonceHash: freezed == nonceHash ? _self.nonceHash : nonceHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _Nonce extends Nonce {
  const _Nonce({required this.nonceHash, this.lengthType = CborLengthType.definite}): super._();
  

@override final  Uint8List? nonceHash;
@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NonceCopyWith<_Nonce> get copyWith => __$NonceCopyWithImpl<_Nonce>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nonce&&const DeepCollectionEquality().equals(other.nonceHash, nonceHash)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(nonceHash),lengthType);
}

@override
String toString() {
    return 'Nonce(nonceHash: $nonceHash, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class _$NonceCopyWith<$Res> implements $NonceCopyWith<$Res> {
  factory _$NonceCopyWith(_Nonce value, $Res Function(_Nonce) _then) = __$NonceCopyWithImpl;
@override @useResult
$Res call({
 Uint8List? nonceHash, CborLengthType lengthType
});




}
/// @nodoc
class __$NonceCopyWithImpl<$Res>
    implements _$NonceCopyWith<$Res> {
  __$NonceCopyWithImpl(this._self, this._then);

  final _Nonce _self;
  final $Res Function(_Nonce) _then;

/// Create a copy of Nonce
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nonceHash = freezed,Object? lengthType = null,}) {
  return _then(_Nonce(
nonceHash: freezed == nonceHash ? _self.nonceHash : nonceHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
