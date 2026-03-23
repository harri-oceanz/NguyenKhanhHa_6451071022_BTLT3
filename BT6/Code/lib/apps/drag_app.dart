import 'package:flutter/material.dart';
import '../views/drag_view.dart';

class DragApp extends StatelessWidget {
  const DragApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DragView(),
    );
  }
}