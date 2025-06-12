import 'package:flutter/material.dart';
import 'package:navigation_practice/config/router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // darkTheme: ThemeData.dark(),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
    );
  }
}
