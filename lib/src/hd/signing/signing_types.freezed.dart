// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signing_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TxDiff {

 Value get diff; List<Utxo> get usedUtxos; String? get stakeDelegationPoolId;// bech32 id
 Drep? get dRepDelegation; DRepDiffInfo? get dRepRegistration; DRepDiffInfo? get dRepUpdate; Credential? get authorizeConstitutionalCommitteeHot; Credential? get resignConstitutionalCommitteeCold; List<VoteInfo> get votes; List<ProposalDiffInfo> get proposals; bool get dRepDeregistration; bool get stakeDeregistration;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxDiff&&(identical(other.diff, diff) || other.diff == diff)&&const DeepCollectionEquality().equals(other.usedUtxos, usedUtxos)&&(identical(other.stakeDelegationPoolId, stakeDelegationPoolId) || other.stakeDelegationPoolId == stakeDelegationPoolId)&&(identical(other.dRepDelegation, dRepDelegation) || other.dRepDelegation == dRepDelegation)&&(identical(other.dRepRegistration, dRepRegistration) || other.dRepRegistration == dRepRegistration)&&(identical(other.dRepUpdate, dRepUpdate) || other.dRepUpdate == dRepUpdate)&&(identical(other.authorizeConstitutionalCommitteeHot, authorizeConstitutionalCommitteeHot) || other.authorizeConstitutionalCommitteeHot == authorizeConstitutionalCommitteeHot)&&(identical(other.resignConstitutionalCommitteeCold, resignConstitutionalCommitteeCold) || other.resignConstitutionalCommitteeCold == resignConstitutionalCommitteeCold)&&const DeepCollectionEquality().equals(other.votes, votes)&&const DeepCollectionEquality().equals(other.proposals, proposals)&&(identical(other.dRepDeregistration, dRepDeregistration) || other.dRepDeregistration == dRepDeregistration)&&(identical(other.stakeDeregistration, stakeDeregistration) || other.stakeDeregistration == stakeDeregistration));
}


@override
int get hashCode => Object.hash(runtimeType,diff,const DeepCollectionEquality().hash(usedUtxos),stakeDelegationPoolId,dRepDelegation,dRepRegistration,dRepUpdate,authorizeConstitutionalCommitteeHot,resignConstitutionalCommitteeCold,const DeepCollectionEquality().hash(votes),const DeepCollectionEquality().hash(proposals),dRepDeregistration,stakeDeregistration);

@override
String toString() {
  return 'TxDiff(diff: $diff, usedUtxos: $usedUtxos, stakeDelegationPoolId: $stakeDelegationPoolId, dRepDelegation: $dRepDelegation, dRepRegistration: $dRepRegistration, dRepUpdate: $dRepUpdate, authorizeConstitutionalCommitteeHot: $authorizeConstitutionalCommitteeHot, resignConstitutionalCommitteeCold: $resignConstitutionalCommitteeCold, votes: $votes, proposals: $proposals, dRepDeregistration: $dRepDeregistration, stakeDeregistration: $stakeDeregistration)';
}


}





/// @nodoc


class _TxDiff extends TxDiff {
  const _TxDiff({required this.diff, required final  List<Utxo> usedUtxos, required this.stakeDelegationPoolId, required this.dRepDelegation, required this.dRepRegistration, required this.dRepUpdate, required this.authorizeConstitutionalCommitteeHot, required this.resignConstitutionalCommitteeCold, required final  List<VoteInfo> votes, required final  List<ProposalDiffInfo> proposals, required this.dRepDeregistration, required this.stakeDeregistration}): _usedUtxos = usedUtxos,_votes = votes,_proposals = proposals,super._();
  

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
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxDiff&&(identical(other.diff, diff) || other.diff == diff)&&const DeepCollectionEquality().equals(other._usedUtxos, _usedUtxos)&&(identical(other.stakeDelegationPoolId, stakeDelegationPoolId) || other.stakeDelegationPoolId == stakeDelegationPoolId)&&(identical(other.dRepDelegation, dRepDelegation) || other.dRepDelegation == dRepDelegation)&&(identical(other.dRepRegistration, dRepRegistration) || other.dRepRegistration == dRepRegistration)&&(identical(other.dRepUpdate, dRepUpdate) || other.dRepUpdate == dRepUpdate)&&(identical(other.authorizeConstitutionalCommitteeHot, authorizeConstitutionalCommitteeHot) || other.authorizeConstitutionalCommitteeHot == authorizeConstitutionalCommitteeHot)&&(identical(other.resignConstitutionalCommitteeCold, resignConstitutionalCommitteeCold) || other.resignConstitutionalCommitteeCold == resignConstitutionalCommitteeCold)&&const DeepCollectionEquality().equals(other._votes, _votes)&&const DeepCollectionEquality().equals(other._proposals, _proposals)&&(identical(other.dRepDeregistration, dRepDeregistration) || other.dRepDeregistration == dRepDeregistration)&&(identical(other.stakeDeregistration, stakeDeregistration) || other.stakeDeregistration == stakeDeregistration));
}


