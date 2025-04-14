import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_hunter/data/datasource/network/api/movie_api.dart';
import 'package:movie_hunter/data/datasource/network/api/movie_api_interface.dart';
import 'package:movie_hunter/data/repository/movie_repository.dart';
import 'package:movie_hunter/domain/repository/movie_repository_interface.dart';
import 'package:movie_hunter/domain/usecases/find_movie_use_case.dart';
import 'package:movie_hunter/domain/usecases/get_movie_details_use_case.dart';
import 'package:movie_hunter/domain/usecases/get_movies_use_case.dart';

final injector = GetIt.instance;
final dio = Dio();

void initDependencies() {
  // Dio
  final options = BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {'api_key': dotenv.env['TMDB_API_KEY']},
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  );
  dio.options = options;

  injector
    // API
    ..registerLazySingleton<IMovieApi>(MovieApi.new)
    // Repositories
    ..registerLazySingleton<IMovieRepository>(
      () => MovieRepository(api: injector()),
    )
    // Usecases
    ..registerLazySingleton(() => FindMovieUseCase(repository: injector()))
    ..registerLazySingleton(() => GetMoviesUseCase(repository: injector()))
    ..registerLazySingleton(
      () => GetMovieDetailsUseCase(repository: injector()),
    );
}
