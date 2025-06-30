// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_derivation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardanoDerivation _$CardanoDerivationFromJson(Map<String, dynamic> json) {
        switch (json['runtimeType']) {
                  case 'address':
          return CardanoDerivedAddress.fromJson(json);
                case 'dRep':
          return CardanoDerivedDRep.fromJson(json);
                case 'constitutionalCommittee':
          return CardanoDerivedConstitutionalCommittee.fromJson(json);
        
          default:
            throw CheckedFromJsonException(json, 'runtimeType', 'CardanoDerivation', 'Invalid union type "${json['runtimeType']}"!');
        }
      
}

/// @nodoc
mixin _$CardanoDerivation {








/// Serializes this CardanoDerivation to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CardanoDerivationCopyWith<$Res>  {
  factory $CardanoDerivationCopyWith(CardanoDerivation value, $Res Function(CardanoDerivation) then) = _$CardanoDerivationCopyWithImpl<$Res, CardanoDerivation>;



}

/// @nodoc
class _$CardanoDerivationCopyWithImpl<$Res,$Val extends CardanoDerivation> implements $CardanoDerivationCopyWith<$Res> {
  _$CardanoDerivationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$CardanoDerivedAddressImplCopyWith<$Res>  {
  factory _$$CardanoDerivedAddressImplCopyWith(_$CardanoDerivedAddressImpl value, $Res Function(_$CardanoDerivedAddressImpl) then) = __$$CardanoDerivedAddressImplCopyWithImpl<$Res>;
@useResult
$Res call({
 AddressType type,@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$CardanoDerivedAddressImplCopyWithImpl<$Res> extends _$CardanoDerivationCopyWithImpl<$Res, _$CardanoDerivedAddressImpl> implements _$$CardanoDerivedAddressImplCopyWith<$Res> {
  __$$CardanoDerivedAddressImplCopyWithImpl(_$CardanoDerivedAddressImpl _value, $Res Function(_$CardanoDerivedAddressImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? bytes = null,}) {
  return _then(_$CardanoDerivedAddressImpl(
type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as AddressType,bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$CardanoDerivedAddressImpl extends CardanoDerivedAddress  {
   _$CardanoDerivedAddressImpl({required this.type, @byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'address',super._();

  factory _$CardanoDerivedAddressImpl.fromJson(Map<String, dynamic> json) => _$$CardanoDerivedAddressImplFromJson(json);

@override final  AddressType type;
@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'CardanoDerivation.address(type: $type, bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoDerivedAddressImpl&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(bytes));

/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoDerivedAddressImplCopyWith<_$CardanoDerivedAddressImpl> get copyWith => __$$CardanoDerivedAddressImplCopyWithImpl<_$CardanoDerivedAddressImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$CardanoDerivedAddressImplToJson(this, );
}
}


abstract class CardanoDerivedAddress extends CardanoDerivation {
   factory CardanoDerivedAddress({required final  AddressType type, @byteListConverter required final  ByteList bytes}) = _$CardanoDerivedAddressImpl;
   CardanoDerivedAddress._(): super._();

  factory CardanoDerivedAddress.fromJson(Map<String, dynamic> json) = _$CardanoDerivedAddressImpl.fromJson;

 AddressType get type;@byteListConverter ByteList get bytes;
/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoDerivedAddressImplCopyWith<_$CardanoDerivedAddressImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CardanoDerivedDRepImplCopyWith<$Res>  {
  factory _$$CardanoDerivedDRepImplCopyWith(_$CardanoDerivedDRepImpl value, $Res Function(_$CardanoDerivedDRepImpl) then) = __$$CardanoDerivedDRepImplCopyWithImpl<$Res>;
@useResult
$Res call({
 DRepDerivation value
});


$DRepDerivationCopyWith<$Res> get value;
}

/// @nodoc
class __$$CardanoDerivedDRepImplCopyWithImpl<$Res> extends _$CardanoDerivationCopyWithImpl<$Res, _$CardanoDerivedDRepImpl> implements _$$CardanoDerivedDRepImplCopyWith<$Res> {
  __$$CardanoDerivedDRepImplCopyWithImpl(_$CardanoDerivedDRepImpl _value, $Res Function(_$CardanoDerivedDRepImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_$CardanoDerivedDRepImpl(
value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as DRepDerivation,
  ));
}

/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DRepDerivationCopyWith<$Res> get value {
  
  return $DRepDerivationCopyWith<$Res>(_value.value, (value) {
    return _then(_value.copyWith(value: value) );
  });
}
}

/// @nodoc
@JsonSerializable()

class _$CardanoDerivedDRepImpl extends CardanoDerivedDRep  {
   _$CardanoDerivedDRepImpl({required this.value, final  String? $type}): $type = $type ?? 'dRep',super._();

  factory _$CardanoDerivedDRepImpl.fromJson(Map<String, dynamic> json) => _$$CardanoDerivedDRepImplFromJson(json);

@override final  DRepDerivation value;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'CardanoDerivation.dRep(value: $value)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoDerivedDRepImpl&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoDerivedDRepImplCopyWith<_$CardanoDerivedDRepImpl> get copyWith => __$$CardanoDerivedDRepImplCopyWithImpl<_$CardanoDerivedDRepImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$CardanoDerivedDRepImplToJson(this, );
}
}


abstract class CardanoDerivedDRep extends CardanoDerivation {
   factory CardanoDerivedDRep({required final  DRepDerivation value}) = _$CardanoDerivedDRepImpl;
   CardanoDerivedDRep._(): super._();

  factory CardanoDerivedDRep.fromJson(Map<String, dynamic> json) = _$CardanoDerivedDRepImpl.fromJson;

 DRepDerivation get value;
/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoDerivedDRepImplCopyWith<_$CardanoDerivedDRepImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CardanoDerivedConstitutionalCommitteeImplCopyWith<$Res>  {
  factory _$$CardanoDerivedConstitutionalCommitteeImplCopyWith(_$CardanoDerivedConstitutionalCommitteeImpl value, $Res Function(_$CardanoDerivedConstitutionalCommitteeImpl) then) = __$$CardanoDerivedConstitutionalCommitteeImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ConstitutionalCommitee value
});


$ConstitutionalCommiteeCopyWith<$Res> get value;
}

/// @nodoc
class __$$CardanoDerivedConstitutionalCommitteeImplCopyWithImpl<$Res> extends _$CardanoDerivationCopyWithImpl<$Res, _$CardanoDerivedConstitutionalCommitteeImpl> implements _$$CardanoDerivedConstitutionalCommitteeImplCopyWith<$Res> {
  __$$CardanoDerivedConstitutionalCommitteeImplCopyWithImpl(_$CardanoDerivedConstitutionalCommitteeImpl _value, $Res Function(_$CardanoDerivedConstitutionalCommitteeImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_$CardanoDerivedConstitutionalCommitteeImpl(
value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as ConstitutionalCommitee,
  ));
}

/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConstitutionalCommiteeCopyWith<$Res> get value {
  
  return $ConstitutionalCommiteeCopyWith<$Res>(_value.value, (value) {
    return _then(_value.copyWith(value: value) );
  });
}
}

/// @nodoc
@JsonSerializable()

class _$CardanoDerivedConstitutionalCommitteeImpl extends CardanoDerivedConstitutionalCommittee  {
   _$CardanoDerivedConstitutionalCommitteeImpl({required this.value, final  String? $type}): $type = $type ?? 'constitutionalCommittee',super._();

  factory _$CardanoDerivedConstitutionalCommitteeImpl.fromJson(Map<String, dynamic> json) => _$$CardanoDerivedConstitutionalCommitteeImplFromJson(json);

@override final  ConstitutionalCommitee value;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'CardanoDerivation.constitutionalCommittee(value: $value)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoDerivedConstitutionalCommitteeImpl&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoDerivedConstitutionalCommitteeImplCopyWith<_$CardanoDerivedConstitutionalCommitteeImpl> get copyWith => __$$CardanoDerivedConstitutionalCommitteeImplCopyWithImpl<_$CardanoDerivedConstitutionalCommitteeImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$CardanoDerivedConstitutionalCommitteeImplToJson(this, );
}
}


abstract class CardanoDerivedConstitutionalCommittee extends CardanoDerivation {
   factory CardanoDerivedConstitutionalCommittee({required final  ConstitutionalCommitee value}) = _$CardanoDerivedConstitutionalCommitteeImpl;
   CardanoDerivedConstitutionalCommittee._(): super._();

  factory CardanoDerivedConstitutionalCommittee.fromJson(Map<String, dynamic> json) = _$CardanoDerivedConstitutionalCommitteeImpl.fromJson;

 ConstitutionalCommitee get value;
/// Create a copy of CardanoDerivation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoDerivedConstitutionalCommitteeImplCopyWith<_$CardanoDerivedConstitutionalCommitteeImpl> get copyWith => throw _privateConstructorUsedError;

}

DRepDerivation _$DRepDerivationFromJson(Map<String, dynamic> json) {
return _DRepDerivation.fromJson(json);
}

/// @nodoc
mixin _$DRepDerivation {

@byteListConverter ByteList get bytes => throw _privateConstructorUsedError;






/// Serializes this DRepDerivation to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of DRepDerivation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$DRepDerivationCopyWith<DRepDerivation> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DRepDerivationCopyWith<$Res>  {
  factory $DRepDerivationCopyWith(DRepDerivation value, $Res Function(DRepDerivation) then) = _$DRepDerivationCopyWithImpl<$Res, DRepDerivation>;
@useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class _$DRepDerivationCopyWithImpl<$Res,$Val extends DRepDerivation> implements $DRepDerivationCopyWith<$Res> {
  _$DRepDerivationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of DRepDerivation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_value.copyWith(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  )as $Val);
}

}


/// @nodoc
abstract class _$$DRepDerivationImplCopyWith<$Res> implements $DRepDerivationCopyWith<$Res> {
  factory _$$DRepDerivationImplCopyWith(_$DRepDerivationImpl value, $Res Function(_$DRepDerivationImpl) then) = __$$DRepDerivationImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$DRepDerivationImplCopyWithImpl<$Res> extends _$DRepDerivationCopyWithImpl<$Res, _$DRepDerivationImpl> implements _$$DRepDerivationImplCopyWith<$Res> {
  __$$DRepDerivationImplCopyWithImpl(_$DRepDerivationImpl _value, $Res Function(_$DRepDerivationImpl) _then)
      : super(_value, _then);


/// Create a copy of DRepDerivation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$DRepDerivationImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$DRepDerivationImpl extends _DRepDerivation  {
   _$DRepDerivationImpl({@byteListConverter required this.bytes}): super._();

  factory _$DRepDerivationImpl.fromJson(Map<String, dynamic> json) => _$$DRepDerivationImplFromJson(json);

@override@byteListConverter final  ByteList bytes;

@override
String toString() {
  return 'DRepDerivation(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DRepDerivationImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of DRepDerivation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DRepDerivationImplCopyWith<_$DRepDerivationImpl> get copyWith => __$$DRepDerivationImplCopyWithImpl<_$DRepDerivationImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$DRepDerivationImplToJson(this, );
}
}


abstract class _DRepDerivation extends DRepDerivation {
   factory _DRepDerivation({@byteListConverter required final  ByteList bytes}) = _$DRepDerivationImpl;
   _DRepDerivation._(): super._();

  factory _DRepDerivation.fromJson(Map<String, dynamic> json) = _$DRepDerivationImpl.fromJson;

@override@byteListConverter ByteList get bytes;
/// Create a copy of DRepDerivation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DRepDerivationImplCopyWith<_$DRepDerivationImpl> get copyWith => throw _privateConstructorUsedError;

}

ConstitutionalCommitee _$ConstitutionalCommiteeFromJson(Map<String, dynamic> json) {
        switch (json['runtimeType']) {
                  case 'cold':
          return ConstitutionalCommiteeCold.fromJson(json);
                case 'hot':
          return ConstitutionalCommiteeHot.fromJson(json);
        
          default:
            throw CheckedFromJsonException(json, 'runtimeType', 'ConstitutionalCommitee', 'Invalid union type "${json['runtimeType']}"!');
        }
      
}

/// @nodoc
mixin _$ConstitutionalCommitee {

@byteListConverter ByteList get bytes => throw _privateConstructorUsedError;






/// Serializes this ConstitutionalCommitee to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of ConstitutionalCommitee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ConstitutionalCommiteeCopyWith<ConstitutionalCommitee> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ConstitutionalCommiteeCopyWith<$Res>  {
  factory $ConstitutionalCommiteeCopyWith(ConstitutionalCommitee value, $Res Function(ConstitutionalCommitee) then) = _$ConstitutionalCommiteeCopyWithImpl<$Res, ConstitutionalCommitee>;
@useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class _$ConstitutionalCommiteeCopyWithImpl<$Res,$Val extends ConstitutionalCommitee> implements $ConstitutionalCommiteeCopyWith<$Res> {
  _$ConstitutionalCommiteeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ConstitutionalCommitee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_value.copyWith(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ConstitutionalCommiteeColdImplCopyWith<$Res> implements $ConstitutionalCommiteeCopyWith<$Res> {
  factory _$$ConstitutionalCommiteeColdImplCopyWith(_$ConstitutionalCommiteeColdImpl value, $Res Function(_$ConstitutionalCommiteeColdImpl) then) = __$$ConstitutionalCommiteeColdImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$ConstitutionalCommiteeColdImplCopyWithImpl<$Res> extends _$ConstitutionalCommiteeCopyWithImpl<$Res, _$ConstitutionalCommiteeColdImpl> implements _$$ConstitutionalCommiteeColdImplCopyWith<$Res> {
  __$$ConstitutionalCommiteeColdImplCopyWithImpl(_$ConstitutionalCommiteeColdImpl _value, $Res Function(_$ConstitutionalCommiteeColdImpl) _then)
      : super(_value, _then);


/// Create a copy of ConstitutionalCommitee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$ConstitutionalCommiteeColdImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$ConstitutionalCommiteeColdImpl extends ConstitutionalCommiteeCold  {
   _$ConstitutionalCommiteeColdImpl({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'cold',super._();

  factory _$ConstitutionalCommiteeColdImpl.fromJson(Map<String, dynamic> json) => _$$ConstitutionalCommiteeColdImplFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'ConstitutionalCommitee.cold(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ConstitutionalCommiteeColdImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of ConstitutionalCommitee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ConstitutionalCommiteeColdImplCopyWith<_$ConstitutionalCommiteeColdImpl> get copyWith => __$$ConstitutionalCommiteeColdImplCopyWithImpl<_$ConstitutionalCommiteeColdImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$ConstitutionalCommiteeColdImplToJson(this, );
}
}


abstract class ConstitutionalCommiteeCold extends ConstitutionalCommitee {
   factory ConstitutionalCommiteeCold({@byteListConverter required final  ByteList bytes}) = _$ConstitutionalCommiteeColdImpl;
   ConstitutionalCommiteeCold._(): super._();

  factory ConstitutionalCommiteeCold.fromJson(Map<String, dynamic> json) = _$ConstitutionalCommiteeColdImpl.fromJson;

@override@byteListConverter ByteList get bytes;
/// Create a copy of ConstitutionalCommitee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ConstitutionalCommiteeColdImplCopyWith<_$ConstitutionalCommiteeColdImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ConstitutionalCommiteeHotImplCopyWith<$Res> implements $ConstitutionalCommiteeCopyWith<$Res> {
  factory _$$ConstitutionalCommiteeHotImplCopyWith(_$ConstitutionalCommiteeHotImpl value, $Res Function(_$ConstitutionalCommiteeHotImpl) then) = __$$ConstitutionalCommiteeHotImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$ConstitutionalCommiteeHotImplCopyWithImpl<$Res> extends _$ConstitutionalCommiteeCopyWithImpl<$Res, _$ConstitutionalCommiteeHotImpl> implements _$$ConstitutionalCommiteeHotImplCopyWith<$Res> {
  __$$ConstitutionalCommiteeHotImplCopyWithImpl(_$ConstitutionalCommiteeHotImpl _value, $Res Function(_$ConstitutionalCommiteeHotImpl) _then)
      : super(_value, _then);


/// Create a copy of ConstitutionalCommitee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$ConstitutionalCommiteeHotImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$ConstitutionalCommiteeHotImpl extends ConstitutionalCommiteeHot  {
   _$ConstitutionalCommiteeHotImpl({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'hot',super._();

  factory _$ConstitutionalCommiteeHotImpl.fromJson(Map<String, dynamic> json) => _$$ConstitutionalCommiteeHotImplFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'ConstitutionalCommitee.hot(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ConstitutionalCommiteeHotImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of ConstitutionalCommitee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ConstitutionalCommiteeHotImplCopyWith<_$ConstitutionalCommiteeHotImpl> get copyWith => __$$ConstitutionalCommiteeHotImplCopyWithImpl<_$ConstitutionalCommiteeHotImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$ConstitutionalCommiteeHotImplToJson(this, );
}
}


abstract class ConstitutionalCommiteeHot extends ConstitutionalCommitee {
   factory ConstitutionalCommiteeHot({@byteListConverter required final  ByteList bytes}) = _$ConstitutionalCommiteeHotImpl;
   ConstitutionalCommiteeHot._(): super._();

  factory ConstitutionalCommiteeHot.fromJson(Map<String, dynamic> json) = _$ConstitutionalCommiteeHotImpl.fromJson;

@override@byteListConverter ByteList get bytes;
/// Create a copy of ConstitutionalCommitee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ConstitutionalCommiteeHotImplCopyWith<_$ConstitutionalCommiteeHotImpl> get copyWith => throw _privateConstructorUsedError;

}
