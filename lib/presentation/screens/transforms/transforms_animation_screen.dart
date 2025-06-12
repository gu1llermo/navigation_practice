import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'transform_01.dart';

import 'transform_02.dart';

class TransformsAnimationScreen extends StatelessWidget {
  const TransformsAnimationScreen({super.key});
  static const String path = '/transform-animations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text('Transform Animation 1'),
              onTap: () => context.push(Transform01.path),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Transform Animation 2'),
              onTap: () => context.push(Transform02.path),
            ),
          ),
        ],
      ),
    );
  }
}
