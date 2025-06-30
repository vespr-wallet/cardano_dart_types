List<int>? mergeCborTags(List<int>? tags, List<int>? tags2) {
  if (tags == null) return tags2;
  if (tags2 == null) return tags;
  return {...tags, ...tags2}.toList(growable: false);
}
