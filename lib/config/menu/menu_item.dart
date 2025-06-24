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
      title: 'Tween Animations',
      subtitle: 'Tween Animations Screen',
      link: TweenAnimationScreen.path,
      icon: Icons.animation),
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
  MenuItem(
      title: 'Form sample',
      subtitle: 'Formularios',
      link: FormSampleScreen.path,
      icon: Icons.subtitles_rounded),
  MenuItem(
      title: 'Blur effect sample',
      subtitle: 'Blur effect',
      link: BlurEffectScreen.path,
      icon: Icons.blur_circular),
  MenuItem(
      title: 'ShaderMask sample',
      subtitle: 'ShaderMask',
      link: ShaderMaskScreen.path,
      icon: Icons.shape_line),
  MenuItem(
      title: 'ImageFilteredScreen sample',
      subtitle: 'ImageFilteredScreen',
      link: ImageFilteredScreen.path,
      icon: Icons.image),
  MenuItem(
      title: 'TextOverflow sample',
      subtitle: 'TextOverflow',
      link: TextOverflowScreen.path,
      icon: Icons.image),
  MenuItem(
      title: 'GridView sample',
      subtitle: 'GridViewScreen',
      link: GridViewScreen.path,
      icon: Icons.grid_3x3),
  MenuItem(
      title: 'SliverPractice',
      subtitle: 'SliverPracticeScreen',
      link: SliverPracticeScreen.path,
      icon: Icons.sledding),
  MenuItem(
      title: 'Gradientes',
      subtitle: 'GradientesScreen',
      link: GradientesScreen.path,
      icon: Icons.gradient),
  MenuItem(
      title: 'Transforms Animations',
      subtitle: 'Transforms Animations Screen',
      link: TransformsAnimationScreen.path,
      icon: Icons.transform),
];
