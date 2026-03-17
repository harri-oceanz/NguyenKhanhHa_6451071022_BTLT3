import 'package:flutter/material.dart';
import '../widgets/press_card.dart';
import '../models/message_model.dart';
import '../utils/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    MessageModel model = MessageModel();

    void showMessage() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(model.message)),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Long Press Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              Constants.mssv,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            PressCard(onLongPress: showMessage),
          ],
        ),
      ),
    );
  }
}