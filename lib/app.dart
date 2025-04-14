import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_hunter/core/router/router.dart';
import 'package:movie_hunter/core/theme/dark_theme.dart';
import 'package:movie_hunter/core/theme/light_theme.dart';
import 'package:movie_hunter/core/theme/theme_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeNotifier = ref.watch(themeProvider);
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Movie Hunter',
      themeMode: themeModeNotifier.themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
