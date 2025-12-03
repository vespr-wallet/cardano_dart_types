## 2.11.2

Bug Fixes:
- [CardanoTransactionBody] Fixed empty `metadataHash` being dropped during re-serialization
- [CardanoTransactionBody] Fixed `copyWith` breaking ascending key order when adding new fields to a parsed transaction

## 2.11.1

Bug Fix:
- [CardanoTransactionBody] now retains original order of the map entries so that it generates identical CBOR when re-serialized (which is important to generate the correct tx hash required for signing)

## 2.11.0

Breaking Change:

- [CardanoTransactionBody] Field "originalBlake2bHash256" can now be accessed as "blake2bHash256.value"

Bug Fix:

- [TxPreparedForSigning] now retains `tx.body.originalBlake2bHash256` after marshal/unmarshal to ensure consistency between native and web platforms

**Note:** The `originalBlake2bHash256` is computed from the raw CBOR bytes before parsing into [CardanoTransaction]. This prevents issues where re-serializing the parsed body produces a slightly different hash, leading to invalid signatures. On native (VM), this hash was already used for signing. However, on web (due to marshaling/unmarshaling required for web workers), this hash was lost in transit—causing mobile to generate valid signatures while web signatures (sometimes) failed.

## 2.10.0

Breaking Change:

- [CardanoSigningPath] no longer tracks account index

Other Changes:

- Fixed ser/deser for Certificates containing 258 tag
- Fixed CoseSig parsing

## 2.9.5

- Added new [CardanoSigningPath] to easily specify required signers for both cold and hot wallets

## 2.9.4

- [CoseKey] - added deserialize and deserializeHex factories
- [CoseSign] - added deserializeHex factory
- [CoseSign1] - added deserializeHex factory

## 2.9.3

- FIX: [CoseSign1] was throwing for serialized with forJson: true when payload has not utf8
- Re-generated code with latest freezed version

## 2.9.2

- Updated freezed major version and re-generated classes

## [2.9.1+1]

- Improved and expanded the README documentation for open-source/public use. No code changes.

## [2.9.1] - April 20, 2025

# Breaking Changes

- renamed argument for signData to be more generic

## [2.9.0] - April 20, 2025

# Breaking Changes

- drep id and cc id now compute based on CIP 129
- old CIP 105 derivations are available with `legacy` in the name

## [2.8.3] - January 3, 2025

# Tech Changes

- Applied new linter and corrected many lints

## [2.8.0] - 17th of November, 2024

# Changes

- Storing some additional cbor tags for TXs to make sure re-encoding yields same result

## [2.7.2] - 17th of November, 2024

# New

- [CardanoWallet] exposes xPub Bech32

## [2.7.1] - 5th of November, 2024

# New

- Minor improvements to address validator

## [2.7.0] - 29th of October, 2024

# New

- Added some `CardanoUtils` class that can validate and give info on address and stake address

## [2.6.4] - 7th of October, 2024

# Fixes

- Added support for redeemers as CborMap (introduced in Conway)

## [2.6.3] - 26th of September, 2024

# Fixes

- Simplified CardanoPubAccount factory

## [2.6.2] - 26th of September, 2024

# Fixes

- Fixed post alonzo output script cbor encoding

## [2.6.1] - 26th of September, 2024

# Changes

- Fixed dRep type serialization

## [2.6.0] - 26th of September, 2024

# Changes

- Updated parsing/re-encoding of Cardano TXs (fixing `Coin` changing from int to BigInt when re-serialized)

# Potential Breaking Changes

- Certs and a few places changed from using `BigInt` to just storing the original `CborInt`

## [2.5.1] - 4th of September, 2024

# Changes

- Exposed [ProposalDiffInfo] publicly

## [2.5.0] - 4th of September, 2024

# Breaking Changes

- [TxSigningBundle] and [TxDiff] Changed proposals info type (now inclodes both gov action and gov action id)

## [2.4.5] - 4th of September, 2024

# Changes

- [TxSigningBundle] Add drep deregistration info

## [2.4.4] - 4th of September, 2024

# Changes

- [TxDiff] Add drep deregistration info

## [2.4.2] - 30th of August, 2024

# Changes

- Exported Voter Type

## [2.4.1] - 30th of August, 2024

# Changes

- Exported Voting and Proposal models

## [2.4.0] - 30th of August, 2024

# Changes

- [GovAction] now exposes bech32 value
- [TxDiff] now exposes additional info on actions related to staking and governance
- [TxSigningBundle] now exposes additional info on actions related to staking and governance

## [2.3.1] - 27th of August, 2024

# Changes

- Exposed again Cardano Derivations

## [2.3.0] - 27th of August, 2024

Flutter 3.24.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 5874a72aa4 (5 days ago) • 2024-08-20 16:46:00 -0500
Engine • revision c9b9d5780d
Tools • Dart 3.5.1 • DevTools 2.37.2

