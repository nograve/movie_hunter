import 'package:movie_hunter/data/datasource/network/exchange_models/response.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/data/model/movie_details.dart';

abstract interface class IMovieApi {
  Future<NetworkResponse<List<Movie>>> getMovies(int page);
  Future<NetworkResponse<List<Movie>>> searchMovie(String query, int page);
  Future<NetworkResponse<MovieDetails>> getMovieDetails(int movieId);
}
