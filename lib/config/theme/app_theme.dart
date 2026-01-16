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

  AppTheme({
    this.selectColor = 0
  }): assert( selectColor >= 0, 'Seleccionar colores mayor o igual a 0'),
      assert( selectColor < colorList.length, 'Seleccionar color menor o igual a ${colorList.length}');
  



  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectColor ],
  );
}