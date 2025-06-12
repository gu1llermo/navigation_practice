import 'dart:math' as math;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Transform02 extends StatelessWidget {
  const Transform02({super.key});
  static const String path = '/transform-animation-02';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _TransformView(),
    );
  }
}

class _TransformView extends StatefulWidget {
  const _TransformView({super.key});

  @override
  State<_TransformView> createState() => __TransformViewState();
}

class __TransformViewState extends State<_TransformView> {
  final dio = Dio();
  final List<String> _images = List.generate(
      5, (index) => 'https://picsum.photos/id/${index + 237}/200/300');
  late PageController _pageController;
  double seno = 0.0;
  double coseno = 1.0;
  double pi = math.pi;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
    );
    _pageController.addListener(listener);
  }

  void listener() {
    final value = _pageController.page ?? 0.0;

    //debugPrint('prueba Valor: ${value}');
    seno = math.sin(value * math.pi).abs();
    coseno = math.cos(value * math.pi).abs();
    debugPrint('prueba Sin: ${seno.toStringAsFixed(1)}');
    debugPrint('prueba Cos: ${coseno.toStringAsFixed(1)}');
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.removeListener(listener);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: PageView.builder(
      itemCount: _images.length,
      controller: _pageController,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Transform(
            alignment: Alignment.bottomRight,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.002)
              // ..scale(coseno.clamp(0.8, 1)),
              ..rotateY(pi / 2 * seno),
            child: Image.network(
              _images[index],
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
    ));
  }
}
