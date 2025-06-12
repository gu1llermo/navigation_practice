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
  GoRoute(
    path: FormSampleScreen.path,
    name: FormSampleScreen.name,
    builder: (context, state) => const FormSampleScreen(),
  ),
  GoRoute(
    path: BlurEffectScreen.path,
    name: BlurEffectScreen.name,
    builder: (context, state) => const BlurEffectScreen(),
  ),
  GoRoute(
    path: ShaderMaskScreen.path,
    name: ShaderMaskScreen.name,
    builder: (context, state) => const ShaderMaskScreen(),
  ),
  GoRoute(
    path: ImageFilteredScreen.path,
    name: ImageFilteredScreen.name,
    builder: (context, state) => const ImageFilteredScreen(),
  ),
  GoRoute(
    path: TextOverflowScreen.path,
    name: TextOverflowScreen.name,
    builder: (context, state) => const TextOverflowScreen(),
  ),
  GoRoute(
    path: GridViewScreen.path,
    name: GridViewScreen.name,
    builder: (context, state) => const GridViewScreen(),
  ),
  GoRoute(
    path: SliverPracticeScreen.path,
    name: SliverPracticeScreen.name,
    builder: (context, state) => const SliverPracticeScreen(),
  ),
  GoRoute(
    path: GradientesScreen.path,
    name: GradientesScreen.name,
    builder: (context, state) => const GradientesScreen(),
  ),
  GoRoute(
    path: TransformsAnimationScreen.path,
    builder: (context, state) => const TransformsAnimationScreen(),
  ),
  GoRoute(
    path: Transform01.path,
    builder: (context, state) => const Transform01(),
  ),
  GoRoute(
    path: Transform02.path,
    builder: (context, state) => const Transform02(),
  ),
]);
