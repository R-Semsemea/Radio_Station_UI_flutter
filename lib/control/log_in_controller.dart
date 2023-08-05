import 'package:get/get.dart';

class LogInController extends GetxController {
  bool rememberMe = false;

  void switchAd() {
    rememberMe = !rememberMe;
    update();
  }
}
