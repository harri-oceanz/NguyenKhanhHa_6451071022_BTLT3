import 'package:flutter/material.dart';
import '../views/pointer_view.dart';

class PointerApp extends StatelessWidget {
  const PointerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointerView(),
    );
  }
}