import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TAppBar(
                     title: Column(
                      children: [
                        Text(TTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium?.apply(color: TColors.grey),),
                        Text(TTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.labelLarge?.apply(color: TColors.white),),

                      ],
                     ),
                     actions: [
                      IconButton(onPressed: (){}, icon: const Icon(Iconsax.shopping_bag,color: TColors.white,)),

                     ],
                  ),

                  const SizedBox(height: TSizes.defaultSpace),            

                 Padding(

                   padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                   child: Container(
                    width:TDeviceUtils.getScreenWidth(context),
                    padding: const EdgeInsets.all(TSizes.md),
                    decoration: BoxDecoration(
                      color: Colors.white,
                   
                      borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                      border: Border.all(color: TColors.grey),
                      
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for products',
                              hintStyle: Theme.of(context).textTheme.labelMedium?.apply(color: TColors.darkGrey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(Iconsax.search_normal,color: TColors.darkGrey,))
                      ],
                    ),
                    
                   ),
                 )

                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
