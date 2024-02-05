import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class SignUpController extends GetxController {
  bool receiveEmails = true;
  bool obscureText = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController userNameController;

  void onPressReceiveEmails();

  void onPressLogIn();

  void onPressPasswordVisibility();

  void onPressSignUp();

  void onPressContinueWithGoogle();

  void onPressContinueWithFacebook();

  void onPressTermsOfService();
}

class SignUpControllerImplement extends SignUpController {
  @override
  void onPressReceiveEmails() {
    receiveEmails = !receiveEmails;
    update();
  }

  @override
  void onPressLogIn() {
    Get.back();
  }

  @override
  void onPressPasswordVisibility() {
    obscureText = !obscureText;
    update();
  }

  @override
  void onPressSignUp() {
    // TODO: implement onPressSignUp
  }

  @override
  void onPressContinueWithGoogle() {
    // TODO: implement onPressContinueWithGoogle
  }

  @override
  void onPressContinueWithFacebook() {
    // TODO: implement onPressContinueWithFacebook
  }

  @override
  void onPressTermsOfService() {
    Get.toNamed(AppRoute.termsOfService);
  }

  @override
  void onInit() {
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }
}
