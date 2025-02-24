import 'package:flutter/material.dart' show BuildContext, Positioned, StatelessWidget, Text, TextButton, Widget;
import 'package:t_store/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: const Text('skip')),
    );
  }
}
