import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {

  final String imageUrl;

  const ImagePage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Image.network(imageUrl),
    );

  }
}