import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:movie_hunter/core/router/router.dart';
import 'package:movie_hunter/core/theme/theme_provider.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/presentation/details_screen/movie_details_screen_args.dart';
import 'package:movie_hunter/presentation/details_screen/providers/movie_details_provider.dart';
import 'package:movie_hunter/providers/favorites_notifier.dart';

class MovieDetailsScreen extends ConsumerWidget {
  const MovieDetailsScreen({required this.args, super.key});

  final MovieDetailsScreenArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider).themeMode == ThemeMode.dark;
    final movieDetailsRef = ref.watch(movieDetailsProvider(args.movieId));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(args.movieTitle),
          leading: BackButton(onPressed: router.pop),
        ),
        body: movieDetailsRef.when(
          data: (result) {
            switch (result) {
              case Success(data: final movieDetails):
                final movieVoteAvg =
                    movieDetails.voteAverage?.toString() ?? '-';
                final movieReleaseDate = movieDetails.releaseDate;

                final favoritesAsync = ref.watch(favoritesNotifierProvider);
                final notifier = ref.read(favoritesNotifierProvider.notifier);

                final isFavorited = favoritesAsync.when(
                  data: (ids) => ids.contains(movieDetails.id),
                  loading: () => false,
                  error: (_, __) => false,
                );

                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 12),

                        // Poster image
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 46),
                          child: Hero(
                            tag: 'poster${movieDetails.id}',
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://image.tmdb.org/t/p/w500${movieDetails.posterPath}',
                              height: 378,
                              errorWidget:
                                  (context, url, error) => Image.asset(
                                    'assets/images/not_found_placeholder.png',
                                  ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Rating
                        Text(
                          'Rating: $movieVoteAvg',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 10),
                        ),

                        const SizedBox(height: 16),

                        // Overview
                        Text(
                          movieDetails.overview ?? '',
                          style: const TextStyle(fontSize: 12),
                        ),

                        const SizedBox(height: 16),

                        // Release Date
                        if (movieReleaseDate != null)
                          Text(
                            DateFormat('d MMMM y').format(movieReleaseDate),
                            style: const TextStyle(fontSize: 12),
                          ),

                        const SizedBox(height: 16),

                        // Add/Remove Favorite Button
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              notifier.toggleFavorite(movieDetails.id);
                            },
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              foregroundColor:
                                  isDark ? Colors.white : Colors.black,
                              backgroundColor:
                                  isFavorited
                                      ? const Color.fromARGB(255, 242, 201, 76)
                                      : Colors.transparent,
                              side:
                                  isFavorited
                                      ? BorderSide.none
                                      : BorderSide(
                                        color:
                                            isDark
                                                ? Colors.white
                                                : Colors.black,
                                      ),
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            child: Text(
                              isFavorited
                                  ? 'Remove from favorites'
                                  : 'Add to favorites',
                            ),
                          ),
                        ),

                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                );

              case Error(error: final error):
                return Center(child: Text('Error: $error'));
            }
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => Center(child: Text('Unexpected error: $error')),
        ),
      ),
    );
  }
}
