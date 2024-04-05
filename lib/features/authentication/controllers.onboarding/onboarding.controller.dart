import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_app/features/authentication/screens/login/login.dart';
class OnBoardingController extends GetxController {
static OnBoardingController get instance => Get.find();
/// Variables
final pagecontroller=PageController();
Rx<int> currentPageIndex=0.obs;
/// Update Current Index when Page Scroll
void updatePageIndicator (index) {}
/// Jump to the specific dot selected page.
void dotNavigationClick (index) {
  currentPageIndex.value=index;
  pagecontroller.jumpTo(index);
}
/// Update Current Index & jump to next page
void nextPage() {
  print("Next page called. Current page index: ${currentPageIndex.value}");
  if(currentPageIndex.value == 1){
    print("Attempting to navigate to login page");
    // Temporarily replace with a print statement
    // Get.offAll(const LoginScreen());
    print("Navigating to login page");
  } else {
    int page = currentPageIndex.value + 1;
    pagecontroller.jumpToPage(page);
  }
}
/// Update Current Index & jump to the last Page
void skipPage() {
    currentPageIndex.value = 2;
    pagecontroller.jumpToPage(2);
}
}
