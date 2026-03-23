import 'package:flutter/material.dart';
import '../models/slider_model.dart';
import '../utils/slider_utils.dart';
import '../widgets/custom_slider.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {

  final SliderModel slider = SliderModel();

  double position = 0;
  final double maxWidth = 300;

  void handleDrag(double dx) {
    setState(() {
      position = SliderUtils.clamp(position + dx, 0, maxWidth);
      slider.value = SliderUtils.toPercent(position, maxWidth);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Slider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // MSSV
            const Text(
              'MSSV: 6451071022',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            // Giá trị
            Text(
              'Value: ${slider.value.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 30),

            // Slider
            CustomSlider(
              position: position,
              maxWidth: maxWidth,
              onDrag: handleDrag,
            ),
          ],
        ),
      ),
    );
  }
}