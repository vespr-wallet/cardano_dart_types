// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardanoTransactionBody {

// Non-null when deserialized from hex/cbor
 String? get originalBlake2bHash256 => throw _privateConstructorUsedError;// TX Body Fields
 CardanoTransactionInputs get inputs => throw _privateConstructorUsedError;// 0
 List<CardanoTransactionOutput> get outputs => throw _privateConstructorUsedError;// 1
 BigInt get fee => throw _privateConstructorUsedError;// 2
// OPTIONAL
 BigInt? get ttl => throw _privateConstructorUsedError;// 3
 List<Certificate>? get certs => throw _privateConstructorUsedError;// 4
 List<Withdraw>? get withdrawals => throw _privateConstructorUsedError;// 5
// 6 - update ; what is it?
 Uint8List? get metadataHash => throw _privateConstructorUsedError;// 7
 BigInt? get validityStartInterval => throw _privateConstructorUsedError;// 8
 List<MultiAsset>? get mint => throw _privateConstructorUsedError;// 9
 Uint8List? get scriptDataHash => throw _privateConstructorUsedError;// 11
 CardanoTransactionInputs? get collateral => throw _privateConstructorUsedError;// 13
 RequiredSigners? get requiredSigners => throw _privateConstructorUsedError;// 14
 NetworkId? get networkId => throw _privateConstructorUsedError;// 15
// BABBAGE ERA
 CardanoTransactionOutput? get collateralReturn => throw _privateConstructorUsedError;// 16
 BigInt? get totalCollateral => throw _privateConstructorUsedError;// 17
 CardanoTransactionInputs? get referenceInputs => throw _privateConstructorUsedError;// 18
// CONWAY ERA
 VotingProcedures? get votingProcedures => throw _privateConstructorUsedError;// 19
 List<ProposalProcedure>? get proposalProcedures => throw _privateConstructorUsedError;// 20
 CborInt? get currentTreasuryValue => throw _privateConstructorUsedError;// 21
 CborInt? get donation => throw _privateConstructorUsedError;








}









/// @nodoc


