
import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TLogoinDivider extends StatelessWidget {
   const TLogoinDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;
  
  @override
  Widget build(BuildContext context) {
      final dark = THelperFunctions.isDarkMode(context);  

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText
         , style: Theme.of(context).textTheme.bodyMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
