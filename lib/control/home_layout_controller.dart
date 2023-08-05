import 'package:get/get.dart';

class HomeLayoutController extends GetxController {
  int currentIndex = 2;

  void onTap(int index) {
    currentIndex = index;
    update();
  }
}
