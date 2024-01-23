import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();


  //variables

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  // update Current Index when page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot select page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// update Current Index & junp to next page
  void nextPage() {
    if(currentPageIndex.value == 2)
    {
      // Get.to(LoginScreen());
    }
    else
    {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}