import 'package:flutter/material.dart';
import '../../../uikit/colors/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFilled;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isFilled = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isFilled ? AppColors.primary : AppColors.transparent,
        foregroundColor: isFilled ? AppColors.textPrimary : AppColors.primary,
        elevation: isFilled ? 4 : 0,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: isFilled ? BorderSide.none : BorderSide(color: AppColors.primary),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
