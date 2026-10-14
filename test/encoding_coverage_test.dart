import "dart:convert";

import "package:cardano_dart_types/cardano_dart_types.dart";
import "package:test/test.dart";

import "test_utils/cbor_mutations.dart";

/// Synthetic transactions built directly as CBOR (shapes follow the Conway CDDL) so that every typed
/// model gets exercised by the [encodingVariants] round-trip, including types no fixture covers.
void main() {
  debugAssertEnabled = true;

  group("synthetic txs round-trip every encoding variant byte-exact", () {
    test("body: outputs, mint, collateral, certificates, withdrawals, misc fields + metadata", () {
      final tx = _tx(_kitchenSinkBody(), _intMap({0: _vkeys(1)}), aux: _metadata);
      final parsed = _expectVariantsRoundTrip(tx, bodyEquality: false);
      expect(
        parsed.body.certs!.certificates.map((c) => c.certType).toSet(),
        {0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18},
      );
    });

    test("governance: voting procedures + every gov action kind", () {
      final tx = _tx(_governanceBody(), _intMap({0: _vkeys(2)}));
      final parsed = _expectVariantsRoundTrip(tx, bodyEquality: false);
      expect(parsed.body.votingProcedures!.voting.length, 5);
      expect(
        parsed.body.proposalProcedures!.map((p) => p.govAction.runtimeType.toString()).toSet().length,
        7,
      );
    });

    test("conway witness set: all witness kinds + redeemers map", () {
      final witnesses = _intMap({
        0: _vkeys(3),
        1: _set([
          _nativeScriptTree,
          _list([_int(0), _keyHash(100)]),
        ]),
        2: _set([
          _list([
            _bytes(32, 101),
            _bytes(64, 102),
            _bytes(32, 103),
            CborBytes(const [0xa0]),
          ]),
          _list([_bytes(32, 104), _bytes(64, 105), _bytes(32, 106), _bytes(10, 107)]),
        ]),
        3: _set([_bytes(40, 108)]),
        4: _set([
          _plutusData,
          _list([_int(1), _int(2)]),
          CborMap({_bytes(3, 109): _int(4)}),
        ]),
        5: CborMap({
          for (final (tag, index) in [(0, 0), (0, 1), (1, 0), (2, 3), (3, 0), (4, 1), (5, 0)])
            _list([_int(tag), _int(index)]): _list([_plutusData, _exUnits(tag, index)]),
        }),
        6: _list([_bytes(60, 110), _bytes(70, 111)]),
        7: _set([_bytes(50, 112)]),
      });
      final parsed = _expectVariantsRoundTrip(_tx(_minimalBody(scriptDataHash: true), witnesses, aux: _metadata));
      expect(parsed.witnessSet.redeemer.whereType<Redeemer_Conway>(), hasLength(7));
      expect(parsed.witnessSet.nativeScripts, hasLength(2));
    });

    test("pre-conway witness set: redeemers list, invalid tx, alonzo aux data", () {
      final witnesses = _intMap({
        0: _list([
          _list([_bytes(32, 120), _bytes(64, 121)]),
        ]),
        3: _list([_bytes(40, 122)]),
        4: _list([_plutusData]),
        5: _list([
          _list([_int(0), _int(0), _plutusData, _exUnits(0, 0)]),
          _list([_int(1), _int(2), _list([]), _exUnits(1, 2)]),
        ]),
      });
      final aux = CborMap({_int(0): _metadata}, tags: const [259]);
      final tx = _list([_minimalBody(scriptDataHash: true), witnesses, const CborBool(false), aux]);
      final parsed = _expectVariantsRoundTrip(tx);
      expect(parsed.witnessSet.redeemer.whereType<Redeemer_PreConway>(), hasLength(2));
      expect(parsed.isValidDi, isFalse);
    });
  });
}

