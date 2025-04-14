import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_hunter/core/di/injector.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/domain/usecases/get_movies_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_provider.g.dart';

@riverpod
Future<Result<List<Movie>>> movies(Ref ref, int page) async {
  final useCase = injector<GetMoviesUseCase>();
  return useCase.execute(page);
}