@override
int get hashCode => Object.hash(runtimeType,diff,const DeepCollectionEquality().hash(_usedUtxos),stakeDelegationPoolId,dRepDelegation,dRepRegistration,dRepUpdate,authorizeConstitutionalCommitteeHot,resignConstitutionalCommitteeCold,const DeepCollectionEquality().hash(_votes),const DeepCollectionEquality().hash(_proposals),dRepDeregistration,stakeDeregistration);

@override
String toString() {
  return 'TxDiff(diff: $diff, usedUtxos: $usedUtxos, stakeDelegationPoolId: $stakeDelegationPoolId, dRepDelegation: $dRepDelegation, dRepRegistration: $dRepRegistration, dRepUpdate: $dRepUpdate, authorizeConstitutionalCommitteeHot: $authorizeConstitutionalCommitteeHot, resignConstitutionalCommitteeCold: $resignConstitutionalCommitteeCold, votes: $votes, proposals: $proposals, dRepDeregistration: $dRepDeregistration, stakeDeregistration: $stakeDeregistration)';
}


}




/// @nodoc
mixin _$TxSigningBundle {

 String get receiveAddressBech32; NetworkId get networkId; List<TxPreparedForSigning> get txsData; Value get totalDiff; String? get stakeDelegationPoolId;// bech32 id
 Drep? get dRepDelegation; DRepDiffInfo? get dRepRegistration; DRepDiffInfo? get dRepUpdate; Credential? get authorizeConstitutionalCommitteeHot; Credential? get resignConstitutionalCommitteeCold; List<VoteInfo> get votes; List<ProposalDiffInfo> get proposals; bool get dRepDeregistration; bool get stakeDeregistration;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxSigningBundle&&(identical(other.receiveAddressBech32, receiveAddressBech32) || other.receiveAddressBech32 == receiveAddressBech32)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&const DeepCollectionEquality().equals(other.txsData, txsData)&&(identical(other.totalDiff, totalDiff) || other.totalDiff == totalDiff)&&(identical(other.stakeDelegationPoolId, stakeDelegationPoolId) || other.stakeDelegationPoolId == stakeDelegationPoolId)&&(identical(other.dRepDelegation, dRepDelegation) || other.dRepDelegation == dRepDelegation)&&(identical(other.dRepRegistration, dRepRegistration) || other.dRepRegistration == dRepRegistration)&&(identical(other.dRepUpdate, dRepUpdate) || other.dRepUpdate == dRepUpdate)&&(identical(other.authorizeConstitutionalCommitteeHot, authorizeConstitutionalCommitteeHot) || other.authorizeConstitutionalCommitteeHot == authorizeConstitutionalCommitteeHot)&&(identical(other.resignConstitutionalCommitteeCold, resignConstitutionalCommitteeCold) || other.resignConstitutionalCommitteeCold == resignConstitutionalCommitteeCold)&&const DeepCollectionEquality().equals(other.votes, votes)&&const DeepCollectionEquality().equals(other.proposals, proposals)&&(identical(other.dRepDeregistration, dRepDeregistration) || other.dRepDeregistration == dRepDeregistration)&&(identical(other.stakeDeregistration, stakeDeregistration) || other.stakeDeregistration == stakeDeregistration));
}


@override
int get hashCode => Object.hash(runtimeType,receiveAddressBech32,networkId,const DeepCollectionEquality().hash(txsData),totalDiff,stakeDelegationPoolId,dRepDelegation,dRepRegistration,dRepUpdate,authorizeConstitutionalCommitteeHot,resignConstitutionalCommitteeCold,const DeepCollectionEquality().hash(votes),const DeepCollectionEquality().hash(proposals),dRepDeregistration,stakeDeregistration);

@override
String toString() {
  return 'TxSigningBundle(receiveAddressBech32: $receiveAddressBech32, networkId: $networkId, txsData: $txsData, totalDiff: $totalDiff, stakeDelegationPoolId: $stakeDelegationPoolId, dRepDelegation: $dRepDelegation, dRepRegistration: $dRepRegistration, dRepUpdate: $dRepUpdate, authorizeConstitutionalCommitteeHot: $authorizeConstitutionalCommitteeHot, resignConstitutionalCommitteeCold: $resignConstitutionalCommitteeCold, votes: $votes, proposals: $proposals, dRepDeregistration: $dRepDeregistration, stakeDeregistration: $stakeDeregistration)';
}


}





