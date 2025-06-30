// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signing_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TxDiff {

 Value get diff => throw _privateConstructorUsedError; List<Utxo> get usedUtxos => throw _privateConstructorUsedError; String? get stakeDelegationPoolId => throw _privateConstructorUsedError;// bech32 id
 Drep? get dRepDelegation => throw _privateConstructorUsedError; DRepDiffInfo? get dRepRegistration => throw _privateConstructorUsedError; DRepDiffInfo? get dRepUpdate => throw _privateConstructorUsedError; Credential? get authorizeConstitutionalCommitteeHot => throw _privateConstructorUsedError; Credential? get resignConstitutionalCommitteeCold => throw _privateConstructorUsedError; List<VoteInfo> get votes => throw _privateConstructorUsedError; List<ProposalDiffInfo> get proposals => throw _privateConstructorUsedError; bool get dRepDeregistration => throw _privateConstructorUsedError; bool get stakeDeregistration => throw _privateConstructorUsedError;








}









/// @nodoc


class _$TxDiffImpl extends _TxDiff  {
  const _$TxDiffImpl({required this.diff, required final  List<Utxo> usedUtxos, required this.stakeDelegationPoolId, required this.dRepDelegation, required this.dRepRegistration, required this.dRepUpdate, required this.authorizeConstitutionalCommitteeHot, required this.resignConstitutionalCommitteeCold, required final  List<VoteInfo> votes, required final  List<ProposalDiffInfo> proposals, required this.dRepDeregistration, required this.stakeDeregistration}): _usedUtxos = usedUtxos,_votes = votes,_proposals = proposals,super._();

  

@override final  Value diff;
 final  List<Utxo> _usedUtxos;
@override List<Utxo> get usedUtxos {
  if (_usedUtxos is EqualUnmodifiableListView) return _usedUtxos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_usedUtxos);
}

@override final  String? stakeDelegationPoolId;
// bech32 id
@override final  Drep? dRepDelegation;
@override final  DRepDiffInfo? dRepRegistration;
@override final  DRepDiffInfo? dRepUpdate;
@override final  Credential? authorizeConstitutionalCommitteeHot;
@override final  Credential? resignConstitutionalCommitteeCold;
 final  List<VoteInfo> _votes;
@override List<VoteInfo> get votes {
  if (_votes is EqualUnmodifiableListView) return _votes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_votes);
}

 final  List<ProposalDiffInfo> _proposals;
@override List<ProposalDiffInfo> get proposals {
  if (_proposals is EqualUnmodifiableListView) return _proposals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_proposals);
}

@override final  bool dRepDeregistration;
@override final  bool stakeDeregistration;

@override
String toString() {
  return 'TxDiff(diff: $diff, usedUtxos: $usedUtxos, stakeDelegationPoolId: $stakeDelegationPoolId, dRepDelegation: $dRepDelegation, dRepRegistration: $dRepRegistration, dRepUpdate: $dRepUpdate, authorizeConstitutionalCommitteeHot: $authorizeConstitutionalCommitteeHot, resignConstitutionalCommitteeCold: $resignConstitutionalCommitteeCold, votes: $votes, proposals: $proposals, dRepDeregistration: $dRepDeregistration, stakeDeregistration: $stakeDeregistration)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TxDiffImpl&&(identical(other.diff, diff) || other.diff == diff)&&const DeepCollectionEquality().equals(other._usedUtxos, _usedUtxos)&&(identical(other.stakeDelegationPoolId, stakeDelegationPoolId) || other.stakeDelegationPoolId == stakeDelegationPoolId)&&(identical(other.dRepDelegation, dRepDelegation) || other.dRepDelegation == dRepDelegation)&&(identical(other.dRepRegistration, dRepRegistration) || other.dRepRegistration == dRepRegistration)&&(identical(other.dRepUpdate, dRepUpdate) || other.dRepUpdate == dRepUpdate)&&(identical(other.authorizeConstitutionalCommitteeHot, authorizeConstitutionalCommitteeHot) || other.authorizeConstitutionalCommitteeHot == authorizeConstitutionalCommitteeHot)&&(identical(other.resignConstitutionalCommitteeCold, resignConstitutionalCommitteeCold) || other.resignConstitutionalCommitteeCold == resignConstitutionalCommitteeCold)&&const DeepCollectionEquality().equals(other._votes, _votes)&&const DeepCollectionEquality().equals(other._proposals, _proposals)&&(identical(other.dRepDeregistration, dRepDeregistration) || other.dRepDeregistration == dRepDeregistration)&&(identical(other.stakeDeregistration, stakeDeregistration) || other.stakeDeregistration == stakeDeregistration));
}


