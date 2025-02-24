import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/app.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Iconsax.arrow_left),
            onPressed: () => Get.back(),
          ),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
           Image(image: const AssetImage(TImages.deliveredEmailIllustration),
          width: THelperFunctions.screenWidth() * 0.6,
          height: THelperFunctions.screenHeight() * 0.3,
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
           Text(
            TTexts.changeYourPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
           Text(
            TTexts.changeYourPasswordSubTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.offAll(() => const App()),
              child: const Text(TTexts.done),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
             SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => Get.offAll(() => const App()),
              child: const Text(TTexts.resendEmail),
            ),
          ),
          
        ],
      ),
      ),
    );
  }
}