import 'package:flutter/material.dart';

class TweenAnimation01 extends StatelessWidget {
  const TweenAnimation01({super.key});
  static const String path = '/tween-animation-01';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _ExampleView(),
    );
  }
}

class _ExampleView extends StatefulWidget {
  const _ExampleView({super.key});

  @override
  State<_ExampleView> createState() => _ExampleViewState();
}

class _ExampleViewState extends State<_ExampleView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder<Color?>(
        tween: ColorTween(begin: Colors.white, end: Colors.black),
        duration: const Duration(seconds: 3),
        builder: (context, value, child) {
          return Container(
            height: 250,
            width: 250,
            color: value,
          );
        },
      ),
    );
  }
}
