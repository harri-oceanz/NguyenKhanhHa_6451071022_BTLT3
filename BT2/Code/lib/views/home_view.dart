import 'package:flutter/material.dart';
import '../models/color_model.dart';
import '../widgets/color_box.dart';
import '../utils/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ColorModel model = ColorModel();

  void changeColor() {
    setState(() {
      model.toggleColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Double Tap đổi màu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              Constants.mssv,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            ColorBox(
              color: model.currentColor,
              onDoubleTap: changeColor,
            ),
          ],
        ),
      ),
    );
  }
}