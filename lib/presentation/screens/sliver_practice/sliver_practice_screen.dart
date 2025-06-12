import 'package:flutter/material.dart';

class SliverPracticeScreen extends StatelessWidget {
  const SliverPracticeScreen({super.key});

  static const String path = '/sliver_practice';
  static const String name = 'sliver_practice_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('SliverPracticeScreen')),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver Example'),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 50,
              (context, index) => Text(
                'Grupo A: $index',
                style: const TextStyle(color: Colors.blue),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 50,
              (context, index) => Text(
                'Grupo B: $index',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
