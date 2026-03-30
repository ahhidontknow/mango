// main libraries
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//custom imports
import 'package:common_gui/widgets/layout_wrapper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static _HomeScreenState of(BuildContext context) =>
      context.findAncestorStateOfType<_HomeScreenState>()!;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Locale _locale = const Locale('en');

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DesktopMainAppBar());
  }
}

class GuessImput extends StatelessWidget {
  const GuessImput({super.key, required this.onSubmitGuess});

  final void Function(String) onSubmitGuess;

  @override
  Widget build(BuildContext context) {
    return Row();
  }
}
