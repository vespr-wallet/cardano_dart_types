// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cose_sig_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoseSigStructure {

 CoseProtectedHeaderMap get bodyProtected; CoseProtectedHeaderMap? get signProtected; SigContext get sigContext; Uint8List get payload; Uint8List get externalAad;
/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoseSigStructureCopyWith<CoseSigStructure> get copyWith => _$CoseSigStructureCopyWithImpl<CoseSigStructure>(this as CoseSigStructure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoseSigStructure&&(identical(other.bodyProtected, bodyProtected) || other.bodyProtected == bodyProtected)&&(identical(other.signProtected, signProtected) || other.signProtected == signProtected)&&(identical(other.sigContext, sigContext) || other.sigContext == sigContext)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other.externalAad, externalAad));
}


@override
int get hashCode => Object.hash(runtimeType,bodyProtected,signProtected,sigContext,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(externalAad));

@override
String toString() {
  return 'CoseSigStructure(bodyProtected: $bodyProtected, signProtected: $signProtected, sigContext: $sigContext, payload: $payload, externalAad: $externalAad)';
}


}

/// @nodoc
abstract mixin class $CoseSigStructureCopyWith<$Res>  {
  factory $CoseSigStructureCopyWith(CoseSigStructure value, $Res Function(CoseSigStructure) _then) = _$CoseSigStructureCopyWithImpl;
@useResult
$Res call({
 CoseProtectedHeaderMap bodyProtected, CoseProtectedHeaderMap? signProtected, SigContext sigContext, Uint8List payload, Uint8List externalAad
});


$CoseProtectedHeaderMapCopyWith<$Res> get bodyProtected;$CoseProtectedHeaderMapCopyWith<$Res>? get signProtected;

}
/// @nodoc
class _$CoseSigStructureCopyWithImpl<$Res>
    implements $CoseSigStructureCopyWith<$Res> {
  _$CoseSigStructureCopyWithImpl(this._self, this._then);

  final CoseSigStructure _self;
  final $Res Function(CoseSigStructure) _then;

/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bodyProtected = null,Object? signProtected = freezed,Object? sigContext = null,Object? payload = null,Object? externalAad = null,}) {
  return _then(_self.copyWith(
bodyProtected: null == bodyProtected ? _self.bodyProtected : bodyProtected // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap,signProtected: freezed == signProtected ? _self.signProtected : signProtected // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap?,sigContext: null == sigContext ? _self.sigContext : sigContext // ignore: cast_nullable_to_non_nullable
as SigContext,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List,externalAad: null == externalAad ? _self.externalAad : externalAad // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}
/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseProtectedHeaderMapCopyWith<$Res> get bodyProtected {
  
  return $CoseProtectedHeaderMapCopyWith<$Res>(_self.bodyProtected, (value) {
    return _then(_self.copyWith(bodyProtected: value));
  });
}/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseProtectedHeaderMapCopyWith<$Res>? get signProtected {
    if (_self.signProtected == null) {
    return null;
  }

  return $CoseProtectedHeaderMapCopyWith<$Res>(_self.signProtected!, (value) {
    return _then(_self.copyWith(signProtected: value));
  });
}
}



/// @nodoc


class _CoseSigStructure extends CoseSigStructure {
  const _CoseSigStructure({required this.bodyProtected, required this.signProtected, required this.sigContext, required this.payload, required this.externalAad}): super._();
  

@override final  CoseProtectedHeaderMap bodyProtected;
@override final  CoseProtectedHeaderMap? signProtected;
@override final  SigContext sigContext;
@override final  Uint8List payload;
@override final  Uint8List externalAad;

/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoseSigStructureCopyWith<_CoseSigStructure> get copyWith => __$CoseSigStructureCopyWithImpl<_CoseSigStructure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoseSigStructure&&(identical(other.bodyProtected, bodyProtected) || other.bodyProtected == bodyProtected)&&(identical(other.signProtected, signProtected) || other.signProtected == signProtected)&&(identical(other.sigContext, sigContext) || other.sigContext == sigContext)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other.externalAad, externalAad));
}


@override
int get hashCode => Object.hash(runtimeType,bodyProtected,signProtected,sigContext,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(externalAad));

@override
String toString() {
  return 'CoseSigStructure(bodyProtected: $bodyProtected, signProtected: $signProtected, sigContext: $sigContext, payload: $payload, externalAad: $externalAad)';
}


}

/// @nodoc
abstract mixin class _$CoseSigStructureCopyWith<$Res> implements $CoseSigStructureCopyWith<$Res> {
  factory _$CoseSigStructureCopyWith(_CoseSigStructure value, $Res Function(_CoseSigStructure) _then) = __$CoseSigStructureCopyWithImpl;
@override @useResult
$Res call({
 CoseProtectedHeaderMap bodyProtected, CoseProtectedHeaderMap? signProtected, SigContext sigContext, Uint8List payload, Uint8List externalAad
});


@override $CoseProtectedHeaderMapCopyWith<$Res> get bodyProtected;@override $CoseProtectedHeaderMapCopyWith<$Res>? get signProtected;

}
/// @nodoc
class __$CoseSigStructureCopyWithImpl<$Res>
    implements _$CoseSigStructureCopyWith<$Res> {
  __$CoseSigStructureCopyWithImpl(this._self, this._then);

  final _CoseSigStructure _self;
  final $Res Function(_CoseSigStructure) _then;

/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bodyProtected = null,Object? signProtected = freezed,Object? sigContext = null,Object? payload = null,Object? externalAad = null,}) {
  return _then(_CoseSigStructure(
bodyProtected: null == bodyProtected ? _self.bodyProtected : bodyProtected // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap,signProtected: freezed == signProtected ? _self.signProtected : signProtected // ignore: cast_nullable_to_non_nullable
as CoseProtectedHeaderMap?,sigContext: null == sigContext ? _self.sigContext : sigContext // ignore: cast_nullable_to_non_nullable
as SigContext,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Uint8List,externalAad: null == externalAad ? _self.externalAad : externalAad // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}

/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseProtectedHeaderMapCopyWith<$Res> get bodyProtected {
  
  return $CoseProtectedHeaderMapCopyWith<$Res>(_self.bodyProtected, (value) {
    return _then(_self.copyWith(bodyProtected: value));
  });
}/// Create a copy of CoseSigStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoseProtectedHeaderMapCopyWith<$Res>? get signProtected {
    if (_self.signProtected == null) {
    return null;
  }

  return $CoseProtectedHeaderMapCopyWith<$Res>(_self.signProtected!, (value) {
    return _then(_self.copyWith(signProtected: value));
  });
}
}

// dart format on
