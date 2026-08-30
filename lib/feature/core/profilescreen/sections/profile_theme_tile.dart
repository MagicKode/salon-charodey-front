import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../uikit/colors/app_colors.dart';

class ProfileThemeTile extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const ProfileThemeTile({super.key, required this.themeNotifier});

  @override
  State<ProfileThemeTile> createState() => _ProfileThemeTileState();
}

class _ProfileThemeTileState extends State<ProfileThemeTile> {
  ThemeMode _selectedMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    _selectedMode = widget.themeNotifier.value;
  }

  void _changeTheme(ThemeMode mode) async {
    setState(() {
      _selectedMode = mode;
    });
    widget.themeNotifier.value = mode;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme_mode', mode.index);
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return ExpansionTile(
      leading: Icon(Icons.brightness_6_outlined, color: colors.textPrimary),
      title: Text(
        'Тема оформления',
        style: TextStyle(color: colors.textPrimary),
      ),
      children: [
        RadioListTile<ThemeMode>(
          title: Text('Системная', style: TextStyle(color: colors.textPrimary)),
          value: ThemeMode.system,
          groupValue: _selectedMode,
          onChanged: (value) => _changeTheme(value!),
        ),
        RadioListTile<ThemeMode>(
          title: Text('Светлая', style: TextStyle(color: colors.textPrimary)),
          value: ThemeMode.light,
          groupValue: _selectedMode,
          onChanged: (value) => _changeTheme(value!),
        ),
        RadioListTile<ThemeMode>(
          title: Text('Тёмная', style: TextStyle(color: colors.textPrimary)),
          value: ThemeMode.dark,
          groupValue: _selectedMode,
          onChanged: (value) => _changeTheme(value!),
        ),
      ],
    );
  }
}
