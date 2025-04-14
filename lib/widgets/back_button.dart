import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_hunter/core/theme/theme_provider.dart';

class BackButton extends ConsumerWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider).themeMode == ThemeMode.dark;

    return IconButton(
      onPressed: () => context.pop(),
      icon: SvgPicture.asset(
        'assets/icons/left.svg',
        height: 24,
        width: 14,
        colorFilter: ColorFilter.mode(
          isDark ? Colors.white : Colors.black,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
