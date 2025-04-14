import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/data/model/movie_details.dart';
import 'package:movie_hunter/domain/entities/result.dart';

abstract interface class IMovieRepository {
  Future<Result<List<Movie>>> fetchMovies(int page);
  Future<Result<List<Movie>>> findMovies(String query, int page);
  Future<Result<MovieDetails>> fetchMovieDetails(int movieId);
}