/// @nodoc


class _TxSigningBundle extends TxSigningBundle {
  const _TxSigningBundle({required this.receiveAddressBech32, required this.networkId, required final  List<TxPreparedForSigning> txsData, required this.totalDiff, required this.stakeDelegationPoolId, required this.dRepDelegation, required this.dRepRegistration, required this.dRepUpdate, required this.authorizeConstitutionalCommitteeHot, required this.resignConstitutionalCommitteeCold, required final  List<VoteInfo> votes, required final  List<ProposalDiffInfo> proposals, required this.dRepDeregistration, required this.stakeDeregistration}): _txsData = txsData,_votes = votes,_proposals = proposals,super._();
  

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
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxSigningBundle&&(identical(other.receiveAddressBech32, receiveAddressBech32) || other.receiveAddressBech32 == receiveAddressBech32)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&const DeepCollectionEquality().equals(other._txsData, _txsData)&&(identical(other.totalDiff, totalDiff) || other.totalDiff == totalDiff)&&(identical(other.stakeDelegationPoolId, stakeDelegationPoolId) || other.stakeDelegationPoolId == stakeDelegationPoolId)&&(identical(other.dRepDelegation, dRepDelegation) || other.dRepDelegation == dRepDelegation)&&(identical(other.dRepRegistration, dRepRegistration) || other.dRepRegistration == dRepRegistration)&&(identical(other.dRepUpdate, dRepUpdate) || other.dRepUpdate == dRepUpdate)&&(identical(other.authorizeConstitutionalCommitteeHot, authorizeConstitutionalCommitteeHot) || other.authorizeConstitutionalCommitteeHot == authorizeConstitutionalCommitteeHot)&&(identical(other.resignConstitutionalCommitteeCold, resignConstitutionalCommitteeCold) || other.resignConstitutionalCommitteeCold == resignConstitutionalCommitteeCold)&&const DeepCollectionEquality().equals(other._votes, _votes)&&const DeepCollectionEquality().equals(other._proposals, _proposals)&&(identical(other.dRepDeregistration, dRepDeregistration) || other.dRepDeregistration == dRepDeregistration)&&(identical(other.stakeDeregistration, stakeDeregistration) || other.stakeDeregistration == stakeDeregistration));
}


@override
int get hashCode => Object.hash(runtimeType,receiveAddressBech32,networkId,const DeepCollectionEquality().hash(_txsData),totalDiff,stakeDelegationPoolId,dRepDelegation,dRepRegistration,dRepUpdate,authorizeConstitutionalCommitteeHot,resignConstitutionalCommitteeCold,const DeepCollectionEquality().hash(_votes),const DeepCollectionEquality().hash(_proposals),dRepDeregistration,stakeDeregistration);

@override
String toString() {
  return 'TxSigningBundle(receiveAddressBech32: $receiveAddressBech32, networkId: $networkId, txsData: $txsData, totalDiff: $totalDiff, stakeDelegationPoolId: $stakeDelegationPoolId, dRepDelegation: $dRepDelegation, dRepRegistration: $dRepRegistration, dRepUpdate: $dRepUpdate, authorizeConstitutionalCommitteeHot: $authorizeConstitutionalCommitteeHot, resignConstitutionalCommitteeCold: $resignConstitutionalCommitteeCold, votes: $votes, proposals: $proposals, dRepDeregistration: $dRepDeregistration, stakeDeregistration: $stakeDeregistration)';
}


}




/// @nodoc
mixin _$TxSignedBundle {

 String get receiveAddressBech32; NetworkId get networkId; List<TxAndSignature> get txsData; Value get totalDiff;
/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxSignedBundleCopyWith<TxSignedBundle> get copyWith => _$TxSignedBundleCopyWithImpl<TxSignedBundle>(this as TxSignedBundle, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxSignedBundle&&(identical(other.receiveAddressBech32, receiveAddressBech32) || other.receiveAddressBech32 == receiveAddressBech32)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&const DeepCollectionEquality().equals(other.txsData, txsData)&&(identical(other.totalDiff, totalDiff) || other.totalDiff == totalDiff));
}


@override
int get hashCode => Object.hash(runtimeType,receiveAddressBech32,networkId,const DeepCollectionEquality().hash(txsData),totalDiff);

@override
String toString() {
  return 'TxSignedBundle(receiveAddressBech32: $receiveAddressBech32, networkId: $networkId, txsData: $txsData, totalDiff: $totalDiff)';
}


}