@override
int get hashCode => Object.hash(runtimeType,diff,const DeepCollectionEquality().hash(_usedUtxos),stakeDelegationPoolId,dRepDelegation,dRepRegistration,dRepUpdate,authorizeConstitutionalCommitteeHot,resignConstitutionalCommitteeCold,const DeepCollectionEquality().hash(_votes),const DeepCollectionEquality().hash(_proposals),dRepDeregistration,stakeDeregistration);









}


abstract class _TxDiff extends TxDiff {
  const factory _TxDiff({required final  Value diff, required final  List<Utxo> usedUtxos, required final  String? stakeDelegationPoolId, required final  Drep? dRepDelegation, required final  DRepDiffInfo? dRepRegistration, required final  DRepDiffInfo? dRepUpdate, required final  Credential? authorizeConstitutionalCommitteeHot, required final  Credential? resignConstitutionalCommitteeCold, required final  List<VoteInfo> votes, required final  List<ProposalDiffInfo> proposals, required final  bool dRepDeregistration, required final  bool stakeDeregistration}) = _$TxDiffImpl;
  const _TxDiff._(): super._();

  

@override Value get diff;@override List<Utxo> get usedUtxos;@override String? get stakeDelegationPoolId;// bech32 id
@override Drep? get dRepDelegation;@override DRepDiffInfo? get dRepRegistration;@override DRepDiffInfo? get dRepUpdate;@override Credential? get authorizeConstitutionalCommitteeHot;@override Credential? get resignConstitutionalCommitteeCold;@override List<VoteInfo> get votes;@override List<ProposalDiffInfo> get proposals;@override bool get dRepDeregistration;@override bool get stakeDeregistration;

}

/// @nodoc
mixin _$TxSigningBundle {

 String get receiveAddressBech32 => throw _privateConstructorUsedError; NetworkId get networkId => throw _privateConstructorUsedError; List<TxPreparedForSigning> get txsData => throw _privateConstructorUsedError; Value get totalDiff => throw _privateConstructorUsedError; String? get stakeDelegationPoolId => throw _privateConstructorUsedError;// bech32 id
 Drep? get dRepDelegation => throw _privateConstructorUsedError; DRepDiffInfo? get dRepRegistration => throw _privateConstructorUsedError; DRepDiffInfo? get dRepUpdate => throw _privateConstructorUsedError; Credential? get authorizeConstitutionalCommitteeHot => throw _privateConstructorUsedError; Credential? get resignConstitutionalCommitteeCold => throw _privateConstructorUsedError; List<VoteInfo> get votes => throw _privateConstructorUsedError; List<ProposalDiffInfo> get proposals => throw _privateConstructorUsedError; bool get dRepDeregistration => throw _privateConstructorUsedError; bool get stakeDeregistration => throw _privateConstructorUsedError;








}









/// @nodoc


class _$TxSigningBundleImpl extends _TxSigningBundle  {
  const _$TxSigningBundleImpl({required this.receiveAddressBech32, required this.networkId, required final  List<TxPreparedForSigning> txsData, required this.totalDiff, required this.stakeDelegationPoolId, required this.dRepDelegation, required this.dRepRegistration, required this.dRepUpdate, required this.authorizeConstitutionalCommitteeHot, required this.resignConstitutionalCommitteeCold, required final  List<VoteInfo> votes, required final  List<ProposalDiffInfo> proposals, required this.dRepDeregistration, required this.stakeDeregistration}): _txsData = txsData,_votes = votes,_proposals = proposals,super._();

  

@override final  String receiveAddressBech32;
@override final  NetworkId networkId;
 final  List<TxPreparedForSigning> _txsData;
@override List<TxPreparedForSigning> get txsData {
  if (_txsData is EqualUnmodifiableListView) return _txsData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_txsData);
}

