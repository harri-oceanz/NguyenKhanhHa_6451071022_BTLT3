import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double position;
  final double maxWidth;
  final Function(double dx) onDrag;

  const CustomSlider({
    super.key,
    required this.position,
    required this.maxWidth,
    required this.onDrag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      height: 50,
      child: Stack(
        children: [

          // Thanh nền
          Container(
            height: 6,
            margin: const EdgeInsets.only(top: 22),
            color: Colors.grey[300],
          ),

          // Thanh đã kéo
          Container(
            height: 6,
            width: position,
            margin: const EdgeInsets.only(top: 22),
            color: Colors.blue,
          ),

          // Nút tròn
          Positioned(
            left: position - 10,
            top: 15,
            child: GestureDetector(
              onPanUpdate: (details) {
                onDrag(details.delta.dx);
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}