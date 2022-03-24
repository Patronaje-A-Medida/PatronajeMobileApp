class InvalidEmailFailure implements Exception {
  final String failedValue;

  InvalidEmailFailure({required this.failedValue});
}
