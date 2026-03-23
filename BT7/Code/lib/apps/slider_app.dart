import 'package:flutter/material.dart';
import '../views/slider_view.dart';

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliderView(),
    );
  }
}