import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Get.offAll(() => const LoginScreen()),
          ),
        ],
      ),
     body: SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
         children: [
            Image(
              image: const AssetImage(TImages.deliveredEmailIllustration),
              width: THelperFunctions.screenWidth() * 0.6,
              height: THelperFunctions.screenHeight() * 0.3,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            Text(
              TTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              'test@gmail.com',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
             Text(
              TTexts.confirmEmailSubTitle,
             style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
               onPressed: () =>Get.to(()=>SuccessScreen(title: TTexts.yourAccountCreatedTitle, 
                subTitle: TTexts.yourAccountCreatedSubTitle, image: TImages.staticSuccessIllustration,
                 onPressed: () =>Get.to(()=>const LoginScreen()),)),
                 child: const Text(TTexts.tContinue),
              ),

            ),
            const SizedBox(height: TSizes.spaceBtwItems),
               SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>Get.to(()=>SuccessScreen(title: TTexts.yourAccountCreatedTitle, 
                subTitle: TTexts.yourAccountCreatedSubTitle, image: TImages.staticSuccessIllustration,
                 onPressed: () =>Get.to(()=>const LoginScreen()),)),
                child: const Text(TTexts.resendEmail),
              ),

            ),
          ],
        
      ),),
     ),
    );
  }
}
