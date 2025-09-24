// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CardanoAddress _$CardanoAddressFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'byronRaw':
          return CardanoAddressByron.fromJson(
            json
          );
                case 'pointerRaw':
          return CardanoAddressPointer.fromJson(
            json
          );
                case 'baseRaw':
          return CardanoAddressBase.fromJson(
            json
          );
                case 'enterpriseRaw':
          return CardanoAddressEnterprise.fromJson(
            json
          );
                case 'rewardRaw':
          return CardanoAddressReward.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'CardanoAddress',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$CardanoAddress {

 String get hrp; String get bech32Encoded; String get hexEncoded; Uint8List get credentialsBytes; Uint8List? get stakeCredentialsBytes; String get credentials; String get credentialsBech32; String? get stakeCredentials; String? get stakeBech32Encoded; NetworkId get networkId; Lazy<CredentialType> get credentialsType; AddressType get addressType;@byteListConverter ByteList get bytes;
/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoAddressCopyWith<CardanoAddress> get copyWith => _$CardanoAddressCopyWithImpl<CardanoAddress>(this as CardanoAddress, _$identity);

  /// Serializes this CardanoAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoAddress&&(identical(other.hrp, hrp) || other.hrp == hrp)&&(identical(other.bech32Encoded, bech32Encoded) || other.bech32Encoded == bech32Encoded)&&(identical(other.hexEncoded, hexEncoded) || other.hexEncoded == hexEncoded)&&const DeepCollectionEquality().equals(other.credentialsBytes, credentialsBytes)&&const DeepCollectionEquality().equals(other.stakeCredentialsBytes, stakeCredentialsBytes)&&(identical(other.credentials, credentials) || other.credentials == credentials)&&(identical(other.credentialsBech32, credentialsBech32) || other.credentialsBech32 == credentialsBech32)&&(identical(other.stakeCredentials, stakeCredentials) || other.stakeCredentials == stakeCredentials)&&(identical(other.stakeBech32Encoded, stakeBech32Encoded) || other.stakeBech32Encoded == stakeBech32Encoded)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&(identical(other.credentialsType, credentialsType) || other.credentialsType == credentialsType)&&(identical(other.addressType, addressType) || other.addressType == addressType)&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hrp,bech32Encoded,hexEncoded,const DeepCollectionEquality().hash(credentialsBytes),const DeepCollectionEquality().hash(stakeCredentialsBytes),credentials,credentialsBech32,stakeCredentials,stakeBech32Encoded,networkId,credentialsType,addressType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'CardanoAddress(hrp: $hrp, bech32Encoded: $bech32Encoded, hexEncoded: $hexEncoded, credentialsBytes: $credentialsBytes, stakeCredentialsBytes: $stakeCredentialsBytes, credentials: $credentials, credentialsBech32: $credentialsBech32, stakeCredentials: $stakeCredentials, stakeBech32Encoded: $stakeBech32Encoded, networkId: $networkId, credentialsType: $credentialsType, addressType: $addressType, bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $CardanoAddressCopyWith<$Res>  {
  factory $CardanoAddressCopyWith(CardanoAddress value, $Res Function(CardanoAddress) _then) = _$CardanoAddressCopyWithImpl;
@useResult
$Res call({
@byteListConverter ByteList bytes
});




}
/// @nodoc
class _$CardanoAddressCopyWithImpl<$Res>
    implements $CardanoAddressCopyWith<$Res> {
  _$CardanoAddressCopyWithImpl(this._self, this._then);

  final CardanoAddress _self;
  final $Res Function(CardanoAddress) _then;

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_self.copyWith(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}

}



/// @nodoc
@JsonSerializable()

