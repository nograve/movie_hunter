import 'package:flutter/material.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/widgets/movie_card.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({required this.movies, super.key});

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.6,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return MovieCard(movie: movie);
      },
    );
  }
}
