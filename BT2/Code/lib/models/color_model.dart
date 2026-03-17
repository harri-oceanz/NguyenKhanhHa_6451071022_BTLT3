import 'package:flutter/material.dart';

class ColorModel {
  Color currentColor = Colors.blue;

  void toggleColor() {
    currentColor =
    currentColor == Colors.blue ? Colors.red : Colors.blue;
  }
}
