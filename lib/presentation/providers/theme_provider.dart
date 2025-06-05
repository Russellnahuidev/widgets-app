import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Estado => isDrkModeProvider = boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(
    isDarkMode: ref.watch(isDarkModeProvider),
    selectedColor: ref.watch(selectedColorProvider),
  ),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier({required bool isDarkMode, required int selectedColor})
    : super(AppTheme(isDarkMode: isDarkMode, selectedColor: selectedColor));

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
