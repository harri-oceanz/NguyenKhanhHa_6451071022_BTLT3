import 'package:flutter/material.dart';
import '../models/pointer_model.dart';
import '../utils/pointer_utils.dart';
import '../widgets/pointer_box.dart';

class PointerView extends StatefulWidget {
  const PointerView({super.key});

  @override
  State<PointerView> createState() => _PointerViewState();
}

class _PointerViewState extends State<PointerView> {

  final PointerModel pointer = PointerModel();

  void updatePointer(double x, double y) {
    setState(() {
      pointer.x = x;
      pointer.y = y;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointer Events'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text(
            '6451071022',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Text(
            PointerUtils.format(pointer.x, pointer.y),
            style: const TextStyle(fontSize: 20),
          ),

          const SizedBox(height: 20),

          // Box nhận sự kiện
          PointerBox(onPointer: updatePointer),
        ],
      ),
    );
  }
}
