import 'package:flutter/material.dart';
import '../models/counter_model.dart';
import '../utils/counter_utils.dart';
import '../widgets/tap_button.dart';

class TapCounterView extends StatefulWidget {
  const TapCounterView({super.key});

  @override
  State<TapCounterView> createState() => _TapCounterViewState();
}

class _TapCounterViewState extends State<TapCounterView> {

  final CounterModel counter = CounterModel();

  void handleTap() {
    setState(() {
      counter.count = CounterUtils.increment(counter.count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // MSSV (bắt buộc)
            const Text(
              '6451071022',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // Hiển thị số lần tap
            Text(
              'Tap count: ${counter.count}',
              style: const TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 20),

            // Nút bấm
            TapButton(onPressed: handleTap),
          ],
        ),
      ),
    );
  }
}