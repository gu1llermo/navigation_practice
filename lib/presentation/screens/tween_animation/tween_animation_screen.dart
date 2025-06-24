import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'tween_animation_01.dart';
import 'tween_animation_02.dart';
import 'tween_animation_03.dart';

class TweenAnimationScreen extends StatelessWidget {
  const TweenAnimationScreen({super.key});
  static const String path = '/tween-animations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: const Text('Tween Animation 1'),
                onTap: () => context.push(TweenAnimation01.path),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Tween Animation 2'),
                onTap: () => context.push(TweenAnimation02.path),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Tween Animation 3'),
                onTap: () => context.push(TweenAnimation03.path),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
