import 'package:flutter/material.dart';
import 'package:navigation_practice/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

final menuItems = <MenuItem>[
  MenuItem(
      title: 'Cuadrados',
      subtitle: 'probando arreglo de cuadrados',
      link: CuadradosScreen.path,
      icon: Icons.square),
  MenuItem(
      title: 'NavigationBar',
      subtitle: 'BottomNavigationBar',
      link: NavBarScreen.path,
      icon: Icons.assistant_navigation),
  MenuItem(
      title: 'Focus Traversal',
      subtitle: 'Ejemplo de Focus Traversal TAB',
      link: FocusTraversalScreen.path,
      icon: Icons.tab),
  MenuItem(
      title: 'Ordered Traversal Policy',
      subtitle: 'Ejemplo de OrderedTraversalPolicy',
      link: OrderedTraversalPolicyScreen.path,
      icon: Icons.tab),
];
