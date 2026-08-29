import 'package:flutter/material.dart';

import '../../../uikit/colors/app_colors.dart';
import 'homepage_body.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    // ЛОГИКА ЦВЕТОВ
    // Светлая тема: шапка/низ - орехово-коричневый, фон - крем-фисташковый
    // Тёмная тема: всё залито единым цветом (графитовый)
    final Color headerColor = isDark
        ? colors.background
        : AppColors.primaryDark;
    final Color navBarColor = isDark
        ? colors.background
        : AppColors.primaryDark;
    final Color bodyColor = isDark
        ? colors.background
        : colors.background; // В LightColors это кремовый

    // Цвет иконок и текста в шапке/панели
    final Color iconColor = isDark ? colors.textPrimary : AppColors.accentGold;

    return Scaffold(
      backgroundColor: bodyColor, // Единый фон страницы
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
      body: const HomePageBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: navBarColor,
        selectedItemColor: iconColor,
        // Золотой/белый для активной
        unselectedItemColor: iconColor.withOpacity(0.5),
        // Полупрозрачный для неактивных
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
