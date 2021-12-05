/// Abstract interface for enums in library
abstract class Enum<T> {
  final T _value;

  /// Returns value of enum
  T get value => _value;

  /// Creates enum with given value
  const Enum(this._value);

  @override
  String toString() => _value.toString();

  @override
  int get hashCode => _value.hashCode;

  @override
  bool operator ==(dynamic other) {
    if (other is Enum<T>) {
      return other._value == _value;
    }

    if (other is T) {
      return other == _value;
    }

    return false;
  }
}
