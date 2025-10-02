import 'package:flutter/material.dart';

const colorList =<Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pinkAccent,
  Colors.pink,
  Colors.grey
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
  : assert(selectedColor >= 0 , 'La posición del color debe ser mayor a 0'),
    assert(selectedColor < colorList.length, 'La posición del color seleccionado no debe de ser superior al tamaño de la lista de colores disponibles');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    brightness: Brightness.light,
  );
}