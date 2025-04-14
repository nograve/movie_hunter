import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_hunter/core/di/injector.dart';
import 'package:movie_hunter/data/model/movie_details.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/domain/usecases/get_movie_details_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_details_provider.g.dart';

@riverpod
Future<Result<MovieDetails>> movieDetails(Ref ref, int movieId) async {
  final useCase = injector.get<GetMovieDetailsUseCase>();
  return useCase.execute(movieId);
}
