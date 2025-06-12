import 'package:flutter/material.dart';

class TextOverflowScreen extends StatelessWidget {
  const TextOverflowScreen({super.key});

  static const String path = '/text_overflow';
  static const String name = 'text_overflow_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextOverflowScreen')),
      body: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            'Minim veniam dolor id sitproident ad minim culpa amet pariatur eu laborum. Amet dolor consectetur amet duis ad',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 36),
          ),
        ),
      ),
    );
  }
}
