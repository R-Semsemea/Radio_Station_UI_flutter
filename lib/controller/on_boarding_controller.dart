import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  late PageController pageController;

  void onPressNext();

  void onPressPrevious();

  void onPressSkip();
}

class OnBoardingControllerImplement extends OnBoardingController {
  @override
  void onPressSkip() {
    if (pageController.page?.toInt() == 3) {
      Get.back();
    } else {
      pageController.animateToPage(3,
          duration: const Duration(milliseconds: 750), curve: Curves.easeIn);
      update();
    }
  }

  @override
  void onPressNext() {
    if (pageController.page?.toInt() != 3) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      update();
    }
  }

  @override
  void onPressPrevious() {
    if (pageController.page?.toInt() != 0) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      update();
    }
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }
}
