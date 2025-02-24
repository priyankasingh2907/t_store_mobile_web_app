import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());

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
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];
}
