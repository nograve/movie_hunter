import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_hunter/core/di/injector.dart';
import 'package:movie_hunter/core/use_case.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/domain/usecases/find_movie_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_movie_provider.g.dart';

@riverpod
FutureOr<Result<List<Movie>>> searchMovie(
  Ref ref,
  String query,
  int page,
) async {
  if (query.length < 3) {
    return Success([]);
  }

  final useCase = FindMovieUseCase(repository: injector());
  return useCase.execute(FindMoviesParams(query: query, page: page));
}
