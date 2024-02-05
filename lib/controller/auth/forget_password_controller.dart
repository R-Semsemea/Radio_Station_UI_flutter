import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  late TextEditingController emailController;

  void onPressSendPasswordReset();
}

class ForgetPasswordControllerImplement extends ForgetPasswordController {
  @override
  void onPressSendPasswordReset() {}

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }
}
