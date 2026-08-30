import 'package:flutter/material.dart';
import '../../../../../uikit/colors/app_colors.dart';

class SearchBody extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const SearchBody({
    super.key,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Поиск услуг...',
        hintStyle: TextStyle(color: colors.textSecondary),
        prefixIcon: Icon(Icons.search, color: AppColors.primaryDark),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primaryDark),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primaryDark.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        filled: true,
        fillColor: colors.background,
      ),
      style: TextStyle(color: colors.textPrimary),
      onChanged: onChanged,
    );
  }
}
