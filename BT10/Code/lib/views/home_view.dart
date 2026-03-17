import 'package:flutter/material.dart';
import '../models/grid_model.dart';
import '../widgets/grid_item.dart';
import '../utils/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  GridModel model = GridModel();

  void changeColor(int index) {
    setState(() {
      model.toggleColor(index);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Grid Gesture")),

      body: Column(
        children: [

          const SizedBox(height: 10),

          const Text(
            Constants.mssv,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),

          Expanded(
            child: GridView.builder(
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),

              itemCount: 9,

              itemBuilder: (context, index) {
                return GridItem(
                  color: model.colors[index],
                  onTap: () => changeColor(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}