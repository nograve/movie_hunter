import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_hunter/app.dart';
import 'package:movie_hunter/core/di/injector.dart';
import 'package:movie_hunter/core/theme/theme_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  initDependencies();
  final prefs = await SharedPreferences.getInstance();
  final isDarkMode = prefs.getBool('isDarkMode');
  late ThemeMode themeMode;
  if (isDarkMode != null) {
    themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
  } else {
    themeMode = ThemeMode.system;
  }
  runApp(
    ProviderScope(
      overrides: [themeProvider.overrideWith((_) => ThemeNotifier(themeMode))],
      child: const App(),
    ),
  );
}
