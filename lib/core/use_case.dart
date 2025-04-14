import 'dart:async';

abstract class UseCase<Type, Params> {
  FutureOr<Type> execute(Params params);
}

class NoParams {}

class FindMoviesParams {
  FindMoviesParams({required this.query, required this.page});

  final String query;
  final int page;
}
