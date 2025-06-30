// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_diff_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProposalDiffInfo {
  GovActionId get proposalId;
  GovAction get proposal;

  /// Create a copy of ProposalDiffInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProposalDiffInfoCopyWith<ProposalDiffInfo> get copyWith =>
      _$ProposalDiffInfoCopyWithImpl<ProposalDiffInfo>(
          this as ProposalDiffInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProposalDiffInfo &&
            (identical(other.proposalId, proposalId) ||
                other.proposalId == proposalId) &&
            (identical(other.proposal, proposal) ||
                other.proposal == proposal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, proposalId, proposal);

  @override
  String toString() {
    return 'ProposalDiffInfo(proposalId: $proposalId, proposal: $proposal)';
  }
}

/// @nodoc
abstract mixin class $ProposalDiffInfoCopyWith<$Res> {
  factory $ProposalDiffInfoCopyWith(
          ProposalDiffInfo value, $Res Function(ProposalDiffInfo) _then) =
      _$ProposalDiffInfoCopyWithImpl;
  @useResult
  $Res call({GovActionId proposalId, GovAction proposal});

  $GovActionIdCopyWith<$Res> get proposalId;
  $GovActionCopyWith<$Res> get proposal;
}

/// @nodoc
class _$ProposalDiffInfoCopyWithImpl<$Res>
    implements $ProposalDiffInfoCopyWith<$Res> {
  _$ProposalDiffInfoCopyWithImpl(this._self, this._then);

  final ProposalDiffInfo _self;
  final $Res Function(ProposalDiffInfo) _then;

  /// Create a copy of ProposalDiffInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposalId = null,
    Object? proposal = null,
  }) {
    return _then(_self.copyWith(
      proposalId: null == proposalId
          ? _self.proposalId
          : proposalId // ignore: cast_nullable_to_non_nullable
              as GovActionId,
      proposal: null == proposal
          ? _self.proposal
          : proposal // ignore: cast_nullable_to_non_nullable
              as GovAction,
    ));
  }

  /// Create a copy of ProposalDiffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GovActionIdCopyWith<$Res> get proposalId {
    return $GovActionIdCopyWith<$Res>(_self.proposalId, (value) {
      return _then(_self.copyWith(proposalId: value));
    });
  }

  /// Create a copy of ProposalDiffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GovActionCopyWith<$Res> get proposal {
    return $GovActionCopyWith<$Res>(_self.proposal, (value) {
      return _then(_self.copyWith(proposal: value));
    });
  }
}

/// @nodoc

class _ProposalDiffInfo extends ProposalDiffInfo {
  const _ProposalDiffInfo({required this.proposalId, required this.proposal})
      : super._();

  @override
  final GovActionId proposalId;
  @override
  final GovAction proposal;

  /// Create a copy of ProposalDiffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProposalDiffInfoCopyWith<_ProposalDiffInfo> get copyWith =>
      __$ProposalDiffInfoCopyWithImpl<_ProposalDiffInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProposalDiffInfo &&
            (identical(other.proposalId, proposalId) ||
                other.proposalId == proposalId) &&
            (identical(other.proposal, proposal) ||
                other.proposal == proposal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, proposalId, proposal);

  @override
  String toString() {
    return 'ProposalDiffInfo(proposalId: $proposalId, proposal: $proposal)';
  }
}

/// @nodoc
abstract mixin class _$ProposalDiffInfoCopyWith<$Res>
    implements $ProposalDiffInfoCopyWith<$Res> {
  factory _$ProposalDiffInfoCopyWith(
          _ProposalDiffInfo value, $Res Function(_ProposalDiffInfo) _then) =
      __$ProposalDiffInfoCopyWithImpl;
  @override
  @useResult
  $Res call({GovActionId proposalId, GovAction proposal});

  @override
  $GovActionIdCopyWith<$Res> get proposalId;
  @override
  $GovActionCopyWith<$Res> get proposal;
}

/// @nodoc
class __$ProposalDiffInfoCopyWithImpl<$Res>
    implements _$ProposalDiffInfoCopyWith<$Res> {
  __$ProposalDiffInfoCopyWithImpl(this._self, this._then);

  final _ProposalDiffInfo _self;
  final $Res Function(_ProposalDiffInfo) _then;

  /// Create a copy of ProposalDiffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? proposalId = null,
    Object? proposal = null,
  }) {
    return _then(_ProposalDiffInfo(
      proposalId: null == proposalId
          ? _self.proposalId
          : proposalId // ignore: cast_nullable_to_non_nullable
              as GovActionId,
      proposal: null == proposal
          ? _self.proposal
          : proposal // ignore: cast_nullable_to_non_nullable
              as GovAction,
    ));
  }

  /// Create a copy of ProposalDiffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GovActionIdCopyWith<$Res> get proposalId {
    return $GovActionIdCopyWith<$Res>(_self.proposalId, (value) {
      return _then(_self.copyWith(proposalId: value));
    });
  }

  /// Create a copy of ProposalDiffInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GovActionCopyWith<$Res> get proposal {
    return $GovActionCopyWith<$Res>(_self.proposal, (value) {
      return _then(_self.copyWith(proposal: value));
    });
  }
}

// dart format on
