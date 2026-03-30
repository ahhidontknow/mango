// main libraries
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//custom imports
import 'package:common_gui/widgets/layout_wrapper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MainAppBar());
  }
}
