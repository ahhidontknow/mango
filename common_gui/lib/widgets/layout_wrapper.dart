// main libraries
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:country_flags/country_flags.dart';

// custom libraries

class DesktopMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopMainAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [Text('Home'), SizedBox(width: 8), Text('Search')],
      ),
      actions: [LanguageButton('en-US', 28), LanguageButton('de', 28)],
    );
  }
}

class MobileMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileMainAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar();
  }
}

class LanguageButton extends StatelessWidget {
  final String languageCode;
  final double size;
  const LanguageButton(this.languageCode, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: CountryFlag.fromLanguageCode(
        languageCode,
        theme: ImageTheme(width: size, height: size, shape: Circle()),
      ),
    );
  }
}
