// Workaround for specifying the type of List<double>, etc.
final listTypes = {
  String: <String>[].runtimeType,
  int: <int>[].runtimeType,
  double: <double>[].runtimeType,
  bool: <bool>[].runtimeType,
};

String _asDartValue(Object value, Type columnType) {
  final type = listTypes.entries.firstWhere((e) => e.value == columnType, orElse: () => null)?.key ?? columnType;
}
