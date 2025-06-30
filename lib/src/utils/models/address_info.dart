// ignore_for_file: invalid_annotation_target

import "package:freezed_annotation/freezed_annotation.dart";

import "../../../cardano_dart_types.dart";

part "address_info.freezed.dart";
part "address_info.g.dart";

@freezed
sealed class AddressInfo with _$AddressInfo {
  const AddressInfo._();

  const factory AddressInfo.byron() = AddressInfo_Byron;

  const factory AddressInfo.shelley({
    required bool isEnterprise,
    required bool isScript,
    required NetworkId network,
  }) = AddressInfo_Shelley;

  // Generally speaking, it may look like an address but it's not a valid address (e.g. invalid checksum)
  const factory AddressInfo.invalid() = AddressInfo_Invalid;

  const factory AddressInfo.notAnAddress() = AddressInfo_NotAnAddress;

  factory AddressInfo.fromJson(Map<String, dynamic> json) => _$AddressInfoFromJson(json);
}

@freezed
sealed class StakeAddressInfo with _$StakeAddressInfo {
  const StakeAddressInfo._();
  const factory StakeAddressInfo.valid({
    required bool isScript,
    required NetworkId network,
  }) = StakeAddressInfo_Valid;

  const factory StakeAddressInfo.notAnAddress() = StakeAddressInfo_NotAnAddress;

  factory StakeAddressInfo.fromJson(Map<String, dynamic> json) => _$StakeAddressInfoFromJson(json);
}
