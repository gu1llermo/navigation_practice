import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredScreen extends StatelessWidget {
  const ImageFilteredScreen({super.key});

  static const String path = '/image_filtered';
  static const String name = 'image_filtered_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ImageFilteredScreen')),
      body: Center(
        child: ImageFiltered(
          imageFilter: ImageFilter.matrix(
              Matrix4.translationValues(10, -100, 0).storage),
          child: const Text('Hola',
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
        ),
      ),
    );
  }
}