/// Runs [tx] and every encoding variant of it through parse -> serialize, expecting byte-exact
/// output, a matching body hash, and a stable model on re-parse. Returns the parsed original.
///
/// Models holding raw [CborValue] fields (pool relays, cost models / ex units in protocol param
/// updates) compare those by identity, so for bodies containing them only the witness set and
/// auxiliary data are compared ([bodyEquality] = false).
CardanoTransaction _expectVariantsRoundTrip(CborValue tx, {bool bodyEquality = true}) {
  final variants = [tx, ...encodingVariants(tx)];
  expect(variants.length, greaterThan(20));
  for (final variant in variants) {
    final hex = variant.hexEncode();
    final CardanoTransaction parsed;
    try {
      parsed = CardanoTransaction.deserializeFromHex(hex);
    } catch (e) {
      fail("variant failed to parse ($e): $hex");
    }
    final reEncoded = parsed.serializeHexString();
    expect(reEncoded, hex, reason: "variant: $hex");
    expect(parsed.body.computeBlake2bHash256().hexEncode(), parsed.body.blake2bHash256Hex(), reason: "variant: $hex");
    final reParsed = CardanoTransaction.deserializeFromHex(reEncoded);
    if (bodyEquality) {
      expect(reParsed, parsed, reason: "re-parse differs, variant: $hex");
    } else {
      expect(reParsed.witnessSet, parsed.witnessSet, reason: "re-parse differs, variant: $hex");
      expect(reParsed.auxiliaryData, parsed.auxiliaryData, reason: "re-parse differs, variant: $hex");
    }
  }
  return CardanoTransaction.deserializeFromHex(tx.hexEncode());
}

// ---------------------------------------------------------------------------------------------------------------------
// CBOR builders

CborBytes _bytes(int length, int seed) => CborBytes(List.generate(length, (i) => (seed * 37 + i * 11 + 5) % 256));
CborBytes _keyHash(int seed) => _bytes(28, seed);
CborBytes _hash32(int seed) => _bytes(32, seed);
CborSmallInt _int(int value) => CborSmallInt(value);
CborList _list(List<CborValue> items, {List<int> tags = const []}) => CborList(items, tags: tags);
CborList _set(List<CborValue> items) => _list(items, tags: const [258]);
CborMap _intMap(Map<int, CborValue> entries) => CborMap({for (final e in entries.entries) _int(e.key): e.value});
CborList _rational(int numerator, int denominator) => _list([_int(numerator), _int(denominator)], tags: const [30]);
CborBytes _tag24(CborValue inner) => CborBytes(cborEncode(inner), tags: const [24]);
CborString _text(String value) => CborString(value);

CborList _tx(CborMap body, CborMap witnesses, {CborValue aux = const CborNull()}) =>
    _list([body, witnesses, const CborBool(true), aux]);
CborList _txIn(int seed, int index) => _list([_hash32(seed), _int(index)]);
CborBytes _rewardAccount(int seed, {bool script = false}) =>
    CborBytes([if (script) 0xf1 else 0xe1, ..._keyHash(seed).bytes]);
CborBytes _baseAddress(int seed) => CborBytes([0x01, ..._keyHash(seed).bytes, ..._keyHash(seed + 1).bytes]);
CborBytes _enterpriseAddress(int seed) => CborBytes([0x61, ..._keyHash(seed).bytes]);
CborList _cred(int kind, int seed) => _list([_int(kind), _keyHash(seed)]);
CborList _anchor(int seed) => _list([_text("https://example.com/anchor/$seed.json"), _hash32(seed)]);
CborList _govActionId(int seed, int index) => _list([_hash32(seed), _int(index)]);
CborList _exUnits(int a, int b) => _list([_int(1000 + a * 7 + b), _int(200000 + a * 1000 + b)]);
CborList _vkeys(int seed) => _set([
  _list([_bytes(32, seed), _bytes(64, seed + 1)]),
  _list([_bytes(32, seed + 2), _bytes(64, seed + 3)]),
]);
CborBytes _assetName(String name) => CborBytes(utf8.encode(name));

