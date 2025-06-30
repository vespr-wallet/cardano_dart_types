class Lazy<T> {
  final T Function() _supplier;

  bool _computed = false;
  late T _value;

  Lazy(this._supplier);

  T get value {
    if (!_computed) {
      _computed = true;
      _value = _supplier();
    }
    return _value;
  }
}