# (Kinda Breaking) Changes

- Cardano Derived Address not takeing a CardanoAddress anymore ; instead it takes address type and raw key bytes

Note: This is not exactly breaking because this was not actually used anywhere until now

# Changes

- [CardanoPubAccount] now exposes derivations to get hex key / hashes / etc from there

## [2.2.0] - 27th of August, 2024

Flutter 3.24.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 5874a72aa4 (5 days ago) • 2024-08-20 16:46:00 -0500
Engine • revision c9b9d5780d
Tools • Dart 3.5.1 • DevTools 2.37.2

# Changes

- Added Plutus V3 Witness Script

## [2.1.0] - 26th of August, 2024

Flutter 3.24.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 5874a72aa4 (5 days ago) • 2024-08-20 16:46:00 -0500
Engine • revision c9b9d5780d
Tools • Dart 3.5.1 • DevTools 2.37.2

# Breaking Changes (Fixes)

- [CardanoPubAccount] -> Some exposed fields were mistakenly claiming to be `hash` when in fact they were just the `hex` encoding. Renamed them to correctly match what they are.

# Changes

- [CardanoPubAccountFactory] added method do create from hex encoded xPub

## [2.0.1] - 25th of August, 2024

Flutter 3.24.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 5874a72aa4 (5 days ago) • 2024-08-20 16:46:00 -0500
Engine • revision c9b9d5780d
Tools • Dart 3.5.1 • DevTools 2.37.2

# Changes

- Added `instanceSync` static to [CardanoPubAccountFactory]

## [2.0.0] - 13th of August, 2024

Flutter 3.24.0 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 80c2e84975 (10 days ago) • 2024-07-30 23:06:49 +0700
Engine • revision b8800d88be
Tools • Dart 3.5.0 • DevTools 2.37.2

# Breaking Changes

- Added new CardanoTransactionInputs class to expose cbor tags (needed for ledger)

## [1.9.1] - 9th of August, 2024

Flutter 3.24.0 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 80c2e84975 (10 days ago) • 2024-07-30 23:06:49 +0700
Engine • revision b8800d88be
Tools • Dart 3.5.0 • DevTools 2.37.2

# Changes

- Lowered min accepted `collection` version

## [1.9.0] - 9th of August, 2024

Flutter 3.24.0 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 80c2e84975 (10 days ago) • 2024-07-30 23:06:49 +0700
Engine • revision b8800d88be
Tools • Dart 3.5.0 • DevTools 2.37.2

# Changes

- Added CardanoAddress factory that takes either bech32 or base58 to support byron addresses

## [1.8.8] - 24th of July, 2024

Flutter 3.23.0-0.1.pre • channel beta • https://github.com/flutter/flutter.git
Framework • revision 2feea7a407 (7 weeks ago) • 2024-06-06 10:19:10 +0700
Engine • revision bb10c54666
Tools • Dart 3.5.0 (build 3.5.0-180.3.beta) • DevTools 2.36.0

# Changes

- Exposed some extra classes
- Loosened RationalNumber CBOR parsing to accept CborList too
- CardanoPubAccount: Exposed some additional info as Lazy for easy access

## [1.8.7] - 23rd of July, 2024

Flutter 3.23.0-0.1.pre • channel beta • https://github.com/flutter/flutter.git
Framework • revision 2feea7a407 (7 weeks ago) • 2024-06-06 10:19:10 +0700
Engine • revision bb10c54666
Tools • Dart 3.5.0 (build 3.5.0-180.3.beta) • DevTools 2.36.0

# Changes

- Added Cardano Pub Account from xpub bech32

## [1.8.6] - 23rd of July, 2024

Flutter 3.23.0-0.1.pre • channel beta • https://github.com/flutter/flutter.git
Framework • revision 2feea7a407 (7 weeks ago) • 2024-06-06 10:19:10 +0700
Engine • revision bb10c54666
Tools • Dart 3.5.0 (build 3.5.0-180.3.beta) • DevTools 2.36.0

# Changes

- Pointing again to latest CBOR library version

## [1.8.5] - 18th of July, 2024

# Internal Changes

- Updated deps and re-ran code gen

# BugFix

- Updated cbor library to fork with WEB bugfix

## [1.8.4] - 10 / 07 / 2024

# BugFix

- Updated min cbor version to the one without Int parsing bug

## [1.8.2] - 27 / 06 / 2024

# BugFix

- Fixed certs not parsing Anchor as optional

## [1.8.1] - 27 / 06 / 2024

# Changes

- Added support and types for CONWAY era transaction body and certificates
- Now the original tx blake hash is stored on deserialization to avoid issues where re-encoding the cbor yields an equivalent but not identical result (leading to invalid signature)

## [1.8.0] - 14 / 06 / 2024

# Changes

- Initial Release of the re-modularized package
- Changed `Certificate` to be a freezed union class
- Renamed many classes and files
