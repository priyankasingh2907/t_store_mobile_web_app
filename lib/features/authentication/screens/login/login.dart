import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/login_divider.dart';
import 'package:t_store/common/widgets/login_signup/login_social_button.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo
              TLoginHeader(dark: dark),
              //form
              const TloginForm(),
              //divider
              TLogoinDivider( dividerText: TTexts.orSignInWith.capitalize ?? ''),
              const SizedBox(height: TSizes.spaceBtwItems),
              //footer
              const TLoginSocialIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
