import 'package:movie_hunter/core/di/injector.dart';
import 'package:movie_hunter/data/datasource/network/api/movie_api_interface.dart';
import 'package:movie_hunter/data/datasource/network/exchange_models/response.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/data/model/movie_details.dart';

class MovieApi implements IMovieApi {
  static const _moviesPath = '/movie/top_rated';
  static const _movieDetailsPath = '/movie';
  static const _searchMoviePath = '/search/movie';

  @override
  Future<NetworkResponse<MovieDetails>> getMovieDetails(int movieId) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        '$_movieDetailsPath/$movieId',
        queryParameters: {'movie_id': movieId},
      );

      return SuccessResponse(MovieDetails.fromJson(response.data!));
    } catch (error) {
      return ErrorResponse(error);
    }
  }

  @override
  Future<NetworkResponse<List<Movie>>> getMovies(int page) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        _moviesPath,
        queryParameters: {'page': page},
      );

      final results = response.data?['results'] as List;

      final movies =
          results
              .map((json) => Movie.fromJson(json as Map<String, dynamic>))
              .toList();

      return SuccessResponse(movies);
    } catch (error) {
      return ErrorResponse(error);
    }
  }

  @override
  Future<NetworkResponse<List<Movie>>> searchMovie(
    String query,
    int page,
  ) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        _searchMoviePath,
        queryParameters: {'query': query, 'page': page},
      );

      final results = response.data?['results'] as List;
      final movies =
          results
              .map((json) => Movie.fromJson(json as Map<String, dynamic>))
              .toList();

      return SuccessResponse(movies);
    } catch (error) {
      return ErrorResponse(error);
    }
  }
}
