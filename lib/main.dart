import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_hunter/core/app.dart';
import 'package:movie_hunter/core/theme/theme_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isDark = prefs.getBool('isDarkMode') ?? false;
  runApp(
    ProviderScope(
      overrides: [
        themeProvider.overrideWith(
          (_) => ThemeNotifier(isDark ? ThemeMode.dark : ThemeMode.light),
        ),
      ],
      child: const App(),
    ),
  );
}
