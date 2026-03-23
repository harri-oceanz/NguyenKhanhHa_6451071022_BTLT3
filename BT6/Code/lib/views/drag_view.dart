import 'package:flutter/material.dart';
import '../models/position_model.dart';
import '../utils/drag_utils.dart';
import '../widgets/draggable_circle.dart';

class DragView extends StatefulWidget {
  const DragView({super.key});

  @override
  State<DragView> createState() => _DragViewState();
}

class _DragViewState extends State<DragView> {

  final PositionModel pos = PositionModel();

  void handleDrag(double dx, double dy) {
    setState(() {
      pos.x = DragUtils.update(pos.x, dx);
      pos.y = DragUtils.update(pos.y, dy);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag Circle'),
        centerTitle: true,
      ),
      body: Stack(
        children: [

          // MSSV
          const Positioned(
            top: 20,
            left: 20,
            child: Text(
              '6451071022',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          // Hình tròn kéo được
          DraggableCircle(
            x: pos.x,
            y: pos.y,
            onDrag: handleDrag,
          ),
        ],
      ),
    );
  }
}