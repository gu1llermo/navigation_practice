import 'package:flutter/material.dart';

class TweenAnimation02 extends StatelessWidget {
  const TweenAnimation02({super.key});
  static const String path = '/tween-animation-02';

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
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder<double>(
              duration: const Duration(seconds: 1),
              tween: Tween<double>(begin: 1, end: 0),
              child: Text(
                'GindCode',
                style: textTheme.titleLarge,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0, -300 * value),
                  child: child,
                );
              }),
          const SizedBox(height: 10),
          TweenAnimationBuilder<double>(
              duration: const Duration(seconds: 1),
              tween: Tween(begin: 1, end: 0),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/pajaro.webp'),
                radius: 50,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(300 * value, 0),
                  child: child,
                );
              }),
          const SizedBox(height: 15),
          TweenAnimationBuilder<double>(
              curve: Curves.bounceOut,
              duration: const Duration(milliseconds: 1500),
              tween: Tween(begin: 1, end: 0),
              child: Text(
                'Esse ipsum veniam occaecat ex quis nulla voluptate quis eiusmod non. Ut occaecat irure deserunt culpa deserunt mollit dolore laboris. Deserunt consectetur ut dolore labore qui sunt aliqua nostrud tempor consequat cillum magna pariatur labore. Consectetur labore voluptate aliqua Lorem. Ut labore qui aliqua laboris. In laboris mollit culpa cillum Lorem sit labore anim deserunt anim veniam ad ullamco magna.',
                style: textTheme.bodyLarge,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0, 500 * value),
                  child: child,
                );
              }),
        ],
      ),
    );
  }
}