/// multiasset<int64>: two policies, several assets, negative amounts (mint) and an empty asset name.
CborMap _assets({bool negative = false}) => CborMap({
  _keyHash(1): CborMap({_assetName("TokenA"): _int(5), _assetName("TokenB"): _int(negative ? -3 : 3)}),
  _keyHash(2): CborMap({
    _assetName(""): _int(negative ? -1 : 1),
    _assetName("Big"): CborInt(BigInt.from(1000000000000)),
  }),
});

/// constr 0 with ints, bytes, a map, big ints (tags 2/3), compact constr 7, general-form constr and chunked bytes.
final CborValue _plutusData = _list(
  [
    _int(42),
    _int(-42),
    _keyHash(90),
    CborMap({
      _bytes(2, 91): _int(-7),
      _int(3): _list([]),
      _list([_int(1)]): CborMap({}),
    }),
    CborInt(BigInt.two.pow(70)),
    CborInt(-BigInt.two.pow(70)),
    _list([_int(1)], tags: const [1280]),
    _list(
      [
        _int(200),
        _list([_bytes(4, 92)]),
      ],
      tags: const [102],
    ),
    _list(
      [
        _int(5),
        _list([_int(1)]),
      ],
      tags: const [102],
    ),
    CborBytes.indefinite(const [
      [1, 2, 3],
      [4, 5],
    ]),
  ],
  tags: const [121],
);

/// all [ pubkey, atLeast 2 of [pubkey, pubkey, after], any [before, pubkey, all []] ]
final CborValue _nativeScriptTree = _list([
  _int(1),
  _list([
    _list([_int(0), _keyHash(93)]),
    _list([
      _int(3),
      _int(2),
      _list([
        _list([_int(0), _keyHash(94)]),
        _list([_int(0), _keyHash(95)]),
        _list([_int(4), _int(1000)]),
      ]),
    ]),
    _list([
      _int(2),
      _list([
        _list([_int(5), CborInt(BigInt.from(99999999999))]),
        _list([_int(0), _keyHash(96)]),
        _list([_int(1), _list([])]),
      ]),
    ]),
  ]),
]);

final CborValue _metadata = CborMap({
  _int(674): CborMap({
    _text("msg"): _list([_text("hello"), _text("world")]),
  }),
  _int(721): CborMap({_text("version"): _int(2), _text("bytes"): _bytes(8, 97), _text("neg"): _int(-5)}),
});

CborMap _minimalBody({bool scriptDataHash = false}) => _intMap({
  0: _list([_txIn(130, 0)]),
  1: _list([
    _list([_enterpriseAddress(131), _int(1500000)]),
  ]),
  2: _int(200000),
  if (scriptDataHash) 11: _hash32(132),
  if (scriptDataHash) 13: _list([_txIn(133, 1)]),
});

CborMap _kitchenSinkBody() => _intMap({
  0: _set([_txIn(10, 0), _txIn(11, 3)]),
  1: _list([
    // legacy outputs: coin only, multiasset + datum hash
    _list([_enterpriseAddress(12), _int(1500000)]),
    _list([
      _baseAddress(13),
      _list([_int(2000000), _assets()]),
      _hash32(14),
    ]),
    // post-alonzo outputs: inline datum + script ref, datum hash
    _intMap({
      0: _baseAddress(15),
      1: _list([_int(3000000), _assets()]),
      2: _list([_int(1), _tag24(_plutusData)]),
      3: _tag24(_list([_int(3), _bytes(50, 16)])),
    }),
    _intMap({
      0: _enterpriseAddress(17),
      1: _int(4000000),
      2: _list([_int(0), _hash32(18)]),
    }),
  ]),
  2: _int(350000),
  3: CborInt(BigInt.from(150000000)),
  4: _set(_allCertificates()),
  5: CborMap({_rewardAccount(19): _int(1000), _rewardAccount(20, script: true): _int(25000000)}),
  7: _hash32(21),
  8: _int(140000000),
  9: _assets(negative: true),
  11: _hash32(22),
  13: _set([_txIn(23, 0), _txIn(24, 1)]),
  14: _set([_keyHash(25), _keyHash(26)]),
  15: _int(1),
  16: _intMap({
    0: _baseAddress(27),
    1: _list([_int(5000000), _assets()]),
    2: _list([
      _int(1),
      _tag24(_list([_int(1), _int(2)], tags: const [122])),
    ]),
    3: _tag24(_list([_int(0), _nativeScriptTree])),
  }),
  17: _int(5000000),
  18: _list([_txIn(28, 0), _txIn(29, 2)]),
  21: CborInt(BigInt.from(1500000000000000)),
  22: _int(1000000),
});

