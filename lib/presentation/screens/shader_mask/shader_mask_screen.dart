import 'dart:ui';

import 'package:flutter/material.dart';

class ShaderMaskScreen extends StatelessWidget {
  const ShaderMaskScreen({super.key});

  static const String path = '/shader_mask';
  static const String name = 'shader_mask_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShaderMaskScreen')),
      body: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 118, 252, 0),
              Color.fromARGB(255, 4, 4, 196)
            ],
            tileMode: TileMode.clamp,
          ).createShader(bounds);
        },
        child: const Center(
          child: Text(
            'Hola',
            style: TextStyle(
                fontSize: 180,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class CuadroDegradado extends StatelessWidget {
  const CuadroDegradado({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
