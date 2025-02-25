import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingPressed,
  });
 
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingPressed;
  

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(vertical: TSizes.md),
    child: AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              icon: const Icon(Iconsax.arrow_left),
                onPressed:() => Get.back(),
            )
          :leadingIcon !=null? IconButton(
              icon:  Icon(leadingIcon),
                onPressed:leadingPressed,
            ):null,
          title: title,
          actions: actions,
    ),);
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}