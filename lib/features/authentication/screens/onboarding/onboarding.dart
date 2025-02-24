import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:t_store/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_navigation_lines.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_nest_buttom.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
      OnboardingController(),
    ); //instance of OnboardingController like new OnboardingController()

    return Scaffold(
      body: Stack(
        children: [
          //horizontal scroll page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),

          const OnBoardingNavigationLines(),

          const OnBoardingNextButtom(),
        ],
      ),
    );
  }
}