@override final  Value totalDiff;
@override final  String? stakeDelegationPoolId;
// bech32 id
@override final  Drep? dRepDelegation;
@override final  DRepDiffInfo? dRepRegistration;
@override final  DRepDiffInfo? dRepUpdate;
@override final  Credential? authorizeConstitutionalCommitteeHot;
@override final  Credential? resignConstitutionalCommitteeCold;
 final  List<VoteInfo> _votes;
@override List<VoteInfo> get votes {
  if (_votes is EqualUnmodifiableListView) return _votes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_votes);
}

 final  List<ProposalDiffInfo> _proposals;
@override List<ProposalDiffInfo> get proposals {
  if (_proposals is EqualUnmodifiableListView) return _proposals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_proposals);
}

@override final  bool dRepDeregistration;
@override final  bool stakeDeregistration;

@override
String toString() {
  return 'TxSigningBundle(receiveAddressBech32: $receiveAddressBech32, networkId: $networkId, txsData: $txsData, totalDiff: $totalDiff, stakeDelegationPoolId: $stakeDelegationPoolId, dRepDelegation: $dRepDelegation, dRepRegistration: $dRepRegistration, dRepUpdate: $dRepUpdate, authorizeConstitutionalCommitteeHot: $authorizeConstitutionalCommitteeHot, resignConstitutionalCommitteeCold: $resignConstitutionalCommitteeCold, votes: $votes, proposals: $proposals, dRepDeregistration: $dRepDeregistration, stakeDeregistration: $stakeDeregistration)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TxSigningBundleImpl&&(identical(other.receiveAddressBech32, receiveAddressBech32) || other.receiveAddressBech32 == receiveAddressBech32)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&const DeepCollectionEquality().equals(other._txsData, _txsData)&&(identical(other.totalDiff, totalDiff) || other.totalDiff == totalDiff)&&(identical(other.stakeDelegationPoolId, stakeDelegationPoolId) || other.stakeDelegationPoolId == stakeDelegationPoolId)&&(identical(other.dRepDelegation, dRepDelegation) || other.dRepDelegation == dRepDelegation)&&(identical(other.dRepRegistration, dRepRegistration) || other.dRepRegistration == dRepRegistration)&&(identical(other.dRepUpdate, dRepUpdate) || other.dRepUpdate == dRepUpdate)&&(identical(other.authorizeConstitutionalCommitteeHot, authorizeConstitutionalCommitteeHot) || other.authorizeConstitutionalCommitteeHot == authorizeConstitutionalCommitteeHot)&&(identical(other.resignConstitutionalCommitteeCold, resignConstitutionalCommitteeCold) || other.resignConstitutionalCommitteeCold == resignConstitutionalCommitteeCold)&&const DeepCollectionEquality().equals(other._votes, _votes)&&const DeepCollectionEquality().equals(other._proposals, _proposals)&&(identical(other.dRepDeregistration, dRepDeregistration) || other.dRepDeregistration == dRepDeregistration)&&(identical(other.stakeDeregistration, stakeDeregistration) || other.stakeDeregistration == stakeDeregistration));
}


@override
int get hashCode => Object.hash(runtimeType,receiveAddressBech32,networkId,const DeepCollectionEquality().hash(_txsData),totalDiff,stakeDelegationPoolId,dRepDelegation,dRepRegistration,dRepUpdate,authorizeConstitutionalCommitteeHot,resignConstitutionalCommitteeCold,const DeepCollectionEquality().hash(_votes),const DeepCollectionEquality().hash(_proposals),dRepDeregistration,stakeDeregistration);









}


