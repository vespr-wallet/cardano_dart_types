// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Certificates {

 List<Certificate> get certificates; List<int> get cborTags; CborLengthType get lengthType;
/// Create a copy of Certificates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificatesCopyWith<Certificates> get copyWith => _$CertificatesCopyWithImpl<Certificates>(this as Certificates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Certificates&&const DeepCollectionEquality().equals(other.certificates, certificates)&&const DeepCollectionEquality().equals(other.cborTags, cborTags)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(certificates),const DeepCollectionEquality().hash(cborTags),lengthType);

@override
String toString() {
  return 'Certificates(certificates: $certificates, cborTags: $cborTags, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class $CertificatesCopyWith<$Res>  {
  factory $CertificatesCopyWith(Certificates value, $Res Function(Certificates) _then) = _$CertificatesCopyWithImpl;
@useResult
$Res call({
 List<Certificate> certificates, List<int> cborTags, CborLengthType lengthType
});




}
/// @nodoc
class _$CertificatesCopyWithImpl<$Res>
    implements $CertificatesCopyWith<$Res> {
  _$CertificatesCopyWithImpl(this._self, this._then);

  final Certificates _self;
  final $Res Function(Certificates) _then;

/// Create a copy of Certificates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? certificates = null,Object? cborTags = null,Object? lengthType = null,}) {
  return _then(_self.copyWith(
certificates: null == certificates ? _self.certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<Certificate>,cborTags: null == cborTags ? _self.cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}

}



/// @nodoc


class _Certificates extends Certificates {
  const _Certificates({required final  List<Certificate> certificates, required final  List<int> cborTags, required this.lengthType}): _certificates = certificates,_cborTags = cborTags,super._();
  

 final  List<Certificate> _certificates;
@override List<Certificate> get certificates {
  if (_certificates is EqualUnmodifiableListView) return _certificates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_certificates);
}

 final  List<int> _cborTags;
@override List<int> get cborTags {
  if (_cborTags is EqualUnmodifiableListView) return _cborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cborTags);
}

@override final  CborLengthType lengthType;

/// Create a copy of Certificates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificatesCopyWith<_Certificates> get copyWith => __$CertificatesCopyWithImpl<_Certificates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Certificates&&const DeepCollectionEquality().equals(other._certificates, _certificates)&&const DeepCollectionEquality().equals(other._cborTags, _cborTags)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_certificates),const DeepCollectionEquality().hash(_cborTags),lengthType);

@override
String toString() {
  return 'Certificates(certificates: $certificates, cborTags: $cborTags, lengthType: $lengthType)';
}


}

/// @nodoc
abstract mixin class _$CertificatesCopyWith<$Res> implements $CertificatesCopyWith<$Res> {
  factory _$CertificatesCopyWith(_Certificates value, $Res Function(_Certificates) _then) = __$CertificatesCopyWithImpl;
@override @useResult
$Res call({
 List<Certificate> certificates, List<int> cborTags, CborLengthType lengthType
});




}
/// @nodoc
class __$CertificatesCopyWithImpl<$Res>
    implements _$CertificatesCopyWith<$Res> {
  __$CertificatesCopyWithImpl(this._self, this._then);

  final _Certificates _self;
  final $Res Function(_Certificates) _then;

/// Create a copy of Certificates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? certificates = null,Object? cborTags = null,Object? lengthType = null,}) {
  return _then(_Certificates(
certificates: null == certificates ? _self._certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<Certificate>,cborTags: null == cborTags ? _self._cborTags : cborTags // ignore: cast_nullable_to_non_nullable
as List<int>,lengthType: null == lengthType ? _self.lengthType : lengthType // ignore: cast_nullable_to_non_nullable
as CborLengthType,
  ));
}


}

// dart format on
