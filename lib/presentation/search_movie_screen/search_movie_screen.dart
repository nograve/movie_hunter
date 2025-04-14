import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_hunter/core/theme/theme_provider.dart';
import 'package:movie_hunter/domain/entities/result.dart';
import 'package:movie_hunter/presentation/search_movie_screen/providers/search_movie_provider.dart';
import 'package:movie_hunter/utils/debouncer.dart';
import 'package:movie_hunter/widgets/movies_list.dart';

class SearchMovieScreen extends ConsumerStatefulWidget {
  const SearchMovieScreen({super.key});

  @override
  ConsumerState<SearchMovieScreen> createState() => _SearchMovieScreenState();
}

class _SearchMovieScreenState extends ConsumerState<SearchMovieScreen> {
  final _controller = TextEditingController();
  final _debouncer = Debouncer(milliseconds: 300);
  final _focusNode = FocusNode();
  String _query = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _debouncer.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    _debouncer.run(() {
      if (query.length >= 3) {
        setState(() => _query = query);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = ref.watch(themeProvider).themeMode == ThemeMode.dark;
    final searchMovieRef = ref.watch(searchMovieProvider(_query, 1));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          centerTitle: false,
          leading: const BackButton(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Search field
              TextField(
                controller: _controller,
                focusNode: _focusNode,
                style: TextStyle(
                  color: isDark ? Colors.black : Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefix: Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                      colorFilter: ColorFilter.mode(
                        isDark ? Colors.black : Colors.white,
                        BlendMode.srcIn,
                      ),
                      width: 20,
                      height: 20,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  helperStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),

                  hintText: 'Search',
                ),
                onChanged: _onSearchChanged,
              ),

              const SizedBox(height: 16),

              Expanded(
                child: searchMovieRef.when(
                  data: (result) {
                    switch (result) {
                      case Success(data: final movies):
                        final moviesLength = movies.length;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Search results
                            Text(
                              'Search results ($moviesLength)',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            const SizedBox(height: 24),

                            if (moviesLength == 0)
                              Column(
                                children: [
                                  const SizedBox(height: 70),

                                  // Not found img
                                  Center(
                                    child: Image.asset(
                                      'assets/images/not_found_placeholder.png',
                                      width: 120,
                                      height: 120,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              )
                            else
                              Expanded(child: MoviesList(movies: movies)),
                          ],
                        );
                      case Error(error: final error):
                        return Center(child: Text('Error: $error'));
                    }
                  },
                  loading:
                      () => const Center(child: CircularProgressIndicator()),
                  error: (err, _) => Center(child: Text('Error: $err')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
