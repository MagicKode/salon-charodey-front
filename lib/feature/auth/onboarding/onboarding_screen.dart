import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../uikit/colors/app_colors.dart';
import '../../../uikit/strings/app_strings.dart';
import '../../../uikit/widgets/buttons/primary_button.dart';
import 'domain/onboarding_model.dart';
import 'onboarding_body.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingModel> _pages = [
    OnboardingModel(
      title: AppStrings.onboardingTitle1,
      description: AppStrings.onboardingDesc1,
      imageAsset: 'assets/images/onboarding1.png',
    ),
    OnboardingModel(
      title: AppStrings.onboardingTitle2,
      description: AppStrings.onboardingDesc2,
      imageAsset: 'assets/images/onboarding2.png',
    ),
    OnboardingModel(
      title: AppStrings.onboardingTitle3,
      description: AppStrings.onboardingDesc3,
      imageAsset: 'assets/images/onboarding3.png',
    ),
    OnboardingModel(
      title: AppStrings.onboardingTitle4,
      description: AppStrings.onboardingDesc4,
      imageAsset: 'assets/images/onboarding4.png',
    ),
    OnboardingModel(
      title: AppStrings.onboardingTitle5,
      description: AppStrings.onboardingDesc5,
      imageAsset: 'assets/images/onboarding5.png',
    ),
    OnboardingModel(
      title: AppStrings.onboardingTitle6,
      description: AppStrings.onboardingDesc6,
      imageAsset: 'assets/images/onboarding6.png',
    ),

  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentPage == _pages.length - 1) {
      _finishOnboarding();
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _finishOnboarding() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: _pages
                .map((page) => OnboardingBody(pageData: page))
                .toList(),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(0.4), // используем AppColors.black
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: _finishOnboarding,
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          AppStrings.skip,
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: _pages.length,
                        effect: ExpandingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 8,
                          activeDotColor: AppColors.accentGold,
                          dotColor: AppColors.textSecondary,
                        ),
                      ),
                      PrimaryButton(
                        text: _currentPage == _pages.length - 1
                            ? AppStrings.getStarted
                            : AppStrings.next,
                        onPressed: _goToNextPage,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
