
import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButtom extends StatelessWidget {
  const OnBoardingNextButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() ,
      child: ElevatedButton(onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape:const CircleBorder(),
          backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.primary : TColors.black,      
        ),
       child: const Icon(Icons.arrow_right),),
      );
  }
}