abstract class _TxSigningBundle extends TxSigningBundle {
  const factory _TxSigningBundle({required final  String receiveAddressBech32, required final  NetworkId networkId, required final  List<TxPreparedForSigning> txsData, required final  Value totalDiff, required final  String? stakeDelegationPoolId, required final  Drep? dRepDelegation, required final  DRepDiffInfo? dRepRegistration, required final  DRepDiffInfo? dRepUpdate, required final  Credential? authorizeConstitutionalCommitteeHot, required final  Credential? resignConstitutionalCommitteeCold, required final  List<VoteInfo> votes, required final  List<ProposalDiffInfo> proposals, required final  bool dRepDeregistration, required final  bool stakeDeregistration}) = _$TxSigningBundleImpl;
  const _TxSigningBundle._(): super._();

  

@override String get receiveAddressBech32;@override NetworkId get networkId;@override List<TxPreparedForSigning> get txsData;@override Value get totalDiff;@override String? get stakeDelegationPoolId;// bech32 id
@override Drep? get dRepDelegation;@override DRepDiffInfo? get dRepRegistration;@override DRepDiffInfo? get dRepUpdate;@override Credential? get authorizeConstitutionalCommitteeHot;@override Credential? get resignConstitutionalCommitteeCold;@override List<VoteInfo> get votes;@override List<ProposalDiffInfo> get proposals;@override bool get dRepDeregistration;@override bool get stakeDeregistration;

}

/// @nodoc
mixin _$TxSignedBundle {

 String get receiveAddressBech32 => throw _privateConstructorUsedError; NetworkId get networkId => throw _privateConstructorUsedError; List<TxAndSignature> get txsData => throw _privateConstructorUsedError; Value get totalDiff => throw _privateConstructorUsedError;







/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$TxSignedBundleCopyWith<TxSignedBundle> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $TxSignedBundleCopyWith<$Res>  {
  factory $TxSignedBundleCopyWith(TxSignedBundle value, $Res Function(TxSignedBundle) then) = _$TxSignedBundleCopyWithImpl<$Res, TxSignedBundle>;
@useResult
$Res call({
 String receiveAddressBech32, NetworkId networkId, List<TxAndSignature> txsData, Value totalDiff
});


$ValueCopyWith<$Res> get totalDiff;
}

/// @nodoc
class _$TxSignedBundleCopyWithImpl<$Res,$Val extends TxSignedBundle> implements $TxSignedBundleCopyWith<$Res> {
  _$TxSignedBundleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiveAddressBech32 = null,Object? networkId = null,Object? txsData = null,Object? totalDiff = null,}) {
  return _then(_value.copyWith(
receiveAddressBech32: null == receiveAddressBech32 ? _value.receiveAddressBech32 : receiveAddressBech32 // ignore: cast_nullable_to_non_nullable
as String,networkId: null == networkId ? _value.networkId : networkId // ignore: cast_nullable_to_non_nullable
as NetworkId,txsData: null == txsData ? _value.txsData : txsData // ignore: cast_nullable_to_non_nullable
as List<TxAndSignature>,totalDiff: null == totalDiff ? _value.totalDiff : totalDiff // ignore: cast_nullable_to_non_nullable
as Value,
  )as $Val);
}
/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValueCopyWith<$Res> get totalDiff {
  
  return $ValueCopyWith<$Res>(_value.totalDiff, (value) {
    return _then(_value.copyWith(totalDiff: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$TxSignedBundleImplCopyWith<$Res> implements $TxSignedBundleCopyWith<$Res> {
  factory _$$TxSignedBundleImplCopyWith(_$TxSignedBundleImpl value, $Res Function(_$TxSignedBundleImpl) then) = __$$TxSignedBundleImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String receiveAddressBech32, NetworkId networkId, List<TxAndSignature> txsData, Value totalDiff
});


@override $ValueCopyWith<$Res> get totalDiff;
}

/// @nodoc
class __$$TxSignedBundleImplCopyWithImpl<$Res> extends _$TxSignedBundleCopyWithImpl<$Res, _$TxSignedBundleImpl> implements _$$TxSignedBundleImplCopyWith<$Res> {
  __$$TxSignedBundleImplCopyWithImpl(_$TxSignedBundleImpl _value, $Res Function(_$TxSignedBundleImpl) _then)
      : super(_value, _then);


/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiveAddressBech32 = null,Object? networkId = null,Object? txsData = null,Object? totalDiff = null,}) {
  return _then(_$TxSignedBundleImpl(
receiveAddressBech32: null == receiveAddressBech32 ? _value.receiveAddressBech32 : receiveAddressBech32 // ignore: cast_nullable_to_non_nullable
as String,networkId: null == networkId ? _value.networkId : networkId // ignore: cast_nullable_to_non_nullable
as NetworkId,txsData: null == txsData ? _value._txsData : txsData // ignore: cast_nullable_to_non_nullable
as List<TxAndSignature>,totalDiff: null == totalDiff ? _value.totalDiff : totalDiff // ignore: cast_nullable_to_non_nullable
as Value,
  ));
}


}

/// @nodoc


class _$TxSignedBundleImpl extends _TxSignedBundle  {
  const _$TxSignedBundleImpl({required this.receiveAddressBech32, required this.networkId, required final  List<TxAndSignature> txsData, required this.totalDiff}): _txsData = txsData,super._();

  

@override final  String receiveAddressBech32;
@override final  NetworkId networkId;
 final  List<TxAndSignature> _txsData;
@override List<TxAndSignature> get txsData {
  if (_txsData is EqualUnmodifiableListView) return _txsData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_txsData);
}

@override final  Value totalDiff;

@override
String toString() {
  return 'TxSignedBundle(receiveAddressBech32: $receiveAddressBech32, networkId: $networkId, txsData: $txsData, totalDiff: $totalDiff)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TxSignedBundleImpl&&(identical(other.receiveAddressBech32, receiveAddressBech32) || other.receiveAddressBech32 == receiveAddressBech32)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&const DeepCollectionEquality().equals(other._txsData, _txsData)&&(identical(other.totalDiff, totalDiff) || other.totalDiff == totalDiff));
}


@override
int get hashCode => Object.hash(runtimeType,receiveAddressBech32,networkId,const DeepCollectionEquality().hash(_txsData),totalDiff);

/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$TxSignedBundleImplCopyWith<_$TxSignedBundleImpl> get copyWith => __$$TxSignedBundleImplCopyWithImpl<_$TxSignedBundleImpl>(this, _$identity);








}


