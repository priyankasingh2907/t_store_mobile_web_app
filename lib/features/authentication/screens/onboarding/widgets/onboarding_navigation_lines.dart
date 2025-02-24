import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';

class OnBoardingNavigationLines extends StatelessWidget {
  const OnBoardingNavigationLines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);  
    final controller = OnboardingController.instance;

    return Positioned(
     bottom:60,
     left: 40,
     child: SmoothPageIndicator( count: 3,
      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
       effect :const ExpandingDotsEffect(
       dotColor: Colors.grey,
       activeDotColor:  TColors.primary,
       dotHeight: 8,
       dotWidth: 8,
       ),
    
     ));
  }
}
