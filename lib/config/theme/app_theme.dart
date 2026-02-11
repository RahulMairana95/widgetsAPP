import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.deepOrange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectColor;
  final bool isDarkMode;

  AppTheme({this.selectColor = 0, this.isDarkMode = false})
    : assert(selectColor >= 0, 'Seleccionar colores mayor o igual a 0'),
      assert(
        selectColor < colorList.length,
        'Seleccionar color menor o igual a ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectColor],
  );
}
