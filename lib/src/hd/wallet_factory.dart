enum MnemonicsWordsCount {
  w12(128),
  w15(160),
  w18(192),
  w21(224),
  w24(256);

  final int strength;
  const MnemonicsWordsCount(this.strength);
}
