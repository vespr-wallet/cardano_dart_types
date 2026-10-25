// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
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
int get hashCode {
    return Object.hash(runtimeType,blake2bHash256);
}

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
int get hashCode {
    return Object.hash(runtimeType,blake2bHash256);
}

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

 Blake2bHash256 get blake2bHash256; List<int>? get nonStandardKeyOrder; CborLengthType get lengthType; CborLengthType get outputsLengthType; CborLengthType get withdrawalsLengthType; CborLengthType get mintLengthType; CborLengthType get proposalProceduresLengthType; List<int> get proposalProceduresCborTags; CardanoTransactionInputs get inputs; List<CardanoTransactionOutput> get outputs; CborInt get fee; CborInt? get ttl; Certificates? get certs; List<Withdraw>? get withdrawals; Uint8List? get metadataHash; CborInt? get validityStartInterval; List<MultiAsset>? get mint; Uint8List? get scriptDataHash; CardanoTransactionInputs? get collateral; RequiredSigners? get requiredSigners; NetworkId? get networkId; CardanoTransactionOutput? get collateralReturn; CborInt? get totalCollateral; CardanoTransactionInputs? get referenceInputs; VotingProcedures? get votingProcedures; List<ProposalProcedure>? get proposalProcedures; CborInt? get currentTreasuryValue; CborInt? get donation;



@override
bool operator ==(Object other) {
  final _this = this as CardanoTransactionBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoTransactionBody&&(identical(other.blake2bHash256, _this.blake2bHash256) || other.blake2bHash256 == _this.blake2bHash256)&&const DeepCollectionEquality().equals(other.nonStandardKeyOrder, _this.nonStandardKeyOrder)&&(identical(other.lengthType, _this.lengthType) || other.lengthType == _this.lengthType)&&(identical(other.outputsLengthType, _this.outputsLengthType) || other.outputsLengthType == _this.outputsLengthType)&&(identical(other.withdrawalsLengthType, _this.withdrawalsLengthType) || other.withdrawalsLengthType == _this.withdrawalsLengthType)&&(identical(other.mintLengthType, _this.mintLengthType) || other.mintLengthType == _this.mintLengthType)&&(identical(other.proposalProceduresLengthType, _this.proposalProceduresLengthType) || other.proposalProceduresLengthType == _this.proposalProceduresLengthType)&&const DeepCollectionEquality().equals(other.proposalProceduresCborTags, _this.proposalProceduresCborTags)&&(identical(other.inputs, _this.inputs) || other.inputs == _this.inputs)&&const DeepCollectionEquality().equals(other.outputs, _this.outputs)&&(identical(other.fee, _this.fee) || other.fee == _this.fee)&&(identical(other.ttl, _this.ttl) || other.ttl == _this.ttl)&&(identical(other.certs, _this.certs) || other.certs == _this.certs)&&const DeepCollectionEquality().equals(other.withdrawals, _this.withdrawals)&&const DeepCollectionEquality().equals(other.metadataHash, _this.metadataHash)&&(identical(other.validityStartInterval, _this.validityStartInterval) || other.validityStartInterval == _this.validityStartInterval)&&const DeepCollectionEquality().equals(other.mint, _this.mint)&&const DeepCollectionEquality().equals(other.scriptDataHash, _this.scriptDataHash)&&(identical(other.collateral, _this.collateral) || other.collateral == _this.collateral)&&(identical(other.requiredSigners, _this.requiredSigners) || other.requiredSigners == _this.requiredSigners)&&(identical(other.networkId, _this.networkId) || other.networkId == _this.networkId)&&(identical(other.collateralReturn, _this.collateralReturn) || other.collateralReturn == _this.collateralReturn)&&(identical(other.totalCollateral, _this.totalCollateral) || other.totalCollateral == _this.totalCollateral)&&(identical(other.referenceInputs, _this.referenceInputs) || other.referenceInputs == _this.referenceInputs)&&(identical(other.votingProcedures, _this.votingProcedures) || other.votingProcedures == _this.votingProcedures)&&const DeepCollectionEquality().equals(other.proposalProcedures, _this.proposalProcedures)&&(identical(other.currentTreasuryValue, _this.currentTreasuryValue) || other.currentTreasuryValue == _this.currentTreasuryValue)&&(identical(other.donation, _this.donation) || other.donation == _this.donation));
}


