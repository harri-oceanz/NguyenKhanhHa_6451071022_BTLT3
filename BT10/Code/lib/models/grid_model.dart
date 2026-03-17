import 'package:flutter/material.dart';

class GridModel {

  List<Color> colors = List.generate(9, (index) => Colors.blue);

  void toggleColor(int index) {
    colors[index] =
    colors[index] == Colors.blue ? Colors.red : Colors.blue;
  }

}