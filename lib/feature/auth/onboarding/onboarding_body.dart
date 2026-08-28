import 'package:flutter/material.dart';

import '../../../uikit/colors/app_colors.dart';
import 'domain/onboarding_model.dart';

class OnboardingBody extends StatelessWidget {
  final OnboardingModel pageData;

  const OnboardingBody({super.key, required this.pageData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pageData.imageAsset),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              AppColors.black.withOpacity(0.9),         // вместо Colors.black
              AppColors.black.withOpacity(0.6),
              AppColors.transparent,
            ],
            stops: const [0.0, 0.3, 0.6],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                pageData.title,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                  shadows: const [
                    Shadow(
                      blurRadius: 12.0,
                      color: AppColors.overlayDark,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                pageData.description,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.textPrimary,
                  height: 1.5,
                  shadows: const [
                    Shadow(
                      blurRadius: 10.0,
                      color: AppColors.overlayDark,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
