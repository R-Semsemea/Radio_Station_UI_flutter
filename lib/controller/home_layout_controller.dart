import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomeLayoutController extends GetxController {
  int currentIndex = 0;
  late PageController pageController;

  void onTap(int index);
}

class HomeLayoutControllerImplement extends HomeLayoutController {
  @override
  void onTap(int index) {
    currentIndex = index;
    //pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    pageController.jumpToPage(index);
    update();
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }
}
