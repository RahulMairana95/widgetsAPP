import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//estado => isDarkmodeProvider = boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

//listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectColor: colorIndex);
  }
}