@override
int get hashCode {
  final _this = this as CardanoTransactionBody;
  return Object.hashAll([runtimeType,_this.blake2bHash256,const DeepCollectionEquality().hash(_this.nonStandardKeyOrder),_this.lengthType,_this.outputsLengthType,_this.withdrawalsLengthType,_this.mintLengthType,_this.proposalProceduresLengthType,const DeepCollectionEquality().hash(_this.proposalProceduresCborTags),_this.inputs,const DeepCollectionEquality().hash(_this.outputs),_this.fee,_this.ttl,_this.certs,const DeepCollectionEquality().hash(_this.withdrawals),const DeepCollectionEquality().hash(_this.metadataHash),_this.validityStartInterval,const DeepCollectionEquality().hash(_this.mint),const DeepCollectionEquality().hash(_this.scriptDataHash),_this.collateral,_this.requiredSigners,_this.networkId,_this.collateralReturn,_this.totalCollateral,_this.referenceInputs,_this.votingProcedures,const DeepCollectionEquality().hash(_this.proposalProcedures),_this.currentTreasuryValue,_this.donation]);
}

@override
String toString() {
  final _this = this as CardanoTransactionBody;
  return 'CardanoTransactionBody(blake2bHash256: ${_this.blake2bHash256}, nonStandardKeyOrder: ${_this.nonStandardKeyOrder}, lengthType: ${_this.lengthType}, outputsLengthType: ${_this.outputsLengthType}, withdrawalsLengthType: ${_this.withdrawalsLengthType}, mintLengthType: ${_this.mintLengthType}, proposalProceduresLengthType: ${_this.proposalProceduresLengthType}, proposalProceduresCborTags: ${_this.proposalProceduresCborTags}, inputs: ${_this.inputs}, outputs: ${_this.outputs}, fee: ${_this.fee}, ttl: ${_this.ttl}, certs: ${_this.certs}, withdrawals: ${_this.withdrawals}, metadataHash: ${_this.metadataHash}, validityStartInterval: ${_this.validityStartInterval}, mint: ${_this.mint}, scriptDataHash: ${_this.scriptDataHash}, collateral: ${_this.collateral}, requiredSigners: ${_this.requiredSigners}, networkId: ${_this.networkId}, collateralReturn: ${_this.collateralReturn}, totalCollateral: ${_this.totalCollateral}, referenceInputs: ${_this.referenceInputs}, votingProcedures: ${_this.votingProcedures}, proposalProcedures: ${_this.proposalProcedures}, currentTreasuryValue: ${_this.currentTreasuryValue}, donation: ${_this.donation})';
}


}





/// @nodoc


class _CardanoTransactionBody extends CardanoTransactionBody {
   _CardanoTransactionBody({required this.blake2bHash256, required  List<int>? nonStandardKeyOrder, required this.lengthType, required this.outputsLengthType, required this.withdrawalsLengthType, required this.mintLengthType, required this.proposalProceduresLengthType, required  List<int> proposalProceduresCborTags, required this.inputs, required  List<CardanoTransactionOutput> outputs, required this.fee, required this.ttl, required this.certs, required  List<Withdraw>? withdrawals, required this.metadataHash, required this.validityStartInterval, required  List<MultiAsset>? mint, required this.scriptDataHash, required this.collateral, required this.requiredSigners, required this.networkId, required this.collateralReturn, required this.totalCollateral, required this.referenceInputs, required this.votingProcedures, required  List<ProposalProcedure>? proposalProcedures, required this.currentTreasuryValue, required this.donation}): _nonStandardKeyOrder = nonStandardKeyOrder,_proposalProceduresCborTags = proposalProceduresCborTags,_outputs = outputs,_withdrawals = withdrawals,_mint = mint,_proposalProcedures = proposalProcedures,super._();
  

@override final  Blake2bHash256 blake2bHash256;
 final  List<int>? _nonStandardKeyOrder;
@override List<int>? get nonStandardKeyOrder {
  final value = _nonStandardKeyOrder;
  if (value == null) return null;
  if (_nonStandardKeyOrder is EqualUnmodifiableListView) return _nonStandardKeyOrder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CborLengthType lengthType;
@override final  CborLengthType outputsLengthType;
@override final  CborLengthType withdrawalsLengthType;
@override final  CborLengthType mintLengthType;
@override final  CborLengthType proposalProceduresLengthType;
 final  List<int> _proposalProceduresCborTags;
@override List<int> get proposalProceduresCborTags {
  if (_proposalProceduresCborTags is EqualUnmodifiableListView) return _proposalProceduresCborTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_proposalProceduresCborTags);
}

@override final  CardanoTransactionInputs inputs;
 final  List<CardanoTransactionOutput> _outputs;
@override List<CardanoTransactionOutput> get outputs {
  if (_outputs is EqualUnmodifiableListView) return _outputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_outputs);
}

@override final  CborInt fee;
@override final  CborInt? ttl;
@override final  Certificates? certs;
 final  List<Withdraw>? _withdrawals;
