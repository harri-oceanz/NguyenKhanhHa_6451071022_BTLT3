import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final Color color;
  final VoidCallback onDoubleTap;

  const ColorBox({
    super.key,
    required this.color,
    required this.onDoubleTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Container(
        width: 150,
        height: 150,
        color: color,
      ),
    );
  }
}