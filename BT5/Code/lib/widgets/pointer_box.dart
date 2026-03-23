import 'package:flutter/material.dart';

class PointerBox extends StatelessWidget {
  final Function(double, double) onPointer;

  const PointerBox({super.key, required this.onPointer});

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        onPointer(event.localPosition.dx, event.localPosition.dy);
      },
      child: Container(
        width: double.infinity,
        height: 300,
        color: Colors.blue[200],
        alignment: Alignment.center,
        child: const Text(
          'Touch here',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}