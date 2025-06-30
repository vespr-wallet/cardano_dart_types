// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardanoAddress _$CardanoAddressFromJson(Map<String, dynamic> json) {
        switch (json['runtimeType']) {
                  case 'byronRaw':
          return CardanoAddressByron.fromJson(json);
                case 'pointerRaw':
          return CardanoAddressPointer.fromJson(json);
                case 'baseRaw':
          return CardanoAddressBase.fromJson(json);
                case 'enterpriseRaw':
          return CardanoAddressEnterprise.fromJson(json);
                case 'rewardRaw':
          return CardanoAddressReward.fromJson(json);
        
          default:
            throw CheckedFromJsonException(json, 'runtimeType', 'CardanoAddress', 'Invalid union type "${json['runtimeType']}"!');
        }
      
}

/// @nodoc
mixin _$CardanoAddress {

@byteListConverter ByteList get bytes => throw _privateConstructorUsedError;






/// Serializes this CardanoAddress to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CardanoAddressCopyWith<CardanoAddress> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CardanoAddressCopyWith<$Res>  {
  factory $CardanoAddressCopyWith(CardanoAddress value, $Res Function(CardanoAddress) then) = _$CardanoAddressCopyWithImpl<$Res, CardanoAddress>;
@useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class _$CardanoAddressCopyWithImpl<$Res,$Val extends CardanoAddress> implements $CardanoAddressCopyWith<$Res> {
  _$CardanoAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_value.copyWith(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CardanoAddressByronImplCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory _$$CardanoAddressByronImplCopyWith(_$CardanoAddressByronImpl value, $Res Function(_$CardanoAddressByronImpl) then) = __$$CardanoAddressByronImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$CardanoAddressByronImplCopyWithImpl<$Res> extends _$CardanoAddressCopyWithImpl<$Res, _$CardanoAddressByronImpl> implements _$$CardanoAddressByronImplCopyWith<$Res> {
  __$$CardanoAddressByronImplCopyWithImpl(_$CardanoAddressByronImpl _value, $Res Function(_$CardanoAddressByronImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$CardanoAddressByronImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$CardanoAddressByronImpl extends CardanoAddressByron  {
   _$CardanoAddressByronImpl({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'byronRaw',super._();

  factory _$CardanoAddressByronImpl.fromJson(Map<String, dynamic> json) => _$$CardanoAddressByronImplFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'CardanoAddress.byronRaw(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoAddressByronImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoAddressByronImplCopyWith<_$CardanoAddressByronImpl> get copyWith => __$$CardanoAddressByronImplCopyWithImpl<_$CardanoAddressByronImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$CardanoAddressByronImplToJson(this, );
}
}


abstract class CardanoAddressByron extends CardanoAddress {
   factory CardanoAddressByron({@byteListConverter required final  ByteList bytes}) = _$CardanoAddressByronImpl;
   CardanoAddressByron._(): super._();

  factory CardanoAddressByron.fromJson(Map<String, dynamic> json) = _$CardanoAddressByronImpl.fromJson;

@override@byteListConverter ByteList get bytes;
/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoAddressByronImplCopyWith<_$CardanoAddressByronImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CardanoAddressPointerImplCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory _$$CardanoAddressPointerImplCopyWith(_$CardanoAddressPointerImpl value, $Res Function(_$CardanoAddressPointerImpl) then) = __$$CardanoAddressPointerImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$CardanoAddressPointerImplCopyWithImpl<$Res> extends _$CardanoAddressCopyWithImpl<$Res, _$CardanoAddressPointerImpl> implements _$$CardanoAddressPointerImplCopyWith<$Res> {
  __$$CardanoAddressPointerImplCopyWithImpl(_$CardanoAddressPointerImpl _value, $Res Function(_$CardanoAddressPointerImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$CardanoAddressPointerImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$CardanoAddressPointerImpl extends CardanoAddressPointer  {
   _$CardanoAddressPointerImpl({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'pointerRaw',super._();

  factory _$CardanoAddressPointerImpl.fromJson(Map<String, dynamic> json) => _$$CardanoAddressPointerImplFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'CardanoAddress.pointerRaw(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoAddressPointerImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoAddressPointerImplCopyWith<_$CardanoAddressPointerImpl> get copyWith => __$$CardanoAddressPointerImplCopyWithImpl<_$CardanoAddressPointerImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$CardanoAddressPointerImplToJson(this, );
}
}


abstract class CardanoAddressPointer extends CardanoAddress {
   factory CardanoAddressPointer({@byteListConverter required final  ByteList bytes}) = _$CardanoAddressPointerImpl;
   CardanoAddressPointer._(): super._();

  factory CardanoAddressPointer.fromJson(Map<String, dynamic> json) = _$CardanoAddressPointerImpl.fromJson;

@override@byteListConverter ByteList get bytes;
/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoAddressPointerImplCopyWith<_$CardanoAddressPointerImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CardanoAddressBaseImplCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory _$$CardanoAddressBaseImplCopyWith(_$CardanoAddressBaseImpl value, $Res Function(_$CardanoAddressBaseImpl) then) = __$$CardanoAddressBaseImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$CardanoAddressBaseImplCopyWithImpl<$Res> extends _$CardanoAddressCopyWithImpl<$Res, _$CardanoAddressBaseImpl> implements _$$CardanoAddressBaseImplCopyWith<$Res> {
  __$$CardanoAddressBaseImplCopyWithImpl(_$CardanoAddressBaseImpl _value, $Res Function(_$CardanoAddressBaseImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$CardanoAddressBaseImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$CardanoAddressBaseImpl extends CardanoAddressBase  {
   _$CardanoAddressBaseImpl({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'baseRaw',super._();

  factory _$CardanoAddressBaseImpl.fromJson(Map<String, dynamic> json) => _$$CardanoAddressBaseImplFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'CardanoAddress.baseRaw(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoAddressBaseImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoAddressBaseImplCopyWith<_$CardanoAddressBaseImpl> get copyWith => __$$CardanoAddressBaseImplCopyWithImpl<_$CardanoAddressBaseImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$CardanoAddressBaseImplToJson(this, );
}
}


abstract class CardanoAddressBase extends CardanoAddress {
   factory CardanoAddressBase({@byteListConverter required final  ByteList bytes}) = _$CardanoAddressBaseImpl;
   CardanoAddressBase._(): super._();

  factory CardanoAddressBase.fromJson(Map<String, dynamic> json) = _$CardanoAddressBaseImpl.fromJson;

@override@byteListConverter ByteList get bytes;
/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoAddressBaseImplCopyWith<_$CardanoAddressBaseImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CardanoAddressEnterpriseImplCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory _$$CardanoAddressEnterpriseImplCopyWith(_$CardanoAddressEnterpriseImpl value, $Res Function(_$CardanoAddressEnterpriseImpl) then) = __$$CardanoAddressEnterpriseImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$CardanoAddressEnterpriseImplCopyWithImpl<$Res> extends _$CardanoAddressCopyWithImpl<$Res, _$CardanoAddressEnterpriseImpl> implements _$$CardanoAddressEnterpriseImplCopyWith<$Res> {
  __$$CardanoAddressEnterpriseImplCopyWithImpl(_$CardanoAddressEnterpriseImpl _value, $Res Function(_$CardanoAddressEnterpriseImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$CardanoAddressEnterpriseImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$CardanoAddressEnterpriseImpl extends CardanoAddressEnterprise  {
   _$CardanoAddressEnterpriseImpl({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'enterpriseRaw',super._();

  factory _$CardanoAddressEnterpriseImpl.fromJson(Map<String, dynamic> json) => _$$CardanoAddressEnterpriseImplFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'CardanoAddress.enterpriseRaw(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoAddressEnterpriseImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoAddressEnterpriseImplCopyWith<_$CardanoAddressEnterpriseImpl> get copyWith => __$$CardanoAddressEnterpriseImplCopyWithImpl<_$CardanoAddressEnterpriseImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$CardanoAddressEnterpriseImplToJson(this, );
}
}


abstract class CardanoAddressEnterprise extends CardanoAddress {
   factory CardanoAddressEnterprise({@byteListConverter required final  ByteList bytes}) = _$CardanoAddressEnterpriseImpl;
   CardanoAddressEnterprise._(): super._();

  factory CardanoAddressEnterprise.fromJson(Map<String, dynamic> json) = _$CardanoAddressEnterpriseImpl.fromJson;

@override@byteListConverter ByteList get bytes;
/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoAddressEnterpriseImplCopyWith<_$CardanoAddressEnterpriseImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CardanoAddressRewardImplCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory _$$CardanoAddressRewardImplCopyWith(_$CardanoAddressRewardImpl value, $Res Function(_$CardanoAddressRewardImpl) then) = __$$CardanoAddressRewardImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});



}

/// @nodoc
class __$$CardanoAddressRewardImplCopyWithImpl<$Res> extends _$CardanoAddressCopyWithImpl<$Res, _$CardanoAddressRewardImpl> implements _$$CardanoAddressRewardImplCopyWith<$Res> {
  __$$CardanoAddressRewardImplCopyWithImpl(_$CardanoAddressRewardImpl _value, $Res Function(_$CardanoAddressRewardImpl) _then)
      : super(_value, _then);


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_$CardanoAddressRewardImpl(
bytes: null == bytes ? _value.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$CardanoAddressRewardImpl extends CardanoAddressReward  {
   _$CardanoAddressRewardImpl({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'rewardRaw',super._();

  factory _$CardanoAddressRewardImpl.fromJson(Map<String, dynamic> json) => _$$CardanoAddressRewardImplFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


@override
String toString() {
  return 'CardanoAddress.rewardRaw(bytes: $bytes)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoAddressRewardImpl&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CardanoAddressRewardImplCopyWith<_$CardanoAddressRewardImpl> get copyWith => __$$CardanoAddressRewardImplCopyWithImpl<_$CardanoAddressRewardImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$CardanoAddressRewardImplToJson(this, );
}
}


abstract class CardanoAddressReward extends CardanoAddress {
   factory CardanoAddressReward({@byteListConverter required final  ByteList bytes}) = _$CardanoAddressRewardImpl;
   CardanoAddressReward._(): super._();

  factory CardanoAddressReward.fromJson(Map<String, dynamic> json) = _$CardanoAddressRewardImpl.fromJson;

@override@byteListConverter ByteList get bytes;
/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CardanoAddressRewardImplCopyWith<_$CardanoAddressRewardImpl> get copyWith => throw _privateConstructorUsedError;

}
