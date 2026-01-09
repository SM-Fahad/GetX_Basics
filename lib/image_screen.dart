import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Screen"),
      ),
      body: Center(
        child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      ),
    );
  }
}