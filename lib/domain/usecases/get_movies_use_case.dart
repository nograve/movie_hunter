import 'dart:async';

import 'package:movie_hunter/core/use_case.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/domain/repository/movie_repository_interface.dart';

class GetMoviesUseCase implements UseCase<Result<List<Movie>>, int> {
  GetMoviesUseCase({required IMovieRepository repository})
    : _repository = repository;

  final IMovieRepository _repository;

  @override
  FutureOr<Result<List<Movie>>> execute(int page) =>
      _repository.fetchMovies(page);
}
