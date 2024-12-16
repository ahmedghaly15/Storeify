import 'package:flutter/material.dart';

Color? getColorFromString(String colorName) {
  final Map<String, Color> colorMap = {
    'red': Colors.red,
    'blue': Colors.blue,
    'green': Colors.green,
    'yellow': Colors.yellow,
    'orange': Colors.orange,
    'purple': Colors.purple,
    'pink': Colors.pink,
    'brown': Colors.brown,
    'grey': Colors.grey,
    'black': Colors.black,
    'white': Colors.white,
    'cyan': Colors.cyan,
    'amber': Colors.amber,
    'indigo': Colors.indigo,
    'lime': Colors.lime,
    'teal': Colors.teal,
  };

  return colorMap[colorName.toLowerCase()];
}
