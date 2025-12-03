// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Blake2bHash256 {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Blake2bHash256);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Blake2bHash256()';
}


}

/// @nodoc
class $Blake2bHash256CopyWith<$Res>  {
$Blake2bHash256CopyWith(Blake2bHash256 _, $Res Function(Blake2bHash256) __);
}



/// @nodoc


class Blake2bHash256Passed extends Blake2bHash256 {
  const Blake2bHash256Passed({required this.blake2bHash256}): super._();
  

 final  String blake2bHash256;

/// Create a copy of Blake2bHash256
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Blake2bHash256PassedCopyWith<Blake2bHash256Passed> get copyWith => _$Blake2bHash256PassedCopyWithImpl<Blake2bHash256Passed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Blake2bHash256Passed&&(identical(other.blake2bHash256, blake2bHash256) || other.blake2bHash256 == blake2bHash256));
}


@override
int get hashCode => Object.hash(runtimeType,blake2bHash256);

@override
String toString() {
  return 'Blake2bHash256.passed(blake2bHash256: $blake2bHash256)';
}


}

/// @nodoc
abstract mixin class $Blake2bHash256PassedCopyWith<$Res> implements $Blake2bHash256CopyWith<$Res> {
  factory $Blake2bHash256PassedCopyWith(Blake2bHash256Passed value, $Res Function(Blake2bHash256Passed) _then) = _$Blake2bHash256PassedCopyWithImpl;
@useResult
$Res call({
 String blake2bHash256
});




}
/// @nodoc
class _$Blake2bHash256PassedCopyWithImpl<$Res>
    implements $Blake2bHash256PassedCopyWith<$Res> {
  _$Blake2bHash256PassedCopyWithImpl(this._self, this._then);

  final Blake2bHash256Passed _self;
  final $Res Function(Blake2bHash256Passed) _then;

/// Create a copy of Blake2bHash256
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? blake2bHash256 = null,}) {
  return _then(Blake2bHash256Passed(
blake2bHash256: null == blake2bHash256 ? _self.blake2bHash256 : blake2bHash256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Blake2bHash256Computed extends Blake2bHash256 {
  const _Blake2bHash256Computed({required this.blake2bHash256}): super._();
  

 final  String blake2bHash256;

/// Create a copy of Blake2bHash256
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Blake2bHash256ComputedCopyWith<_Blake2bHash256Computed> get copyWith => __$Blake2bHash256ComputedCopyWithImpl<_Blake2bHash256Computed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Blake2bHash256Computed&&(identical(other.blake2bHash256, blake2bHash256) || other.blake2bHash256 == blake2bHash256));
}


@override
int get hashCode => Object.hash(runtimeType,blake2bHash256);

@override
String toString() {
  return 'Blake2bHash256._computed(blake2bHash256: $blake2bHash256)';
}


}

/// @nodoc
abstract mixin class _$Blake2bHash256ComputedCopyWith<$Res> implements $Blake2bHash256CopyWith<$Res> {
  factory _$Blake2bHash256ComputedCopyWith(_Blake2bHash256Computed value, $Res Function(_Blake2bHash256Computed) _then) = __$Blake2bHash256ComputedCopyWithImpl;
@useResult
$Res call({
 String blake2bHash256
});




}
/// @nodoc
class __$Blake2bHash256ComputedCopyWithImpl<$Res>
    implements _$Blake2bHash256ComputedCopyWith<$Res> {
  __$Blake2bHash256ComputedCopyWithImpl(this._self, this._then);

  final _Blake2bHash256Computed _self;
  final $Res Function(_Blake2bHash256Computed) _then;

/// Create a copy of Blake2bHash256
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? blake2bHash256 = null,}) {
  return _then(_Blake2bHash256Computed(
blake2bHash256: null == blake2bHash256 ? _self.blake2bHash256 : blake2bHash256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Blake2bHash256None extends Blake2bHash256 {
  const Blake2bHash256None(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Blake2bHash256None);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Blake2bHash256.none()';
}


}




/// @nodoc
mixin _$CardanoTransactionBody {

// Non-null when deserialized from hex/cbor
 Blake2bHash256 get blake2bHash256;// Original key order from CBOR (null for manually created bodies)
 List<int>? get originalKeyOrder;// TX Body Fields
 CardanoTransactionInputs get inputs;// 0
 List<CardanoTransactionOutput> get outputs;// 1
 BigInt get fee;// 2
// OPTIONAL
 BigInt? get ttl;// 3
 Certificates? get certs;// 4
 List<Withdraw>? get withdrawals;// 5
// 6 - update ; what is it?
 Uint8List? get metadataHash;// 7
 BigInt? get validityStartInterval;// 8
 List<MultiAsset>? get mint;// 9
 Uint8List? get scriptDataHash;// 11
 CardanoTransactionInputs? get collateral;// 13
 RequiredSigners? get requiredSigners;// 14
 NetworkId? get networkId;// 15
// BABBAGE ERA
 CardanoTransactionOutput? get collateralReturn;// 16
 BigInt? get totalCollateral;// 17
 CardanoTransactionInputs? get referenceInputs;// 18
// CONWAY ERA
 VotingProcedures? get votingProcedures;// 19
 List<ProposalProcedure>? get proposalProcedures;// 20
 CborInt? get currentTreasuryValue;// 21
 CborInt? get donation;
/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoTransactionBodyCopyWith<CardanoTransactionBody> get copyWith => _$CardanoTransactionBodyCopyWithImpl<CardanoTransactionBody>(this as CardanoTransactionBody, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoTransactionBody&&(identical(other.blake2bHash256, blake2bHash256) || other.blake2bHash256 == blake2bHash256)&&const DeepCollectionEquality().equals(other.originalKeyOrder, originalKeyOrder)&&(identical(other.inputs, inputs) || other.inputs == inputs)&&const DeepCollectionEquality().equals(other.outputs, outputs)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.certs, certs) || other.certs == certs)&&const DeepCollectionEquality().equals(other.withdrawals, withdrawals)&&const DeepCollectionEquality().equals(other.metadataHash, metadataHash)&&(identical(other.validityStartInterval, validityStartInterval) || other.validityStartInterval == validityStartInterval)&&const DeepCollectionEquality().equals(other.mint, mint)&&const DeepCollectionEquality().equals(other.scriptDataHash, scriptDataHash)&&(identical(other.collateral, collateral) || other.collateral == collateral)&&(identical(other.requiredSigners, requiredSigners) || other.requiredSigners == requiredSigners)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&(identical(other.collateralReturn, collateralReturn) || other.collateralReturn == collateralReturn)&&(identical(other.totalCollateral, totalCollateral) || other.totalCollateral == totalCollateral)&&(identical(other.referenceInputs, referenceInputs) || other.referenceInputs == referenceInputs)&&(identical(other.votingProcedures, votingProcedures) || other.votingProcedures == votingProcedures)&&const DeepCollectionEquality().equals(other.proposalProcedures, proposalProcedures)&&(identical(other.currentTreasuryValue, currentTreasuryValue) || other.currentTreasuryValue == currentTreasuryValue)&&(identical(other.donation, donation) || other.donation == donation));
}


