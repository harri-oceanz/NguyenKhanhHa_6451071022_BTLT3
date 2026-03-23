import 'package:flutter/material.dart';

class TapBox extends StatelessWidget {
  const TapBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('You tapped the box!'),
            duration: Duration(seconds: 2),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 150,
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text(
          'Tap me',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}