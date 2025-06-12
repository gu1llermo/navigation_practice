import 'dart:math' as math;

import 'package:flutter/material.dart';

class Transform01 extends StatelessWidget {
  const Transform01({super.key});
  static const String path = '/transform-animation-01';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _TransformView(),
    );
  }
}

class _TransformView extends StatefulWidget {
  const _TransformView({super.key});

  @override
  State<_TransformView> createState() => __TransformViewState();
}

class __TransformViewState extends State<_TransformView> {
  double _value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const FlutterLogo(size: 100),
      const SizedBox(height: 15),
      Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.002)
            ..rotateY(math.pi * _value),
          child: Image.asset('assets/pajaro.webp')),
      Slider(
        min: 0.1,
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
      Text('value: ${_value.toStringAsFixed(1)}'),
    ]);
  }
}
