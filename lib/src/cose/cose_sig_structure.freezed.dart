// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_sig_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoseSigStructure {

 CoseProtectedHeaderMap get bodyProtected => throw _privateConstructorUsedError; CoseProtectedHeaderMap? get signProtected => throw _privateConstructorUsedError; SigContext get sigContext => throw _privateConstructorUsedError; Uint8List get payload => throw _privateConstructorUsedError; Uint8List get externalAad => throw _privateConstructorUsedError;







/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CoseSigStructureCopyWith<CoseSigStructure> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CoseSigStructureCopyWith<$Res>  {
  factory $CoseSigStructureCopyWith(CoseSigStructure value, $Res Function(CoseSigStructure) then) = _$CoseSigStructureCopyWithImpl<$Res, CoseSigStructure>;
@useResult
$Res call({
 CoseProtectedHeaderMap bodyProtected, CoseProtectedHeaderMap? signProtected, SigContext sigContext, Uint8List payload, Uint8List externalAad
});


$CoseProtectedHeaderMapCopyWith<$Res> get bodyProtected;$CoseProtectedHeaderMapCopyWith<$Res>? get signProtected;
}

/// @nodoc
class _$CoseSigStructureCopyWithImpl<$Res,$Val extends CoseSigStructure> implements $CoseSigStructureCopyWith<$Res> {
  _$CoseSigStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bodyProtected = null,Object? signProtected = freezed,Object? sigContext = null,Object? payload = null,Object? externalAad = null,}) {
  return _then(_value.copyWith(
bodyProtected: null == bodyProtected ? _value.bodyProtected : bodyProtected // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap,signProtected: freezed == signProtected ? _value.signProtected : signProtected // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap?,sigContext: null == sigContext ? _value.sigContext : sigContext // ignore: cast_nullable_to_non_nullable
as SigContext,payload: null == payload ? _value.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List,externalAad: null == externalAad ? _value.externalAad : externalAad // ignore: cast_nullable_to_non_nullable
as Uint8List,
  )as $Val);
}
/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseProtectedHeaderMapCopyWith<$Res> get bodyProtected {
  
  return $CoseProtectedHeaderMapCopyWith<$Res>(_value.bodyProtected, (value) {
    return _then(_value.copyWith(bodyProtected: value) as $Val);
  });
}/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseProtectedHeaderMapCopyWith<$Res>? get signProtected {
    if (_value.signProtected == null) {
    return null;
  }

  return $CoseProtectedHeaderMapCopyWith<$Res>(_value.signProtected!, (value) {
    return _then(_value.copyWith(signProtected: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$CoseSigStructureImplCopyWith<$Res> implements $CoseSigStructureCopyWith<$Res> {
  factory _$$CoseSigStructureImplCopyWith(_$CoseSigStructureImpl value, $Res Function(_$CoseSigStructureImpl) then) = __$$CoseSigStructureImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CoseProtectedHeaderMap bodyProtected, CoseProtectedHeaderMap? signProtected, SigContext sigContext, Uint8List payload, Uint8List externalAad
});


@override $CoseProtectedHeaderMapCopyWith<$Res> get bodyProtected;@override $CoseProtectedHeaderMapCopyWith<$Res>? get signProtected;
}

/// @nodoc
class __$$CoseSigStructureImplCopyWithImpl<$Res> extends _$CoseSigStructureCopyWithImpl<$Res, _$CoseSigStructureImpl> implements _$$CoseSigStructureImplCopyWith<$Res> {
  __$$CoseSigStructureImplCopyWithImpl(_$CoseSigStructureImpl _value, $Res Function(_$CoseSigStructureImpl) _then)
      : super(_value, _then);


/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bodyProtected = null,Object? signProtected = freezed,Object? sigContext = null,Object? payload = null,Object? externalAad = null,}) {
  return _then(_$CoseSigStructureImpl(
bodyProtected: null == bodyProtected ? _value.bodyProtected : bodyProtected // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap,signProtected: freezed == signProtected ? _value.signProtected : signProtected // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap?,sigContext: null == sigContext ? _value.sigContext : sigContext // ignore: cast_nullable_to_non_nullable
as SigContext,payload: null == payload ? _value.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List,externalAad: null == externalAad ? _value.externalAad : externalAad // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class _$CoseSigStructureImpl extends _CoseSigStructure  {
  const _$CoseSigStructureImpl({required this.bodyProtected, required this.signProtected, required this.sigContext, required this.payload, required this.externalAad}): super._();

  

@override final  CoseProtectedHeaderMap bodyProtected;
@override final  CoseProtectedHeaderMap? signProtected;
@override final  SigContext sigContext;
@override final  Uint8List payload;
@override final  Uint8List externalAad;

@override
String toString() {
  return 'CoseSigStructure(bodyProtected: $bodyProtected, signProtected: $signProtected, sigContext: $sigContext, payload: $payload, externalAad: $externalAad)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CoseSigStructureImpl&&(identical(other.bodyProtected, bodyProtected) || other.bodyProtected == bodyProtected)&&(identical(other.signProtected, signProtected) || other.signProtected == signProtected)&&(identical(other.sigContext, sigContext) || other.sigContext == sigContext)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other.externalAad, externalAad));
}


@override
int get hashCode => Object.hash(runtimeType,bodyProtected,signProtected,sigContext,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(externalAad));

/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CoseSigStructureImplCopyWith<_$CoseSigStructureImpl> get copyWith => __$$CoseSigStructureImplCopyWithImpl<_$CoseSigStructureImpl>(this, _$identity);








}


abstract class _CoseSigStructure extends CoseSigStructure {
  const factory _CoseSigStructure({required final  CoseProtectedHeaderMap bodyProtected, required final  CoseProtectedHeaderMap? signProtected, required final  SigContext sigContext, required final  Uint8List payload, required final  Uint8List externalAad}) = _$CoseSigStructureImpl;
  const _CoseSigStructure._(): super._();

  

@override CoseProtectedHeaderMap get bodyProtected;@override CoseProtectedHeaderMap? get signProtected;@override SigContext get sigContext;@override Uint8List get payload;@override Uint8List get externalAad;
/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CoseSigStructureImplCopyWith<_$CoseSigStructureImpl> get copyWith => throw _privateConstructorUsedError;

}