@override List<Withdraw>? get withdrawals {
  final value = _withdrawals;
  if (value == null) return null;
  if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Uint8List? metadataHash;
@override final  CborInt? validityStartInterval;
 final  List<MultiAsset>? _mint;
@override List<MultiAsset>? get mint {
  final value = _mint;
  if (value == null) return null;
  if (_mint is EqualUnmodifiableListView) return _mint;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Uint8List? scriptDataHash;
@override final  CardanoTransactionInputs? collateral;
@override final  RequiredSigners? requiredSigners;
@override final  NetworkId? networkId;
@override final  CardanoTransactionOutput? collateralReturn;
@override final  CborInt? totalCollateral;
@override final  CardanoTransactionInputs? referenceInputs;
@override final  VotingProcedures? votingProcedures;
 final  List<ProposalProcedure>? _proposalProcedures;
@override List<ProposalProcedure>? get proposalProcedures {
  final value = _proposalProcedures;
  if (value == null) return null;
  if (_proposalProcedures is EqualUnmodifiableListView) return _proposalProcedures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CborInt? currentTreasuryValue;
@override final  CborInt? donation;




@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardanoTransactionBody&&(identical(other.blake2bHash256, blake2bHash256) || other.blake2bHash256 == blake2bHash256)&&const DeepCollectionEquality().equals(other.nonStandardKeyOrder, _nonStandardKeyOrder)&&(identical(other.lengthType, lengthType) || other.lengthType == lengthType)&&(identical(other.outputsLengthType, outputsLengthType) || other.outputsLengthType == outputsLengthType)&&(identical(other.withdrawalsLengthType, withdrawalsLengthType) || other.withdrawalsLengthType == withdrawalsLengthType)&&(identical(other.mintLengthType, mintLengthType) || other.mintLengthType == mintLengthType)&&(identical(other.proposalProceduresLengthType, proposalProceduresLengthType) || other.proposalProceduresLengthType == proposalProceduresLengthType)&&const DeepCollectionEquality().equals(other.proposalProceduresCborTags, _proposalProceduresCborTags)&&(identical(other.inputs, inputs) || other.inputs == inputs)&&const DeepCollectionEquality().equals(other.outputs, _outputs)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&(identical(other.certs, certs) || other.certs == certs)&&const DeepCollectionEquality().equals(other.withdrawals, _withdrawals)&&const DeepCollectionEquality().equals(other.metadataHash, metadataHash)&&(identical(other.validityStartInterval, validityStartInterval) || other.validityStartInterval == validityStartInterval)&&const DeepCollectionEquality().equals(other.mint, _mint)&&const DeepCollectionEquality().equals(other.scriptDataHash, scriptDataHash)&&(identical(other.collateral, collateral) || other.collateral == collateral)&&(identical(other.requiredSigners, requiredSigners) || other.requiredSigners == requiredSigners)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&(identical(other.collateralReturn, collateralReturn) || other.collateralReturn == collateralReturn)&&(identical(other.totalCollateral, totalCollateral) || other.totalCollateral == totalCollateral)&&(identical(other.referenceInputs, referenceInputs) || other.referenceInputs == referenceInputs)&&(identical(other.votingProcedures, votingProcedures) || other.votingProcedures == votingProcedures)&&const DeepCollectionEquality().equals(other.proposalProcedures, _proposalProcedures)&&(identical(other.currentTreasuryValue, currentTreasuryValue) || other.currentTreasuryValue == currentTreasuryValue)&&(identical(other.donation, donation) || other.donation == donation));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,blake2bHash256,const DeepCollectionEquality().hash(_nonStandardKeyOrder),lengthType,outputsLengthType,withdrawalsLengthType,mintLengthType,proposalProceduresLengthType,const DeepCollectionEquality().hash(_proposalProceduresCborTags),inputs,const DeepCollectionEquality().hash(_outputs),fee,ttl,certs,const DeepCollectionEquality().hash(_withdrawals),const DeepCollectionEquality().hash(metadataHash),validityStartInterval,const DeepCollectionEquality().hash(_mint),const DeepCollectionEquality().hash(scriptDataHash),collateral,requiredSigners,networkId,collateralReturn,totalCollateral,referenceInputs,votingProcedures,const DeepCollectionEquality().hash(_proposalProcedures),currentTreasuryValue,donation]);
}

@override
String toString() {
    return 'CardanoTransactionBody._hidden(blake2bHash256: $blake2bHash256, nonStandardKeyOrder: $nonStandardKeyOrder, lengthType: $lengthType, outputsLengthType: $outputsLengthType, withdrawalsLengthType: $withdrawalsLengthType, mintLengthType: $mintLengthType, proposalProceduresLengthType: $proposalProceduresLengthType, proposalProceduresCborTags: $proposalProceduresCborTags, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certs: $certs, withdrawals: $withdrawals, metadataHash: $metadataHash, validityStartInterval: $validityStartInterval, mint: $mint, scriptDataHash: $scriptDataHash, collateral: $collateral, requiredSigners: $requiredSigners, networkId: $networkId, collateralReturn: $collateralReturn, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, proposalProcedures: $proposalProcedures, currentTreasuryValue: $currentTreasuryValue, donation: $donation)';
}


}




// dart format on
