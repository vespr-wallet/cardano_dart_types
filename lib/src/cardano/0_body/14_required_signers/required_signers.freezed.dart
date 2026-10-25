// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'required_signers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RequiredSigners {

 List<Uint8List> get signersBytes; List<int> get cborTags; CborLengthType get lengthType;
/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequiredSignersCopyWith<RequiredSigners> get copyWith => _$RequiredSignersCopyWithImpl<RequiredSigners>(this as RequiredSigners, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RequiredSigners;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequiredSigners&&const DeepCollectionEquality().equals(other.signersBytes, _this.signersBytes)&&const DeepCollectionEquality().equals(other.cborTags, _this.cborTags)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType));
}


@override
int get hashCode {
  final _this = this as RequiredSigners;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.signersBytes),const DeepCollectionEquality().hash(_this.cborTags),_this.lengthType);
}

@override
String toString() {
  final _this = this as RequiredSigners;
  return 'RequiredSigners(signersBytes: ${_this.signersBytes}, cborTags: ${_this.cborTags}, lengthType: ${_this.lengthType})';
}


}

/// @nodoc
abstract mixin class $RequiredSignersCopyWith<$Res>  {
  factory $RequiredSignersCopyWith(RequiredSigners value, $Res Function(RequiredSigners) _then) = _$RequiredSignersCopyWithImpl;
@useResult
$Res call({
 List<Uint8List> signersBytes, List<int> cborTags, CborLengthType lengthType
});




}
/// @nodoc
class _$RequiredSignersCopyWithImpl<$Res>
    implements $RequiredSignersCopyWith<$Res> {
  _$RequiredSignersCopyWithImpl(this._self, this._then);

  final RequiredSigners _self;
  final $Res Function(RequiredSigners) _then;

/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signersBytes = null,Object? cborTags = null,Object? lengthType = null,}) {
  return _then(RequiredSigners(
signersBytes: null == signersBytes ? _self.signersBytes : signersBytes // ignore: cast_nullable_to_non_nullable
as List<Uint8List>,cborTags: null == cborTags ? _self.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _RequiredSigner extends RequiredSigners {
  const _RequiredSigner({required  List<Uint8List> signersBytes, required  List<int> cborTags, this.lengthType = CborLengthType.definite}): _signersBytes = signersBytes,_cborTags = cborTags,super._();
  

 final  List<Uint8List> _signersBytes;
@override List<Uint8List> get signersBytes {
  if (_signersBytes is EqualUnmodifiableListView) return _signersBytes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_signersBytes);
}

 final  List<int> _cborTags;
@override List<int> get cborTags {
  if (_cborTags is EqualUnmodifiableListView) return _cborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cborTags);
}

@override@JsonKey() final  CborLengthType lengthType;

/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequiredSignerCopyWith<_RequiredSigner> get copyWith => __$RequiredSignerCopyWithImpl<_RequiredSigner>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequiredSigner&&const DeepCollectionEquality().equals(other.signersBytes, _signersBytes)&&const DeepCollectionEquality().equals(other.cborTags, _cborTags)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_signersBytes),const DeepCollectionEquality().hash(_cborTags),lengthType);
}

@override
String toString() {
    return 'RequiredSigners(signersBytes: $signersBytes, cborTags: $cborTags, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class _$RequiredSignerCopyWith<$Res> implements $RequiredSignersCopyWith<$Res> {
  factory _$RequiredSignerCopyWith(_RequiredSigner value, $Res Function(_RequiredSigner) _then) = __$RequiredSignerCopyWithImpl;
@override @useResult
$Res call({
 List<Uint8List> signersBytes, List<int> cborTags, CborLengthType lengthType
});




}
/// @nodoc
class __$RequiredSignerCopyWithImpl<$Res>
    implements _$RequiredSignerCopyWith<$Res> {
  __$RequiredSignerCopyWithImpl(this._self, this._then);

  final _RequiredSigner _self;
  final $Res Function(_RequiredSigner) _then;

/// Create a copy of RequiredSigners
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signersBytes = null,Object? cborTags = null,Object? lengthType = null,}) {
  return _then(_RequiredSigner(
signersBytes: null == signersBytes ? _self._signersBytes : signersBytes // ignore: cast_nullable_to_non_nullable
as List<Uint8List>,cborTags: null == cborTags ? _self._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
