import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//estado => isDarkmodeProvider = boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

//listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//un simple int
final selectedColorProvider = StateProvider((ref) => 0);
