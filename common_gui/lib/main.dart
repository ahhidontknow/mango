// main libraries
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//custom imports
import 'package:common_gui/screens/home_screen.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
  ],
);

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
