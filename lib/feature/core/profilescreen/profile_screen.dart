import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_charodey_front/feature/core/profilescreen/profilescreen_body.dart';

import '../../../uikit/colors/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  final ValueNotifier<ThemeMode> themeNotifier;
  const ProfileScreen({super.key, required this.themeNotifier});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.textPrimary),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Профиль',
          style: TextStyle(
            color: colors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: colors.background,
        elevation: 0,
        centerTitle: true,
      ),
      body: ProfileScreebBody(themeNotifier: themeNotifier),
    );
  }
}
