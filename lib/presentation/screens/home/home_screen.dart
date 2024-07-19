import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_practice/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const String path = '/';
  static const String name = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return _CustomListTitle(menuItem: menuItem);
        },
      ),
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  final MenuItem menuItem;
  const _CustomListTitle({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onTap: () => context.push(menuItem.link),
      title: Text(menuItem.title, style: TextStyle(color: colors.primary)),
      subtitle: Text(menuItem.subtitle),
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: const Icon(Icons.navigate_next),
    );
  }
}
