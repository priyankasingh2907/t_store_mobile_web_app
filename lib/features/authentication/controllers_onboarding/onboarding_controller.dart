import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update page indicator when user swipe
  void updatePageIndicator(index) => currentPageIndex.value = index;
  

  //jump to specific page when user click on dot navigation
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update current index and navigate to next page
  void nextPage() {
    if (currentPageIndex.value >= 2) {
      Get.offAll(const LoginScreen());
    } else {
     int page = currentPageIndex.value += 1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and navigate to last page
  void skipPage() {

currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  } 
}
