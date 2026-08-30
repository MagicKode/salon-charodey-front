// Если нужен экран с состоянием (например, для отдельных экранов без вкладок)
import 'package:flutter/material.dart';
import 'main_layout_body.dart';

class MainLayoutScreen extends StatefulWidget {
  final Widget body;
  final int currentIndex;
  final Function(int) onTap;
  final bool isDark;

  const MainLayoutScreen({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onTap,
    required this.isDark,
  });

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutBody(
      body: widget.body,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      isDark: widget.isDark,
    );
  }
}