/// @nodoc
abstract mixin class $TxSignedBundleCopyWith<$Res>  {
  factory $TxSignedBundleCopyWith(TxSignedBundle value, $Res Function(TxSignedBundle) _then) = _$TxSignedBundleCopyWithImpl;
@useResult
$Res call({
 String receiveAddressBech32, NetworkId networkId, List<TxAndSignature> txsData, Value totalDiff
});


$ValueCopyWith<$Res> get totalDiff;

}
/// @nodoc
class _$TxSignedBundleCopyWithImpl<$Res>
    implements $TxSignedBundleCopyWith<$Res> {
  _$TxSignedBundleCopyWithImpl(this._self, this._then);

  final TxSignedBundle _self;
  final $Res Function(TxSignedBundle) _then;

/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiveAddressBech32 = null,Object? networkId = null,Object? txsData = null,Object? totalDiff = null,}) {
  return _then(_self.copyWith(
receiveAddressBech32: null == receiveAddressBech32 ? _self.receiveAddressBech32 : receiveAddressBech32 // ignore: cast_nullable_to_non_nullable
as String,networkId: null == networkId ? _self.networkId : networkId // ignore: cast_nullable_to_non_nullable
as NetworkId,txsData: null == txsData ? _self.txsData : txsData // ignore: cast_nullable_to_non_nullable
as List<TxAndSignature>,totalDiff: null == totalDiff ? _self.totalDiff : totalDiff // ignore: cast_nullable_to_non_nullable
as Value,
  ));
}
/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValueCopyWith<$Res> get totalDiff {
  
  return $ValueCopyWith<$Res>(_self.totalDiff, (value) {
    return _then(_self.copyWith(totalDiff: value));
  });
}
}



/// @nodoc


class _TxSignedBundle extends TxSignedBundle {
  const _TxSignedBundle({required this.receiveAddressBech32, required this.networkId, required final  List<TxAndSignature> txsData, required this.totalDiff}): _txsData = txsData,super._();
  

@override final  String receiveAddressBech32;
@override final  NetworkId networkId;
 final  List<TxAndSignature> _txsData;
@override List<TxAndSignature> get txsData {
  if (_txsData is EqualUnmodifiableListView) return _txsData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_txsData);
}

@override final  Value totalDiff;

/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxSignedBundleCopyWith<_TxSignedBundle> get copyWith => __$TxSignedBundleCopyWithImpl<_TxSignedBundle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxSignedBundle&&(identical(other.receiveAddressBech32, receiveAddressBech32) || other.receiveAddressBech32 == receiveAddressBech32)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&const DeepCollectionEquality().equals(other._txsData, _txsData)&&(identical(other.totalDiff, totalDiff) || other.totalDiff == totalDiff));
}


@override
int get hashCode => Object.hash(runtimeType,receiveAddressBech32,networkId,const DeepCollectionEquality().hash(_txsData),totalDiff);

@override
String toString() {
  return 'TxSignedBundle(receiveAddressBech32: $receiveAddressBech32, networkId: $networkId, txsData: $txsData, totalDiff: $totalDiff)';
}


}

/// @nodoc
abstract mixin class _$TxSignedBundleCopyWith<$Res> implements $TxSignedBundleCopyWith<$Res> {
  factory _$TxSignedBundleCopyWith(_TxSignedBundle value, $Res Function(_TxSignedBundle) _then) = __$TxSignedBundleCopyWithImpl;
@override @useResult
$Res call({
 String receiveAddressBech32, NetworkId networkId, List<TxAndSignature> txsData, Value totalDiff
});


@override $ValueCopyWith<$Res> get totalDiff;

}
/// @nodoc
class __$TxSignedBundleCopyWithImpl<$Res>
    implements _$TxSignedBundleCopyWith<$Res> {
  __$TxSignedBundleCopyWithImpl(this._self, this._then);

  final _TxSignedBundle _self;
  final $Res Function(_TxSignedBundle) _then;

/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiveAddressBech32 = null,Object? networkId = null,Object? txsData = null,Object? totalDiff = null,}) {
  return _then(_TxSignedBundle(
receiveAddressBech32: null == receiveAddressBech32 ? _self.receiveAddressBech32 : receiveAddressBech32 // ignore: cast_nullable_to_non_nullable
as String,networkId: null == networkId ? _self.networkId : networkId // ignore: cast_nullable_to_non_nullable
as NetworkId,txsData: null == txsData ? _self._txsData : txsData // ignore: cast_nullable_to_non_nullable
as List<TxAndSignature>,totalDiff: null == totalDiff ? _self.totalDiff : totalDiff // ignore: cast_nullable_to_non_nullable
as Value,
  ));
}

