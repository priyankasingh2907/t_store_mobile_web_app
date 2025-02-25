
import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({super.key, required this.text, this.icon,  this.showBackground = true,  this.showBorder = true});

  final String text;
  final IconData? icon;
  final bool showBackground , showBorder;


  @override
  Widget build(BuildContext context) {

final dark = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark ? TColors.dark : showBackground ? TColors.white : TColors.lightGrey : Colors.transparent,

          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: TColors.grey) : null,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: text,
                  hintStyle: Theme.of(
                    context,
                  ).textTheme.labelMedium?.apply(color: TColors.darkGrey),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon:  Icon(icon, color: TColors.darkGrey),
            ),
          ],
        ),
      ),
    );
  }
}
