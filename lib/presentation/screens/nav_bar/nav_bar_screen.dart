import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NavBarScreen extends HookWidget {
  const NavBarScreen({
    super.key,
  });

  static const String path = '/nav_bar';
  static const String name = 'nav_bar_screen';

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState<int>(0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationBar'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [AnyWidget(currentIndex.value)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_sharp), label: 'Unit Sharp'),
        ],
        onTap: (newIndex) {
          currentIndex.value = newIndex;
        },
      ),
    );
  }
}

class AnyWidget extends StatelessWidget {
  final int index;
  const AnyWidget(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    final ButtonStyle style2 =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));
    final ButtonStyle style3 = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 40), elevation: 10);

    return Center(
      child: Text('Página nro: $index', style: const TextStyle(fontSize: 30)),
    );
  }
}
