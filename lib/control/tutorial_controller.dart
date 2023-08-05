import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TutorialController extends GetxController {
  late PageController pageController;

  // double index=0;
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void onPressNext() {
    pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.ease);
    update();
  }

  void onPressPrevious() {
    pageController.previousPage(
        duration: Duration(milliseconds: 500), curve: Curves.ease);
    update();
  }

  void onPressSkip() {
    Get.toNamed("/home");
    //pageController.animateToPage(3,duration: Duration(milliseconds: 750),curve: Curves.easeIn);
    //update();
  }
}
