import 'package:flutter/material.dart';

import '../../../uikit/colors/app_colors.dart';
import '../profilescreen/profilescreen_body.dart';
import 'homepage_body.dart';

class HomePageScreen extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const HomePageScreen({super.key, required this.themeNotifier});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    final Color headerColor = isDark
        ? colors.background
        : AppColors.primaryDark;
    final Color navBarColor = isDark
        ? colors.background
        : AppColors.primaryDark;
    final Color bodyColor = colors.background;
    final Color iconColor = isDark ? colors.textPrimary : AppColors.accentGold;

    // Страницы создаются каждый раз при перестроении
    final List<Widget> pages = [
      const HomePageBody(),
      const Center(child: Text('Каталог (заглушка)')), // замените позже
      ProfileScreebBody(themeNotifier: widget.themeNotifier),
    ];

    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        backgroundColor: headerColor,
        foregroundColor: iconColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Чародей',
          style: TextStyle(
            color: iconColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: navBarColor,
        selectedItemColor: iconColor,
        unselectedItemColor: iconColor.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
