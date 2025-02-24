import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      //navigation menu
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          backgroundColor: darkMode ? Colors.black : Colors.white,
          indicatorColor: darkMode ? Colors.white.withAlpha((0.1 * 255).toInt()) : Colors.black.withAlpha((0.1 * 255).toInt()),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(
              icon: Icon(Iconsax.search_favorite),
              label: 'search',
            ),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'cart'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'user'),
          ],
        ),
      ),
      body: Obx(() => controller.Screens[controller.selectedIndex.value]),
    );
  } 
}

class NavigationMenuController extends GetxController {
final Rx<int> selectedIndex = 0.obs;
  final Screens = [
    const HomeScreen(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];
}
