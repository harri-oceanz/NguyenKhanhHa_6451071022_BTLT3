import 'package:flutter/material.dart';
import '../widgets/tap_box.dart';

class TapView extends StatelessWidget {
  const TapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '6451071022',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TapBox(),
          ],
        ),
      ),

    );
  }
}