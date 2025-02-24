import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/SignUp/verify_email.dart';
import 'package:t_store/features/authentication/screens/SignUp/widgets/terms_and_cond.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefix: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefix: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
    
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefix: Icon(Iconsax.user_edit),
            ),
          ),
    
          const SizedBox(height: TSizes.spaceBtwInputFields),
    
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefix: Icon(Iconsax.direct),
            ),
          ),
    
          const SizedBox(height: TSizes.spaceBtwInputFields),
    
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefix: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
    
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefix: Icon(Iconsax.eye_slash),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
    
          //terms$conditions
          const TTermsAndCondCheckBox(),
          //sign up button
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=> const VerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
        ],
      ),
    );
  }
}
