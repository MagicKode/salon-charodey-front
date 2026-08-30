import 'package:flutter/material.dart';
import 'package:salon_charodey_front/feature/core/profilescreen/profilescreen_body.dart';

import '../mainlayout/main_layout_body.dart';
import 'homepage_body.dart';

class HomePageScreen extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;
  const HomePageScreen({super.key, required this.themeNotifier});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 0;

  List<Widget> get _pages => [
    const HomePageBody(),
    const Center(child: Text('Каталог (заглушка)')),
    ProfileScreebBody(themeNotifier: widget.themeNotifier),
  ];

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return MainLayoutBody(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      isDark: isDark,
    );
  }
}
