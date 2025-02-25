
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TPrimaryWidgetConatiner(child: Column(children: [TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium?.apply(color: TColors.grey),),
          Text(TTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.labelSmall?.apply(color: TColors.grey),),],
      ),
      actions: [
       TCartCounterTcon(
          onPressed: (){},
          count: 2,
          color: TColors.grey,
       )
        
      ],
    )]));
  }
}
