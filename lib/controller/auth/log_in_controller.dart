import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:radio_station/core/constant/routes.dart';

abstract class LogInController extends GetxController {
  bool rememberMe = false;
  bool obscureText = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  void onPressRememberMe();

  void onPressPasswordVisibility();

  void onPressForgetPassword();

  void onPressLogIn();

  void onPressSignUp();

  void onPressContinueWithGoogle();

  void onPressContinueWithFacebook();

  void onPressTermsOfService();
}

class LogInControllerImplement extends LogInController {
  @override
  void onPressRememberMe() {
    rememberMe = !rememberMe;
    update();
  }

  @override
  void onPressPasswordVisibility() {
    obscureText = !obscureText;
    update();
  }

  @override
  void onPressForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onPressLogIn() {
    Get.toNamed(AppRoute.homeLayout);
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
  void onPressSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  void onPressTermsOfService() {
    Get.toNamed(AppRoute.termsOfService);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }
}