class CardanoAddressByron extends CardanoAddress {
   CardanoAddressByron({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'byronRaw',super._();
  factory CardanoAddressByron.fromJson(Map<String, dynamic> json) => _$CardanoAddressByronFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoAddressByronCopyWith<CardanoAddressByron> get copyWith => _$CardanoAddressByronCopyWithImpl<CardanoAddressByron>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardanoAddressByronToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoAddressByron&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'CardanoAddress.byronRaw(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $CardanoAddressByronCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory $CardanoAddressByronCopyWith(CardanoAddressByron value, $Res Function(CardanoAddressByron) _then) = _$CardanoAddressByronCopyWithImpl;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});




}
/// @nodoc
class _$CardanoAddressByronCopyWithImpl<$Res>
    implements $CardanoAddressByronCopyWith<$Res> {
  _$CardanoAddressByronCopyWithImpl(this._self, this._then);

  final CardanoAddressByron _self;
  final $Res Function(CardanoAddressByron) _then;

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(CardanoAddressByron(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CardanoAddressPointer extends CardanoAddress {
   CardanoAddressPointer({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'pointerRaw',super._();
  factory CardanoAddressPointer.fromJson(Map<String, dynamic> json) => _$CardanoAddressPointerFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoAddressPointerCopyWith<CardanoAddressPointer> get copyWith => _$CardanoAddressPointerCopyWithImpl<CardanoAddressPointer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardanoAddressPointerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoAddressPointer&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'CardanoAddress.pointerRaw(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $CardanoAddressPointerCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory $CardanoAddressPointerCopyWith(CardanoAddressPointer value, $Res Function(CardanoAddressPointer) _then) = _$CardanoAddressPointerCopyWithImpl;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});




}
/// @nodoc
class _$CardanoAddressPointerCopyWithImpl<$Res>
    implements $CardanoAddressPointerCopyWith<$Res> {
  _$CardanoAddressPointerCopyWithImpl(this._self, this._then);

  final CardanoAddressPointer _self;
  final $Res Function(CardanoAddressPointer) _then;

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(CardanoAddressPointer(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CardanoAddressBase extends CardanoAddress {
   CardanoAddressBase({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'baseRaw',super._();
  factory CardanoAddressBase.fromJson(Map<String, dynamic> json) => _$CardanoAddressBaseFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoAddressBaseCopyWith<CardanoAddressBase> get copyWith => _$CardanoAddressBaseCopyWithImpl<CardanoAddressBase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardanoAddressBaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoAddressBase&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'CardanoAddress.baseRaw(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $CardanoAddressBaseCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory $CardanoAddressBaseCopyWith(CardanoAddressBase value, $Res Function(CardanoAddressBase) _then) = _$CardanoAddressBaseCopyWithImpl;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});




}
/// @nodoc
class _$CardanoAddressBaseCopyWithImpl<$Res>
    implements $CardanoAddressBaseCopyWith<$Res> {
  _$CardanoAddressBaseCopyWithImpl(this._self, this._then);

  final CardanoAddressBase _self;
  final $Res Function(CardanoAddressBase) _then;

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(CardanoAddressBase(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CardanoAddressEnterprise extends CardanoAddress {
   CardanoAddressEnterprise({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'enterpriseRaw',super._();
  factory CardanoAddressEnterprise.fromJson(Map<String, dynamic> json) => _$CardanoAddressEnterpriseFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoAddressEnterpriseCopyWith<CardanoAddressEnterprise> get copyWith => _$CardanoAddressEnterpriseCopyWithImpl<CardanoAddressEnterprise>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardanoAddressEnterpriseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoAddressEnterprise&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'CardanoAddress.enterpriseRaw(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $CardanoAddressEnterpriseCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory $CardanoAddressEnterpriseCopyWith(CardanoAddressEnterprise value, $Res Function(CardanoAddressEnterprise) _then) = _$CardanoAddressEnterpriseCopyWithImpl;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});




}
/// @nodoc
class _$CardanoAddressEnterpriseCopyWithImpl<$Res>
    implements $CardanoAddressEnterpriseCopyWith<$Res> {
  _$CardanoAddressEnterpriseCopyWithImpl(this._self, this._then);

  final CardanoAddressEnterprise _self;
  final $Res Function(CardanoAddressEnterprise) _then;

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(CardanoAddressEnterprise(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CardanoAddressReward extends CardanoAddress {
   CardanoAddressReward({@byteListConverter required this.bytes, final  String? $type}): $type = $type ?? 'rewardRaw',super._();
  factory CardanoAddressReward.fromJson(Map<String, dynamic> json) => _$CardanoAddressRewardFromJson(json);

@override@byteListConverter final  ByteList bytes;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoAddressRewardCopyWith<CardanoAddressReward> get copyWith => _$CardanoAddressRewardCopyWithImpl<CardanoAddressReward>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardanoAddressRewardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoAddressReward&&const DeepCollectionEquality().equals(other.bytes, bytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'CardanoAddress.rewardRaw(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $CardanoAddressRewardCopyWith<$Res> implements $CardanoAddressCopyWith<$Res> {
  factory $CardanoAddressRewardCopyWith(CardanoAddressReward value, $Res Function(CardanoAddressReward) _then) = _$CardanoAddressRewardCopyWithImpl;
@override @useResult
$Res call({
@byteListConverter ByteList bytes
});




}
/// @nodoc
class _$CardanoAddressRewardCopyWithImpl<$Res>
    implements $CardanoAddressRewardCopyWith<$Res> {
  _$CardanoAddressRewardCopyWithImpl(this._self, this._then);

  final CardanoAddressReward _self;
  final $Res Function(CardanoAddressReward) _then;

/// Create a copy of CardanoAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(CardanoAddressReward(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as ByteList,
  ));
}


}

// dart format on
