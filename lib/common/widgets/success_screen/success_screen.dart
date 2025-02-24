
import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.subTitle, required this.image, required this.onPressed});

final String title;
final String subTitle;
final String image;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             Image(
              image:  AssetImage(image),
              width: 200,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                              child: const Text(TTexts.tContinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}