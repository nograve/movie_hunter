import 'package:go_router/go_router.dart';
import 'package:movie_hunter/presentation/details_screen/movie_details_screen.dart';
import 'package:movie_hunter/presentation/details_screen/movie_details_screen_args.dart';
import 'package:movie_hunter/presentation/home_screen/home_screen.dart';
import 'package:movie_hunter/presentation/search_movie_screen/search_movie_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'details',
          builder:
              (context, state) => MovieDetailsScreen(
                args: state.extra! as MovieDetailsScreenArgs,
              ),
        ),
        GoRoute(
          path: 'search',
          builder: (context, state) => const SearchMovieScreen(),
        ),
      ],
    ),
  ],
);