class _$CardanoTransactionBodyImpl extends _CardanoTransactionBody  {
   _$CardanoTransactionBodyImpl({this.originalBlake2bHash256, required this.inputs, required final  List<CardanoTransactionOutput> outputs, required this.fee, required this.ttl, required final  List<Certificate>? certs, required final  List<Withdraw>? withdrawals, required this.metadataHash, required this.validityStartInterval, required final  List<MultiAsset>? mint, required this.scriptDataHash, required this.collateral, required this.requiredSigners, required this.networkId, required this.collateralReturn, required this.totalCollateral, required this.referenceInputs, required this.votingProcedures, required final  List<ProposalProcedure>? proposalProcedures, required this.currentTreasuryValue, required this.donation}): _outputs = outputs,_certs = certs,_withdrawals = withdrawals,_mint = mint,_proposalProcedures = proposalProcedures,super._();

  

// Non-null when deserialized from hex/cbor
@override final  String? originalBlake2bHash256;
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
 final  List<Certificate>? _certs;
// 3
@override List<Certificate>? get certs {
  final value = _certs;
  if (value == null) return null;
  if (_certs is EqualUnmodifiableListView) return _certs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

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

@override
String toString() {
  return 'CardanoTransactionBody._hidden(originalBlake2bHash256: $originalBlake2bHash256, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certs: $certs, withdrawals: $withdrawals, metadataHash: $metadataHash, validityStartInterval: $validityStartInterval, mint: $mint, scriptDataHash: $scriptDataHash, collateral: $collateral, requiredSigners: $requiredSigners, networkId: $networkId, collateralReturn: $collateralReturn, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, proposalProcedures: $proposalProcedures, currentTreasuryValue: $currentTreasuryValue, donation: $donation)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CardanoTransactionBodyImpl&&(identical(other.originalBlake2bHash256, originalBlake2bHash256) || other.originalBlake2bHash256 == originalBlake2bHash256)&&(identical(other.inputs, inputs) || other.inputs == inputs)&&const DeepCollectionEquality().equals(other._outputs, _outputs)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&const DeepCollectionEquality().equals(other._certs, _certs)&&const DeepCollectionEquality().equals(other._withdrawals, _withdrawals)&&const DeepCollectionEquality().equals(other.metadataHash, metadataHash)&&(identical(other.validityStartInterval, validityStartInterval) || other.validityStartInterval == validityStartInterval)&&const DeepCollectionEquality().equals(other._mint, _mint)&&const DeepCollectionEquality().equals(other.scriptDataHash, scriptDataHash)&&(identical(other.collateral, collateral) || other.collateral == collateral)&&(identical(other.requiredSigners, requiredSigners) || other.requiredSigners == requiredSigners)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&(identical(other.collateralReturn, collateralReturn) || other.collateralReturn == collateralReturn)&&(identical(other.totalCollateral, totalCollateral) || other.totalCollateral == totalCollateral)&&(identical(other.referenceInputs, referenceInputs) || other.referenceInputs == referenceInputs)&&(identical(other.votingProcedures, votingProcedures) || other.votingProcedures == votingProcedures)&&const DeepCollectionEquality().equals(other._proposalProcedures, _proposalProcedures)&&(identical(other.currentTreasuryValue, currentTreasuryValue) || other.currentTreasuryValue == currentTreasuryValue)&&(identical(other.donation, donation) || other.donation == donation));
}


@override
int get hashCode => Object.hashAll([runtimeType,originalBlake2bHash256,inputs,const DeepCollectionEquality().hash(_outputs),fee,ttl,const DeepCollectionEquality().hash(_certs),const DeepCollectionEquality().hash(_withdrawals),const DeepCollectionEquality().hash(metadataHash),validityStartInterval,const DeepCollectionEquality().hash(_mint),const DeepCollectionEquality().hash(scriptDataHash),collateral,requiredSigners,networkId,collateralReturn,totalCollateral,referenceInputs,votingProcedures,const DeepCollectionEquality().hash(_proposalProcedures),currentTreasuryValue,donation]);









}


abstract class _CardanoTransactionBody extends CardanoTransactionBody {
   factory _CardanoTransactionBody({final  String? originalBlake2bHash256, required final  CardanoTransactionInputs inputs, required final  List<CardanoTransactionOutput> outputs, required final  BigInt fee, required final  BigInt? ttl, required final  List<Certificate>? certs, required final  List<Withdraw>? withdrawals, required final  Uint8List? metadataHash, required final  BigInt? validityStartInterval, required final  List<MultiAsset>? mint, required final  Uint8List? scriptDataHash, required final  CardanoTransactionInputs? collateral, required final  RequiredSigners? requiredSigners, required final  NetworkId? networkId, required final  CardanoTransactionOutput? collateralReturn, required final  BigInt? totalCollateral, required final  CardanoTransactionInputs? referenceInputs, required final  VotingProcedures? votingProcedures, required final  List<ProposalProcedure>? proposalProcedures, required final  CborInt? currentTreasuryValue, required final  CborInt? donation}) = _$CardanoTransactionBodyImpl;
   _CardanoTransactionBody._(): super._();

  

// Non-null when deserialized from hex/cbor
@override String? get originalBlake2bHash256;// TX Body Fields
@override CardanoTransactionInputs get inputs;// 0
@override List<CardanoTransactionOutput> get outputs;// 1
@override BigInt get fee;// 2
// OPTIONAL
@override BigInt? get ttl;// 3
@override List<Certificate>? get certs;// 4
@override List<Withdraw>? get withdrawals;// 5
// 6 - update ; what is it?
@override Uint8List? get metadataHash;// 7
@override BigInt? get validityStartInterval;// 8
@override List<MultiAsset>? get mint;// 9
@override Uint8List? get scriptDataHash;// 11
@override CardanoTransactionInputs? get collateral;// 13
@override RequiredSigners? get requiredSigners;// 14
@override NetworkId? get networkId;// 15
// BABBAGE ERA
@override CardanoTransactionOutput? get collateralReturn;// 16
@override BigInt? get totalCollateral;// 17
@override CardanoTransactionInputs? get referenceInputs;// 18
// CONWAY ERA
@override VotingProcedures? get votingProcedures;// 19
@override List<ProposalProcedure>? get proposalProcedures;// 20
@override CborInt? get currentTreasuryValue;// 21
@override CborInt? get donation;

}
