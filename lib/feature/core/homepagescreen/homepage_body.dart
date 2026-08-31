import 'package:flutter/material.dart';
import 'package:salon_charodey_front/feature/core/homepagescreen/sections/description/description_body.dart';
import 'package:salon_charodey_front/feature/core/homepagescreen/sections/discount/discount_body.dart';
import 'package:salon_charodey_front/feature/core/homepagescreen/sections/locationinfo/location_body.dart';
import 'package:salon_charodey_front/feature/core/homepagescreen/sections/masters/master_body.dart';
import 'package:salon_charodey_front/feature/core/homepagescreen/sections/portfolio/portfolio_body.dart';
import 'package:salon_charodey_front/feature/core/homepagescreen/sections/searchbar/search_body.dart';
import 'sections/greetingheader/greeting_body.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GreetingBody(userName: 'Гость'),
          const SizedBox(height: 16),
          const SearchBody(),
          const SizedBox(height: 16),
          const DiscountBody(),
          const SizedBox(height: 16),
          const LocationBody(),
          const SizedBox(height: 16),
          const DescriptionBody(),
          const SizedBox(height: 16),
          const MastersBody(),
          const SizedBox(height: 16),
          const PortfolioBody(),
          const SizedBox(height: 24),
          SizedBox(
            height: 100,
            child: Center(
              child: Text(
                'Здесь будет контент\n(категории, услуги, мастера...)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.grey[400]
                      : Colors.grey[600],
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
