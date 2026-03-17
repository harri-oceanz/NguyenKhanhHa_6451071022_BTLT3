import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {

  final Color color;
  final VoidCallback onTap;

  const GridItem({
    super.key,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,

      child: Container(
        margin: const EdgeInsets.all(5),
        color: color,
      ),
    );
  }
}