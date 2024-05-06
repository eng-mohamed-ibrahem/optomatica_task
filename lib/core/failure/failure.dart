sealed class Failure {
  const Failure({required this.message});
  final String message;
}

class CacheFailure extends Failure {
  CacheFailure({required super.message});
}

class OtherFailure extends Failure {
  OtherFailure({required super.message});
}