@override
int get hashCode => Object.hashAll([runtimeType,blake2bHash256,const DeepCollectionEquality().hash(originalKeyOrder),inputs,const DeepCollectionEquality().hash(outputs),fee,ttl,certs,const DeepCollectionEquality().hash(withdrawals),const DeepCollectionEquality().hash(metadataHash),validityStartInterval,const DeepCollectionEquality().hash(mint),const DeepCollectionEquality().hash(scriptDataHash),collateral,requiredSigners,networkId,collateralReturn,totalCollateral,referenceInputs,votingProcedures,const DeepCollectionEquality().hash(proposalProcedures),currentTreasuryValue,donation]);

@override
String toString() {
  return 'CardanoTransactionBody(blake2bHash256: $blake2bHash256, originalKeyOrder: $originalKeyOrder, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certs: $certs, withdrawals: $withdrawals, metadataHash: $metadataHash, validityStartInterval: $validityStartInterval, mint: $mint, scriptDataHash: $scriptDataHash, collateral: $collateral, requiredSigners: $requiredSigners, networkId: $networkId, collateralReturn: $collateralReturn, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, proposalProcedures: $proposalProcedures, currentTreasuryValue: $currentTreasuryValue, donation: $donation)';
}


}

/// @nodoc
abstract mixin class $CardanoTransactionBodyCopyWith<$Res>  {
  factory $CardanoTransactionBodyCopyWith(CardanoTransactionBody value, $Res Function(CardanoTransactionBody) _then) = _$CardanoTransactionBodyCopyWithImpl;
@useResult
$Res call({
 Blake2bHash256 blake2bHash256, List<int>? originalKeyOrder, CardanoTransactionInputs inputs, List<CardanoTransactionOutput> outputs, BigInt fee, BigInt? ttl, Certificates? certs, List<Withdraw>? withdrawals, Uint8List? metadataHash, BigInt? validityStartInterval, List<MultiAsset>? mint, Uint8List? scriptDataHash, CardanoTransactionInputs? collateral, RequiredSigners? requiredSigners, NetworkId? networkId, CardanoTransactionOutput? collateralReturn, BigInt? totalCollateral, CardanoTransactionInputs? referenceInputs, VotingProcedures? votingProcedures, List<ProposalProcedure>? proposalProcedures, CborInt? currentTreasuryValue, CborInt? donation
});


$Blake2bHash256CopyWith<$Res> get blake2bHash256;$CardanoTransactionInputsCopyWith<$Res> get inputs;$CertificatesCopyWith<$Res>? get certs;$CardanoTransactionInputsCopyWith<$Res>? get collateral;$RequiredSignersCopyWith<$Res>? get requiredSigners;$CardanoTransactionOutputCopyWith<$Res>? get collateralReturn;$CardanoTransactionInputsCopyWith<$Res>? get referenceInputs;$VotingProceduresCopyWith<$Res>? get votingProcedures;

}
/// @nodoc
class _$CardanoTransactionBodyCopyWithImpl<$Res>
    implements $CardanoTransactionBodyCopyWith<$Res> {
  _$CardanoTransactionBodyCopyWithImpl(this._self, this._then);

  final CardanoTransactionBody _self;
  final $Res Function(CardanoTransactionBody) _then;

/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blake2bHash256 = null,Object? originalKeyOrder = freezed,Object? inputs = null,Object? outputs = null,Object? fee = null,Object? ttl = freezed,Object? certs = freezed,Object? withdrawals = freezed,Object? metadataHash = freezed,Object? validityStartInterval = freezed,Object? mint = freezed,Object? scriptDataHash = freezed,Object? collateral = freezed,Object? requiredSigners = freezed,Object? networkId = freezed,Object? collateralReturn = freezed,Object? totalCollateral = freezed,Object? referenceInputs = freezed,Object? votingProcedures = freezed,Object? proposalProcedures = freezed,Object? currentTreasuryValue = freezed,Object? donation = freezed,}) {
  return _then(_self.copyWith(
blake2bHash256: null == blake2bHash256 ? _self.blake2bHash256 : blake2bHash256 // ignore: cast_nullable_to_non_nullable
as Blake2bHash256,originalKeyOrder: freezed == originalKeyOrder ? _self.originalKeyOrder : originalKeyOrder // ignore: cast_nullable_to_non_nullable
as List<int>?,inputs: null == inputs ? _self.inputs : inputs // ignore: cast_nullable_to_non_nullable
as CardanoTransactionInputs,outputs: null == outputs ? _self.outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<CardanoTransactionOutput>,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as BigInt,ttl: freezed == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as BigInt?,certs: freezed == certs ? _self.certs : certs // ignore: cast_nullable_to_non_nullable
as Certificates?,withdrawals: freezed == withdrawals ? _self.withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<Withdraw>?,metadataHash: freezed == metadataHash ? _self.metadataHash : metadataHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,validityStartInterval: freezed == validityStartInterval ? _self.validityStartInterval : validityStartInterval // ignore: cast_nullable_to_non_nullable
as BigInt?,mint: freezed == mint ? _self.mint : mint // ignore: cast_nullable_to_non_nullable
as List<MultiAsset>?,scriptDataHash: freezed == scriptDataHash ? _self.scriptDataHash : scriptDataHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,collateral: freezed == collateral ? _self.collateral : collateral // ignore: cast_nullable_to_non_nullable
as CardanoTransactionInputs?,requiredSigners: freezed == requiredSigners ? _self.requiredSigners : requiredSigners // ignore: cast_nullable_to_non_nullable
as RequiredSigners?,networkId: freezed == networkId ? _self.networkId : networkId // ignore: cast_nullable_to_non_nullable
as NetworkId?,collateralReturn: freezed == collateralReturn ? _self.collateralReturn : collateralReturn // ignore: cast_nullable_to_non_nullable
as CardanoTransactionOutput?,totalCollateral: freezed == totalCollateral ? _self.totalCollateral : totalCollateral // ignore: cast_nullable_to_non_nullable
as BigInt?,referenceInputs: freezed == referenceInputs ? _self.referenceInputs : referenceInputs // ignore: cast_nullable_to_non_nullable
as CardanoTransactionInputs?,votingProcedures: freezed == votingProcedures ? _self.votingProcedures : votingProcedures // ignore: cast_nullable_to_non_nullable
as VotingProcedures?,proposalProcedures: freezed == proposalProcedures ? _self.proposalProcedures : proposalProcedures // ignore: cast_nullable_to_non_nullable
as List<ProposalProcedure>?,currentTreasuryValue: freezed == currentTreasuryValue ? _self.currentTreasuryValue : currentTreasuryValue // ignore: cast_nullable_to_non_nullable
as CborInt?,donation: freezed == donation ? _self.donation : donation // ignore: cast_nullable_to_non_nullable
as CborInt?,
  ));
}
/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Blake2bHash256CopyWith<$Res> get blake2bHash256 {
  
  return $Blake2bHash256CopyWith<$Res>(_self.blake2bHash256, (value) {
    return _then(_self.copyWith(blake2bHash256: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionInputsCopyWith<$Res> get inputs {
  
  return $CardanoTransactionInputsCopyWith<$Res>(_self.inputs, (value) {
    return _then(_self.copyWith(inputs: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CertificatesCopyWith<$Res>? get certs {
    if (_self.certs == null) {
    return null;
  }

  return $CertificatesCopyWith<$Res>(_self.certs!, (value) {
    return _then(_self.copyWith(certs: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionInputsCopyWith<$Res>? get collateral {
    if (_self.collateral == null) {
    return null;
  }

  return $CardanoTransactionInputsCopyWith<$Res>(_self.collateral!, (value) {
    return _then(_self.copyWith(collateral: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequiredSignersCopyWith<$Res>? get requiredSigners {
    if (_self.requiredSigners == null) {
    return null;
  }

  return $RequiredSignersCopyWith<$Res>(_self.requiredSigners!, (value) {
    return _then(_self.copyWith(requiredSigners: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionOutputCopyWith<$Res>? get collateralReturn {
    if (_self.collateralReturn == null) {
    return null;
  }

  return $CardanoTransactionOutputCopyWith<$Res>(_self.collateralReturn!, (value) {
    return _then(_self.copyWith(collateralReturn: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionInputsCopyWith<$Res>? get referenceInputs {
    if (_self.referenceInputs == null) {
    return null;
  }

  return $CardanoTransactionInputsCopyWith<$Res>(_self.referenceInputs!, (value) {
    return _then(_self.copyWith(referenceInputs: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VotingProceduresCopyWith<$Res>? get votingProcedures {
    if (_self.votingProcedures == null) {
    return null;
  }

  return $VotingProceduresCopyWith<$Res>(_self.votingProcedures!, (value) {
    return _then(_self.copyWith(votingProcedures: value));
  });
}
}



/// @nodoc


class _CardanoTransactionBody extends CardanoTransactionBody {
   _CardanoTransactionBody({required this.blake2bHash256, required final  List<int>? originalKeyOrder, required this.inputs, required final  List<CardanoTransactionOutput> outputs, required this.fee, required this.ttl, required this.certs, required final  List<Withdraw>? withdrawals, required this.metadataHash, required this.validityStartInterval, required final  List<MultiAsset>? mint, required this.scriptDataHash, required this.collateral, required this.requiredSigners, required this.networkId, required this.collateralReturn, required this.totalCollateral, required this.referenceInputs, required this.votingProcedures, required final  List<ProposalProcedure>? proposalProcedures, required this.currentTreasuryValue, required this.donation}): _originalKeyOrder = originalKeyOrder,_outputs = outputs,_withdrawals = withdrawals,_mint = mint,_proposalProcedures = proposalProcedures,super._();
  

// Non-null when deserialized from hex/cbor
@override final  Blake2bHash256 blake2bHash256;
// Original key order from CBOR (null for manually created bodies)
 final  List<int>? _originalKeyOrder;
// Original key order from CBOR (null for manually created bodies)
@override List<int>? get originalKeyOrder {
  final value = _originalKeyOrder;
  if (value == null) return null;
  if (_originalKeyOrder is EqualUnmodifiableListView) return _originalKeyOrder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// TX Body Fields
@override final  CardanoTransactionInputs inputs;
// 0
 final  List<CardanoTransactionOutput> _outputs;
// 0
@override List<CardanoTransactionOutput> get outputs {
  if (_outputs is EqualUnmodifiableListView) return _outputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_outputs);
}

// 1
@override final  BigInt fee;
// 2
// OPTIONAL
@override final  BigInt? ttl;
// 3
@override final  Certificates? certs;
// 4
 final  List<Withdraw>? _withdrawals;
// 4
@override List<Withdraw>? get withdrawals {
  final value = _withdrawals;
  if (value == null) return null;
  if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// 5
// 6 - update ; what is it?
@override final  Uint8List? metadataHash;
// 7
@override final  BigInt? validityStartInterval;
// 8
 final  List<MultiAsset>? _mint;
// 8
@override List<MultiAsset>? get mint {
  final value = _mint;
  if (value == null) return null;
  if (_mint is EqualUnmodifiableListView) return _mint;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// 9
@override final  Uint8List? scriptDataHash;
// 11
@override final  CardanoTransactionInputs? collateral;
// 13
@override final  RequiredSigners? requiredSigners;
// 14
@override final  NetworkId? networkId;
// 15
// BABBAGE ERA
@override final  CardanoTransactionOutput? collateralReturn;
// 16
@override final  BigInt? totalCollateral;
// 17
@override final  CardanoTransactionInputs? referenceInputs;
// 18
// CONWAY ERA
@override final  VotingProcedures? votingProcedures;
// 19
 final  List<ProposalProcedure>? _proposalProcedures;
// 19
@override List<ProposalProcedure>? get proposalProcedures {
  final value = _proposalProcedures;
  if (value == null) return null;
  if (_proposalProcedures is EqualUnmodifiableListView) return _proposalProcedures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// 20
@override final  CborInt? currentTreasuryValue;
// 21
@override final  CborInt? donation;

/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardanoTransactionBodyCopyWith<_CardanoTransactionBody> get copyWith => __$CardanoTransactionBodyCopyWithImpl<_CardanoTransactionBody>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardanoTransactionBody&&(identical(other.blake2bHash256, blake2bHash256) || other.blake2bHash256 == blake2bHash256)&&const DeepCollectionEquality().equals(other._originalKeyOrder, _originalKeyOrder)&&(identical(other.inputs, inputs) || other.inputs == inputs)&&const DeepCollectionEquality().equals(other._outputs, _outputs)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.certs, certs) || other.certs == certs)&&const DeepCollectionEquality().equals(other._withdrawals, _withdrawals)&&const DeepCollectionEquality().equals(other.metadataHash, metadataHash)&&(identical(other.validityStartInterval, validityStartInterval) || other.validityStartInterval == validityStartInterval)&&const DeepCollectionEquality().equals(other._mint, _mint)&&const DeepCollectionEquality().equals(other.scriptDataHash, scriptDataHash)&&(identical(other.collateral, collateral) || other.collateral == collateral)&&(identical(other.requiredSigners, requiredSigners) || other.requiredSigners == requiredSigners)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&(identical(other.collateralReturn, collateralReturn) || other.collateralReturn == collateralReturn)&&(identical(other.totalCollateral, totalCollateral) || other.totalCollateral == totalCollateral)&&(identical(other.referenceInputs, referenceInputs) || other.referenceInputs == referenceInputs)&&(identical(other.votingProcedures, votingProcedures) || other.votingProcedures == votingProcedures)&&const DeepCollectionEquality().equals(other._proposalProcedures, _proposalProcedures)&&(identical(other.currentTreasuryValue, currentTreasuryValue) || other.currentTreasuryValue == currentTreasuryValue)&&(identical(other.donation, donation) || other.donation == donation));
}


@override
int get hashCode => Object.hashAll([runtimeType,blake2bHash256,const DeepCollectionEquality().hash(_originalKeyOrder),inputs,const DeepCollectionEquality().hash(_outputs),fee,ttl,certs,const DeepCollectionEquality().hash(_withdrawals),const DeepCollectionEquality().hash(metadataHash),validityStartInterval,const DeepCollectionEquality().hash(_mint),const DeepCollectionEquality().hash(scriptDataHash),collateral,requiredSigners,networkId,collateralReturn,totalCollateral,referenceInputs,votingProcedures,const DeepCollectionEquality().hash(_proposalProcedures),currentTreasuryValue,donation]);

@override
String toString() {
  return 'CardanoTransactionBody._hidden(blake2bHash256: $blake2bHash256, originalKeyOrder: $originalKeyOrder, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certs: $certs, withdrawals: $withdrawals, metadataHash: $metadataHash, validityStartInterval: $validityStartInterval, mint: $mint, scriptDataHash: $scriptDataHash, collateral: $collateral, requiredSigners: $requiredSigners, networkId: $networkId, collateralReturn: $collateralReturn, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, proposalProcedures: $proposalProcedures, currentTreasuryValue: $currentTreasuryValue, donation: $donation)';
}


}

/// @nodoc
abstract mixin class _$CardanoTransactionBodyCopyWith<$Res> implements $CardanoTransactionBodyCopyWith<$Res> {
  factory _$CardanoTransactionBodyCopyWith(_CardanoTransactionBody value, $Res Function(_CardanoTransactionBody) _then) = __$CardanoTransactionBodyCopyWithImpl;
@override @useResult
$Res call({
 Blake2bHash256 blake2bHash256, List<int>? originalKeyOrder, CardanoTransactionInputs inputs, List<CardanoTransactionOutput> outputs, BigInt fee, BigInt? ttl, Certificates? certs, List<Withdraw>? withdrawals, Uint8List? metadataHash, BigInt? validityStartInterval, List<MultiAsset>? mint, Uint8List? scriptDataHash, CardanoTransactionInputs? collateral, RequiredSigners? requiredSigners, NetworkId? networkId, CardanoTransactionOutput? collateralReturn, BigInt? totalCollateral, CardanoTransactionInputs? referenceInputs, VotingProcedures? votingProcedures, List<ProposalProcedure>? proposalProcedures, CborInt? currentTreasuryValue, CborInt? donation
});


@override $Blake2bHash256CopyWith<$Res> get blake2bHash256;@override $CardanoTransactionInputsCopyWith<$Res> get inputs;@override $CertificatesCopyWith<$Res>? get certs;@override $CardanoTransactionInputsCopyWith<$Res>? get collateral;@override $RequiredSignersCopyWith<$Res>? get requiredSigners;@override $CardanoTransactionOutputCopyWith<$Res>? get collateralReturn;@override $CardanoTransactionInputsCopyWith<$Res>? get referenceInputs;@override $VotingProceduresCopyWith<$Res>? get votingProcedures;

}
/// @nodoc
class __$CardanoTransactionBodyCopyWithImpl<$Res>
    implements _$CardanoTransactionBodyCopyWith<$Res> {
  __$CardanoTransactionBodyCopyWithImpl(this._self, this._then);

  final _CardanoTransactionBody _self;
  final $Res Function(_CardanoTransactionBody) _then;

/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blake2bHash256 = null,Object? originalKeyOrder = freezed,Object? inputs = null,Object? outputs = null,Object? fee = null,Object? ttl = freezed,Object? certs = freezed,Object? withdrawals = freezed,Object? metadataHash = freezed,Object? validityStartInterval = freezed,Object? mint = freezed,Object? scriptDataHash = freezed,Object? collateral = freezed,Object? requiredSigners = freezed,Object? networkId = freezed,Object? collateralReturn = freezed,Object? totalCollateral = freezed,Object? referenceInputs = freezed,Object? votingProcedures = freezed,Object? proposalProcedures = freezed,Object? currentTreasuryValue = freezed,Object? donation = freezed,}) {
  return _then(_CardanoTransactionBody(
blake2bHash256: null == blake2bHash256 ? _self.blake2bHash256 : blake2bHash256 // ignore: cast_nullable_to_non_nullable
as Blake2bHash256,originalKeyOrder: freezed == originalKeyOrder ? _self._originalKeyOrder : originalKeyOrder // ignore: cast_nullable_to_non_nullable
as List<int>?,inputs: null == inputs ? _self.inputs : inputs // ignore: cast_nullable_to_non_nullable
as CardanoTransactionInputs,outputs: null == outputs ? _self._outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<CardanoTransactionOutput>,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as BigInt,ttl: freezed == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as BigInt?,certs: freezed == certs ? _self.certs : certs // ignore: cast_nullable_to_non_nullable
as Certificates?,withdrawals: freezed == withdrawals ? _self._withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<Withdraw>?,metadataHash: freezed == metadataHash ? _self.metadataHash : metadataHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,validityStartInterval: freezed == validityStartInterval ? _self.validityStartInterval : validityStartInterval // ignore: cast_nullable_to_non_nullable
as BigInt?,mint: freezed == mint ? _self._mint : mint // ignore: cast_nullable_to_non_nullable
as List<MultiAsset>?,scriptDataHash: freezed == scriptDataHash ? _self.scriptDataHash : scriptDataHash // ignore: cast_nullable_to_non_nullable
as Uint8List?,collateral: freezed == collateral ? _self.collateral : collateral // ignore: cast_nullable_to_non_nullable
as CardanoTransactionInputs?,requiredSigners: freezed == requiredSigners ? _self.requiredSigners : requiredSigners // ignore: cast_nullable_to_non_nullable
as RequiredSigners?,networkId: freezed == networkId ? _self.networkId : networkId // ignore: cast_nullable_to_non_nullable
as NetworkId?,collateralReturn: freezed == collateralReturn ? _self.collateralReturn : collateralReturn // ignore: cast_nullable_to_non_nullable
as CardanoTransactionOutput?,totalCollateral: freezed == totalCollateral ? _self.totalCollateral : totalCollateral // ignore: cast_nullable_to_non_nullable
as BigInt?,referenceInputs: freezed == referenceInputs ? _self.referenceInputs : referenceInputs // ignore: cast_nullable_to_non_nullable
as CardanoTransactionInputs?,votingProcedures: freezed == votingProcedures ? _self.votingProcedures : votingProcedures // ignore: cast_nullable_to_non_nullable
as VotingProcedures?,proposalProcedures: freezed == proposalProcedures ? _self._proposalProcedures : proposalProcedures // ignore: cast_nullable_to_non_nullable
as List<ProposalProcedure>?,currentTreasuryValue: freezed == currentTreasuryValue ? _self.currentTreasuryValue : currentTreasuryValue // ignore: cast_nullable_to_non_nullable
as CborInt?,donation: freezed == donation ? _self.donation : donation // ignore: cast_nullable_to_non_nullable
as CborInt?,
  ));
}

/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Blake2bHash256CopyWith<$Res> get blake2bHash256 {
  
  return $Blake2bHash256CopyWith<$Res>(_self.blake2bHash256, (value) {
    return _then(_self.copyWith(blake2bHash256: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionInputsCopyWith<$Res> get inputs {
  
  return $CardanoTransactionInputsCopyWith<$Res>(_self.inputs, (value) {
    return _then(_self.copyWith(inputs: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CertificatesCopyWith<$Res>? get certs {
    if (_self.certs == null) {
    return null;
  }

  return $CertificatesCopyWith<$Res>(_self.certs!, (value) {
    return _then(_self.copyWith(certs: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionInputsCopyWith<$Res>? get collateral {
    if (_self.collateral == null) {
    return null;
  }

  return $CardanoTransactionInputsCopyWith<$Res>(_self.collateral!, (value) {
    return _then(_self.copyWith(collateral: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequiredSignersCopyWith<$Res>? get requiredSigners {
    if (_self.requiredSigners == null) {
    return null;
  }

  return $RequiredSignersCopyWith<$Res>(_self.requiredSigners!, (value) {
    return _then(_self.copyWith(requiredSigners: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionOutputCopyWith<$Res>? get collateralReturn {
    if (_self.collateralReturn == null) {
    return null;
  }

  return $CardanoTransactionOutputCopyWith<$Res>(_self.collateralReturn!, (value) {
    return _then(_self.copyWith(collateralReturn: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoTransactionInputsCopyWith<$Res>? get referenceInputs {
    if (_self.referenceInputs == null) {
    return null;
  }

  return $CardanoTransactionInputsCopyWith<$Res>(_self.referenceInputs!, (value) {
    return _then(_self.copyWith(referenceInputs: value));
  });
}/// Create a copy of CardanoTransactionBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VotingProceduresCopyWith<$Res>? get votingProcedures {
    if (_self.votingProcedures == null) {
    return null;
  }

  return $VotingProceduresCopyWith<$Res>(_self.votingProcedures!, (value) {
    return _then(_self.copyWith(votingProcedures: value));
  });
}
}

// dart format on
