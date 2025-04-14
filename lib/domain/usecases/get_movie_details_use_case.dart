import 'dart:async';

import 'package:movie_hunter/core/use_case.dart';
import 'package:movie_hunter/data/model/movie_details.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/domain/repository/movie_repository_interface.dart';

class GetMovieDetailsUseCase implements UseCase<Result<MovieDetails>, int> {
  GetMovieDetailsUseCase({required IMovieRepository repository})
    : _repository = repository;

  final IMovieRepository _repository;

  @override
  FutureOr<Result<MovieDetails>> execute(int movieId) =>
      _repository.fetchMovieDetails(movieId);
}
