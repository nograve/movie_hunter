class MovieDetailsScreenArgs {
  MovieDetailsScreenArgs({
    required this.movieId,
    required this.movieTitle,
    this.fromSearch = false,
  });

  final int movieId;
  final String movieTitle;
  final bool fromSearch;
}
