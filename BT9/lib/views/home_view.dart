import 'package:demo_bt9/widget/image_page.dart';
import 'package:flutter/material.dart';
import '../models/image_model.dart';
import '../utils/constants.dart';

class HomeView extends StatelessWidget {

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    ImageModel model = ImageModel();

    return Scaffold(
      appBar: AppBar(title: const Text("Swipe Image")),

      body: Column(
        children: [

          const SizedBox(height: 10),

          const Text(
            Constants.mssv,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),

          Expanded(
            child: PageView.builder(
              itemCount: model.images.length,
              itemBuilder: (context, index) {
                return ImagePage(
                  imageUrl: model.images[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}