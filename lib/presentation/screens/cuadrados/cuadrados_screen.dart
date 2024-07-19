import 'dart:math';

import 'package:flutter/material.dart';

Color getRandomColor() {
  final int red = Random().nextInt(256);
  final int green = Random().nextInt(256);
  final int blue = Random().nextInt(256);
  return Color.fromRGBO(red, green, blue, 1);
}

class CuadradosScreen extends StatelessWidget {
  const CuadradosScreen({
    super.key,
  });

  static const String path = '/cuadrados';
  static const String name = 'cuadrados_screen';

  @override
  Widget build(BuildContext context) {
    int n = 4;
    return Scaffold(
      appBar: AppBar(title: const Text('Cuadrados')),
      body: Center(
        child: SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [for (int i = 0; i < n; i++) const Cuadrado()],
            ),
          ),
        ),
      ),
    );
  }
}

class Cuadrado extends StatefulWidget {
  const Cuadrado({super.key});

  @override
  State<Cuadrado> createState() => _CuadradoState();
}

class _CuadradoState extends State<Cuadrado> {
  bool isSelected = false;
  int unselected = 100;
  int selected = 150;
  late Color color;

  @override
  void initState() {
    super.initState();
    color = getRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: isSelected ? selected : unselected,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          // width: 50,
          // height: 50,
          color: color,
        ),
      ),
    );
  }
}
