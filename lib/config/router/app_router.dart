import 'package:go_router/go_router.dart';
import 'package:navigation_practice/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: HomeScreen.path,
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: CuadradosScreen.path,
    name: CuadradosScreen.name,
    builder: (context, state) => const CuadradosScreen(),
  ),
  GoRoute(
    path: NavBarScreen.path,
    name: NavBarScreen.name,
    builder: (context, state) => const NavBarScreen(),
  ),
  GoRoute(
    path: FocusTraversalScreen.path,
    name: FocusTraversalScreen.name,
    builder: (context, state) => const FocusTraversalScreen(),
  ),
  GoRoute(
    path: OrderedTraversalPolicyScreen.path,
    name: OrderedTraversalPolicyScreen.name,
    builder: (context, state) => const OrderedTraversalPolicyScreen(),
  ),
]);
