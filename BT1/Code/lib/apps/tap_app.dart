import 'package:flutter/material.dart';
import '../views/tap_view.dart';

class TapApp extends StatelessWidget {
  const TapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tap Demo',
      home: const TapView(),
    );
  }
}