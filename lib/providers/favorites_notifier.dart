// lib/presentation/providers/favorites_notifier.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'favorites_notifier.g.dart';

@riverpod
class FavoritesNotifier extends _$FavoritesNotifier {
  static const _key = 'favorite_movie_ids';

  @override
  Future<List<int>> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key)?.map(int.parse).toList() ?? [];
  }

  Future<void> toggleFavorite(int movieId) async {
    final prefs = await SharedPreferences.getInstance();
    final current = await future;

    final updated =
        current.contains(movieId)
            ? current.where((id) => id != movieId).toList()
            : [...current, movieId];

    await prefs.setStringList(_key, updated.map((e) => e.toString()).toList());
    state = AsyncValue.data(updated);
  }

  bool isFavorite(int movieId) {
    return state.valueOrNull?.contains(movieId) ?? false;
  }
}
