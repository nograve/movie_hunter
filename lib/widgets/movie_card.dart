import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_hunter/data/model/movie.dart';
import 'package:movie_hunter/presentation/details_screen/movie_details_screen_args.dart';
import 'package:movie_hunter/providers/favorites_notifier.dart';

class MovieCard extends ConsumerWidget {
  const MovieCard({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritesNotifierProvider);
    final notifier = ref.read(favoritesNotifierProvider.notifier);

    final isFav = favoritesAsync.when(
      data: (ids) => ids.contains(movie.id),
      loading: () => false,
      error: (_, __) => false,
    );

    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: InkWell(
                onTap:
                    () => context.push(
                      '/details',
                      extra: MovieDetailsScreenArgs(
                        movieTitle: movie.title,
                        movieId: movie.id,
                      ),
                    ),
                child: Hero(
                  tag: 'poster${movie.id}',
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                    placeholder:
                        (context, url) => Image.asset(
                          'assets/images/not_found_placeholder.png',
                          fit: BoxFit.fill,
                        ),
                    errorWidget:
                        (context, url, error) => Image.asset(
                          'assets/images/not_found_placeholder.png',
                          fit: BoxFit.fill,
                        ),
                    fit: BoxFit.fill,
                    height: 234,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              movie.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              'Rating: ${movie.voteAverage?.toStringAsPrecision(2) ?? '-'}',
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
        Positioned(
          top: 12,
          right: 24,
          child: InkWell(
            onTap: () => notifier.toggleFavorite(movie.id),
            child: SvgPicture.asset(
              isFav
                  ? 'assets/icons/star_filled.svg'
                  : 'assets/icons/star_empty.svg',
              width: 20,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}
