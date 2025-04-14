import 'dart:async';

import 'package:movie_hunter/core/use_case.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/domain/repository/movie_repository_interface.dart';

class FindMovieUseCase
    implements UseCase<Result<List<Movie>>, FindMoviesParams> {
  FindMovieUseCase({required IMovieRepository repository})
    : _repository = repository;

  final IMovieRepository _repository;

  @override
  FutureOr<Result<List<Movie>>> execute(FindMoviesParams params) =>
      _repository.findMovies(params.query, params.page);
}
