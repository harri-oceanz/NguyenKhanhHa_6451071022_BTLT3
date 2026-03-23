import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_tile.dart';

class Bai10View extends StatefulWidget {
  const Bai10View({super.key});

  @override
  State<Bai10View> createState() => _Bai10ViewState();
}

class _Bai10ViewState extends State<Bai10View> {
  List<Item> items = [
    Item("Item 1"),
    Item("Item 2"),
    Item("Item 3"),
    Item("Item 4"),
  ];

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bài 10: Kéo để xóa"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemTile(
            item: items[index],
            onDelete: () => removeItem(index),
          );
        },
      ),
    );
  }
}