List<CborValue> _allCertificates() => [
  _list([_int(0), _cred(0, 30)]),
  _list([_int(1), _cred(1, 31)]),
  _list([_int(2), _cred(0, 32), _keyHash(33)]),
  _list([
    _int(3),
    _keyHash(34),
    _hash32(35),
    _int(500000000),
    _int(340000000),
    _rational(1, 50),
    _rewardAccount(36),
    _set([_keyHash(37), _keyHash(38)]),
    _list([
      _list([
        _int(0),
        _int(3001),
        CborBytes(const [192, 168, 0, 1]),
        const CborNull(),
      ]),
      _list([_int(0), const CborNull(), const CborNull(), _bytes(16, 39)]),
      _list([_int(1), _int(6000), _text("relay1.example.com")]),
      _list([_int(1), const CborNull(), _text("relay2.example.com")]),
      _list([_int(2), _text("_relays._tcp.example.com")]),
    ]),
    _list([_text("https://example.com/pool.json"), _hash32(40)]),
  ]),
  // owners without set tag, no relays, no metadata
  _list([
    _int(3),
    _keyHash(41),
    _hash32(42),
    _int(0),
    _int(170000000),
    _rational(0, 1),
    _rewardAccount(43),
    _list([_keyHash(44)]),
    _list([]),
    const CborNull(),
  ]),
  _list([_int(4), _keyHash(34), _int(500)]),
  _list([_int(7), _cred(0, 45), _int(2000000)]),
  _list([_int(8), _cred(1, 46), _int(2000000)]),
  _list([
    _int(9),
    _cred(0, 47),
    _list([_int(0), _keyHash(48)]),
  ]),
  _list([
    _int(10),
    _cred(0, 49),
    _keyHash(50),
    _list([_int(1), _keyHash(51)]),
  ]),
  _list([_int(11), _cred(0, 52), _keyHash(53), _int(2000000)]),
  _list([
    _int(12),
    _cred(1, 54),
    _list([_int(2)]),
    _int(2000000),
  ]),
  _list([
    _int(13),
    _cred(0, 55),
    _keyHash(56),
    _list([_int(3)]),
    _int(2000000),
  ]),
  _list([_int(14), _cred(0, 57), _cred(1, 58)]),
  _list([_int(15), _cred(0, 59), _anchor(60)]),
  _list([_int(15), _cred(1, 61), const CborNull()]),
  _list([_int(16), _cred(0, 62), _int(500000000), _anchor(63)]),
  _list([_int(16), _cred(1, 64), _int(500000000), const CborNull()]),
  _list([_int(17), _cred(0, 62), _int(500000000)]),
  _list([_int(18), _cred(0, 62), _anchor(65)]),
  _list([_int(18), _cred(1, 64), const CborNull()]),
];