/// Create a copy of TxSignedBundle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValueCopyWith<$Res> get totalDiff {
  
  return $ValueCopyWith<$Res>(_self.totalDiff, (value) {
    return _then(_self.copyWith(totalDiff: value));
  });
}
}

/// @nodoc
mixin _$TxPreparedForSigning {

 CardanoTransaction get tx; TxDiff get txDiff; Iterable<Utxo> get utxosBeforeTx; Set<String> get signingAddressesRequired;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxPreparedForSigning&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.txDiff, txDiff) || other.txDiff == txDiff)&&const DeepCollectionEquality().equals(other.utxosBeforeTx, utxosBeforeTx)&&const DeepCollectionEquality().equals(other.signingAddressesRequired, signingAddressesRequired));
}


@override
int get hashCode => Object.hash(runtimeType,tx,txDiff,const DeepCollectionEquality().hash(utxosBeforeTx),const DeepCollectionEquality().hash(signingAddressesRequired));

@override
String toString() {
  return 'TxPreparedForSigning(tx: $tx, txDiff: $txDiff, utxosBeforeTx: $utxosBeforeTx, signingAddressesRequired: $signingAddressesRequired)';
}


}





/// @nodoc


class _TxPreparedForSigning extends TxPreparedForSigning {
  const _TxPreparedForSigning({required this.tx, required this.txDiff, required this.utxosBeforeTx, required final  Set<String> signingAddressesRequired}): _signingAddressesRequired = signingAddressesRequired,super._();
  

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
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxPreparedForSigning&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.txDiff, txDiff) || other.txDiff == txDiff)&&const DeepCollectionEquality().equals(other.utxosBeforeTx, utxosBeforeTx)&&const DeepCollectionEquality().equals(other._signingAddressesRequired, _signingAddressesRequired));
}


@override
int get hashCode => Object.hash(runtimeType,tx,txDiff,const DeepCollectionEquality().hash(utxosBeforeTx),const DeepCollectionEquality().hash(_signingAddressesRequired));

@override
String toString() {
  return 'TxPreparedForSigning(tx: $tx, txDiff: $txDiff, utxosBeforeTx: $utxosBeforeTx, signingAddressesRequired: $signingAddressesRequired)';
}


}




/// @nodoc
mixin _$TxAndSignature {

 CardanoTransaction get tx; TxDiff get txDiff; Iterable<Utxo> get utxosBeforeTx; Set<String> get signingAddressesRequired; WitnessSet get nweSignatures;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxAndSignature&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.txDiff, txDiff) || other.txDiff == txDiff)&&const DeepCollectionEquality().equals(other.utxosBeforeTx, utxosBeforeTx)&&const DeepCollectionEquality().equals(other.signingAddressesRequired, signingAddressesRequired)&&(identical(other.nweSignatures, nweSignatures) || other.nweSignatures == nweSignatures));
}


@override
int get hashCode => Object.hash(runtimeType,tx,txDiff,const DeepCollectionEquality().hash(utxosBeforeTx),const DeepCollectionEquality().hash(signingAddressesRequired),nweSignatures);

@override
String toString() {
  return 'TxAndSignature(tx: $tx, txDiff: $txDiff, utxosBeforeTx: $utxosBeforeTx, signingAddressesRequired: $signingAddressesRequired, nweSignatures: $nweSignatures)';
}


}





/// @nodoc


class _TxAndSignature extends TxAndSignature {
  const _TxAndSignature({required this.tx, required this.txDiff, required this.utxosBeforeTx, required final  Set<String> signingAddressesRequired, required this.nweSignatures}): _signingAddressesRequired = signingAddressesRequired,super._();
  

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
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxAndSignature&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.txDiff, txDiff) || other.txDiff == txDiff)&&const DeepCollectionEquality().equals(other.utxosBeforeTx, utxosBeforeTx)&&const DeepCollectionEquality().equals(other._signingAddressesRequired, _signingAddressesRequired)&&(identical(other.nweSignatures, nweSignatures) || other.nweSignatures == nweSignatures));
}


@override
int get hashCode => Object.hash(runtimeType,tx,txDiff,const DeepCollectionEquality().hash(utxosBeforeTx),const DeepCollectionEquality().hash(_signingAddressesRequired),nweSignatures);

@override
String toString() {
  return 'TxAndSignature(tx: $tx, txDiff: $txDiff, utxosBeforeTx: $utxosBeforeTx, signingAddressesRequired: $signingAddressesRequired, nweSignatures: $nweSignatures)';
}


}




// dart format on
