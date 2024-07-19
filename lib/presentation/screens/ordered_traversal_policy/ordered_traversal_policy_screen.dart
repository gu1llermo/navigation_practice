import 'package:flutter/material.dart';

class OrderedTraversalPolicyScreen extends StatelessWidget {
  const OrderedTraversalPolicyScreen({super.key});

  static const String path = '/ordered_traversal_policy';
  static const String name = 'ordered_traversal_policy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OrderedTraversalPolicyScreen')),
      body: const Center(
        child: OrderedTraversalPolicyExample(),
      ),
    );
  }
}

class DemoButton extends StatelessWidget {
  const DemoButton({
    super.key,
    required this.name,
    this.autofocus = false,
    required this.order,
  });

  final String name;
  final bool autofocus;
  final double order;

  void _handleOnPressed() {
    debugPrint('Button $name pressed.');
    debugDumpFocusTree();
  }

  @override
  Widget build(BuildContext context) {
    return FocusTraversalOrder(
      order: NumericFocusOrder(order),
      child: TextButton(
        autofocus: autofocus,
        onPressed: () => _handleOnPressed(),
        child: Text(name),
      ),
    );
  }
}

class OrderedTraversalPolicyExample extends StatelessWidget {
  const OrderedTraversalPolicyExample({super.key});

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DemoButton(name: 'Six', order: 6),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DemoButton(name: 'Five', order: 5),
              DemoButton(name: 'Four', order: 4),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DemoButton(name: 'Three', order: 3),
              DemoButton(name: 'Two', order: 2),
              DemoButton(name: 'One', order: 1, autofocus: true),
            ],
          ),
        ],
      ),
    );
  }
}
