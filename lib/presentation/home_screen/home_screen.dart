import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_hunter/core/theme/theme_provider.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/presentation/home_screen/providers/movie_provider.dart';
import 'package:movie_hunter/widgets/movies_list.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider).themeMode == ThemeMode.dark;
    final moviesRef = ref.watch(moviesProvider(1));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('Movie Hunter'),
          actions: [
            // Search button
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                colorFilter: ColorFilter.mode(
                  isDark ? Colors.white : Colors.black,
                  BlendMode.srcIn,
                ),
                width: 24,
                height: 24,
              ),
              onPressed: () => context.go('/search'),
            ),
            // Theme toggler
            IconButton(
              icon:
                  isDark
                      ? SvgPicture.asset(
                        'assets/icons/moon.svg',
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                        width: 24,
                        height: 24,
                      )
                      : SvgPicture.asset(
                        'assets/icons/sun.svg',
                        width: 24,
                        height: 24,
                      ),
              onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
            ),
          ],
        ),
        body: moviesRef.when(
          data: (result) {
            switch (result) {
              case Success(data: final movies):
                return MoviesList(movies: movies);
              case Error(error: final error):
                return Center(child: Text('Error: $error'));
            }
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error:
              (error, stack) => Center(child: Text('Unexpected error: $error')),
        ),
      ),
    );
  }
}
