extension SetExtensions<T> on Set<T> {
  bool removeFirstWhere(bool Function(T) whereClause) {
    var index = 0;
    while (index < length) {
      if (whereClause(elementAt(index))) {
        remove(elementAt(index));
        return true;
      }
      index++;
    }
    return false;
  }
}