abstract class _TxSignedBundle extends TxSignedBundle {
  const factory _TxSignedBundle({required final  String receiveAddressBech32, required final  NetworkId networkId, required final  List<TxAndSignature> txsData, required final  Value totalDiff}) = _$TxSignedBundleImpl;
  const _TxSignedBundle._(): super._();

  

@override String get receiveAddressBech32;@override NetworkId get networkId;@override List<TxAndSignature> get txsData;@override Value get totalDiff;
/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$TxSignedBundleImplCopyWith<_$TxSignedBundleImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$TxPreparedForSigning {

 CardanoTransaction get tx => throw _privateConstructorUsedError; TxDiff get txDiff => throw _privateConstructorUsedError; Iterable<Utxo> get utxosBeforeTx => throw _privateConstructorUsedError; Set<String> get signingAddressesRequired => throw _privateConstructorUsedError;








}









/// @nodoc


class _$TxPreparedForSigningImpl extends _TxPreparedForSigning  {
  const _$TxPreparedForSigningImpl({required this.tx, required this.txDiff, required this.utxosBeforeTx, required final  Set<String> signingAddressesRequired}): _signingAddressesRequired = signingAddressesRequired,super._();

  

@override final  CardanoTransaction tx;
@override final  TxDiff txDiff;
@override final  Iterable<Utxo> utxosBeforeTx;
 final  Set<String> _signingAddressesRequired;
@override Set<String> get signingAddressesRequired {
  if (_signingAddressesRequired is EqualUnmodifiableSetView) return _signingAddressesRequired;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_signingAddressesRequired);
}


@override
String toString() {
  return 'TxPreparedForSigning(tx: $tx, txDiff: $txDiff, utxosBeforeTx: $utxosBeforeTx, signingAddressesRequired: $signingAddressesRequired)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TxPreparedForSigningImpl&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.txDiff, txDiff) || other.txDiff == txDiff)&&const DeepCollectionEquality().equals(other.utxosBeforeTx, utxosBeforeTx)&&const DeepCollectionEquality().equals(other._signingAddressesRequired, _signingAddressesRequired));
}


@override
int get hashCode => Object.hash(runtimeType,tx,txDiff,const DeepCollectionEquality().hash(utxosBeforeTx),const DeepCollectionEquality().hash(_signingAddressesRequired));









}