CborMap _governanceBody() => _intMap({
  ..._minimalBody().map((k, v) => MapEntry((k as CborSmallInt).value, v)),
  19: CborMap({
    _list([_int(0), _keyHash(70)]): CborMap({
      _govActionId(71, 0): _list([_int(1), _anchor(72)]),
      _govActionId(71, 1): _list([_int(0), const CborNull()]),
    }),
    _list([_int(1), _keyHash(73)]): CborMap({
      _govActionId(74, 2): _list([_int(2), const CborNull()]),
    }),
    _list([_int(2), _keyHash(75)]): CborMap({
      _govActionId(71, 0): _list([_int(0), _anchor(76)]),
      _govActionId(74, 2): _list([_int(1), const CborNull()]),
      _govActionId(77, 5): _list([_int(2), _anchor(78)]),
    }),
    _list([_int(3), _keyHash(79)]): CborMap({
      _govActionId(71, 1): _list([_int(1), const CborNull()]),
    }),
    _list([_int(4), _keyHash(80)]): CborMap({
      _govActionId(71, 0): _list([_int(1), _anchor(81)]),
      _govActionId(77, 5): _list([_int(0), const CborNull()]),
    }),
  }),
  20: _set([
    for (final (i, action) in _allGovActions().indexed)
      _list([CborInt(BigInt.from(100000000000)), _rewardAccount(150 + i), action, _anchor(160 + i)]),
  ]),
});

// NOTE: the model requires a non-nil prev gov action id (nil isn't supported), so all of these have one.
List<CborValue> _allGovActions() => [
  _list([_int(0), _govActionId(82, 0), _protocolParamUpdate(), _keyHash(83)]),
  _list([
    _int(0),
    _govActionId(82, 1),
    _intMap({0: _int(44), 30: _int(1000)}),
    const CborNull(),
  ]),
  _list([
    _int(1),
    _govActionId(84, 0),
    _list([_int(10), _int(0)]),
  ]),
  _list([
    _int(2),
    CborMap({_rewardAccount(85): CborInt(BigInt.from(1000000000)), _rewardAccount(86, script: true): _int(5)}),
    _keyHash(87),
  ]),
  _list([
    _int(2),
    CborMap({_rewardAccount(88): _int(1000)}),
    const CborNull(),
  ]),
  _list([_int(3), _govActionId(89, 3)]),
  _list([
    _int(4),
    _govActionId(90, 0),
    _set([_cred(0, 91), _cred(1, 92)]),
    CborMap({_cred(0, 93): _int(500), _cred(1, 94): _int(600)}),
    _rational(2, 3),
  ]),
  _list([
    _int(5),
    _govActionId(95, 0),
    _list([_anchor(96), _keyHash(97)]),
  ]),
  _list([
    _int(5),
    _govActionId(95, 1),
    _list([_anchor(98), const CborNull()]),
  ]),
  _list([_int(6)]),
];

CborMap _protocolParamUpdate() => _intMap({
  0: _int(44),
  1: _int(155381),
  2: _int(90112),
  3: _int(16384),
  4: _int(1100),
  5: _int(2000000),
  6: _int(500000000),
  7: _int(18),
  8: _int(500),
  9: _rational(3, 10),
  10: _rational(3, 1000),
  11: _rational(1, 5),
  16: _int(170000000),
  17: _int(4310),
  18: _intMap({
    0: _list([_int(100788), _int(420), _int(1), _int(-1), _int(1000)]),
    1: _list([_int(205665), _int(812), _int(1)]),
    2: _list([_int(-900), CborInt(BigInt.from(1 << 40))]),
  }),
  19: _list([_rational(577, 10000), _rational(721, 10000000)]),
  20: _list([_int(14000000), CborInt(BigInt.from(10000000000))]),
  21: _list([_int(62000000), CborInt(BigInt.from(20000000000))]),
  22: _int(5000),
  23: _int(150),
  24: _int(3),
  25: _list([for (var i = 1; i <= 5; i++) _rational(i, 10)]),
  26: _list([for (var i = 1; i <= 10; i++) _rational(i, 20)]),
  27: _int(7),
  28: _int(146),
  29: _int(6),
  30: CborInt(BigInt.from(100000000000)),
  31: _int(500000000),
  32: _int(20),
  33: _rational(15, 1),
});
