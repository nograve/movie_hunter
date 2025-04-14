import 'package:movie_hunter/data/datasource/network/api/movie_api_interface.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/data/model/movie_details.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/domain/repository/movie_repository_interface.dart';

class MovieRepository implements IMovieRepository {
  MovieRepository({required IMovieApi api}) : _api = api;

  final IMovieApi _api;

  @override
  Future<Result<MovieDetails>> fetchMovieDetails(int movieId) async {
    final response = await _api.getMovieDetails(movieId);

    return response.toResult();
  }

  @override
  Future<Result<List<Movie>>> fetchMovies(int page) async {
    final response = await _api.getMovies(page);

    return response.toResult();
  }

  @override
  Future<Result<List<Movie>>> findMovies(String query, int page) async {
    final response = await _api.searchMovie(query, page);

    return response.toResult();
  }
}