abstract class _TxPreparedForSigning extends TxPreparedForSigning {
  const factory _TxPreparedForSigning({required final  CardanoTransaction tx, required final  TxDiff txDiff, required final  Iterable<Utxo> utxosBeforeTx, required final  Set<String> signingAddressesRequired}) = _$TxPreparedForSigningImpl;
  const _TxPreparedForSigning._(): super._();

  

@override CardanoTransaction get tx;@override TxDiff get txDiff;@override Iterable<Utxo> get utxosBeforeTx;@override Set<String> get signingAddressesRequired;

}

/// @nodoc
mixin _$TxAndSignature {

 CardanoTransaction get tx => throw _privateConstructorUsedError; TxDiff get txDiff => throw _privateConstructorUsedError; Iterable<Utxo> get utxosBeforeTx => throw _privateConstructorUsedError; Set<String> get signingAddressesRequired => throw _privateConstructorUsedError; WitnessSet get nweSignatures => throw _privateConstructorUsedError;








}









/// @nodoc


class _$TxAndSignatureImpl extends _TxAndSignature  {
  const _$TxAndSignatureImpl({required this.tx, required this.txDiff, required this.utxosBeforeTx, required final  Set<String> signingAddressesRequired, required this.nweSignatures}): _signingAddressesRequired = signingAddressesRequired,super._();

  

@override final  CardanoTransaction tx;
@override final  TxDiff txDiff;
@override final  Iterable<Utxo> utxosBeforeTx;
 final  Set<String> _signingAddressesRequired;
@override Set<String> get signingAddressesRequired {
  if (_signingAddressesRequired is EqualUnmodifiableSetView) return _signingAddressesRequired;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_signingAddressesRequired);
}

@override final  WitnessSet nweSignatures;

@override
String toString() {
  return 'TxAndSignature(tx: $tx, txDiff: $txDiff, utxosBeforeTx: $utxosBeforeTx, signingAddressesRequired: $signingAddressesRequired, nweSignatures: $nweSignatures)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$TxAndSignatureImpl&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.txDiff, txDiff) || other.txDiff == txDiff)&&const DeepCollectionEquality().equals(other.utxosBeforeTx, utxosBeforeTx)&&const DeepCollectionEquality().equals(other._signingAddressesRequired, _signingAddressesRequired)&&(identical(other.nweSignatures, nweSignatures) || other.nweSignatures == nweSignatures));
}


@override
int get hashCode => Object.hash(runtimeType,tx,txDiff,const DeepCollectionEquality().hash(utxosBeforeTx),const DeepCollectionEquality().hash(_signingAddressesRequired),nweSignatures);









}


abstract class _TxAndSignature extends TxAndSignature {
  const factory _TxAndSignature({required final  CardanoTransaction tx, required final  TxDiff txDiff, required final  Iterable<Utxo> utxosBeforeTx, required final  Set<String> signingAddressesRequired, required final  WitnessSet nweSignatures}) = _$TxAndSignatureImpl;
  const _TxAndSignature._(): super._();

  

@override CardanoTransaction get tx;@override TxDiff get txDiff;@override Iterable<Utxo> get utxosBeforeTx;@override Set<String> get signingAddressesRequired;@override WitnessSet get nweSignatures;

}
