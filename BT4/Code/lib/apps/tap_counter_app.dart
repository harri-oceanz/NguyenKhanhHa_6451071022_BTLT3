import 'package:flutter/material.dart';
import '../views/tap_counter_view.dart';

class TapCounterApp extends StatelessWidget {
  const TapCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TapCounterView(),
    );
  }
}