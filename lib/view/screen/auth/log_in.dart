import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/data/data_source/static/auth_icons.dart';
import 'package:radio_station/data/data_source/static/app_images.dart';
import 'package:radio_station/core/constant/screen_dimensions.dart';
import 'package:radio_station/view/widget/auth/custom_auth_button.dart';
import 'package:radio_station/view/widget/auth/custom_auth_text_form_field.dart';

import '../../../controller/auth/log_in_controller.dart';
import '../../widget/custom_background_gradient.dart';
import '../../widget/auth/custom_social_auth_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    LogInControllerImplement controller = Get.put(LogInControllerImplement());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const CustomBackgroundGradient(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: ScreenDimension.width * 0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: ScreenDimension.height * 0.1),
                SizedBox(
                    height: ScreenDimension.height * 0.1,
                    child: Image.asset(AppImages.appLogo)),
                SizedBox(height: ScreenDimension.height * 0.02),
                SizedBox(
                  width: ScreenDimension.width,
                  height: ScreenDimension.height * 0.09,
                  child: Column(
                    children: [
                      Text(
                        "Welcome Back!",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Divider(height: ScreenDimension.height * 0.0024),
                      Text(
                        "Login to continue Radio App",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.lightRhythm2),
                      ),
                    ],
                  ),
                ),
                CustomAuthTextFormField(
                  type: TextInputType.emailAddress,
                  hint: "Email Address",
                  prefixIcon: AuthIcons.email,
                  controller: controller.emailController,
                ),
                SizedBox(height: ScreenDimension.height * 0.02),
                GetBuilder<LogInControllerImplement>(
                  builder: (controller) => CustomAuthTextFormField(
                    type: TextInputType.visiblePassword,
                    hint: "Password",
                    prefixIcon: AuthIcons.password,
                    controller: controller.passwordController,
                    obscureText: controller.obscureText,
                    isPasswordField: true,
                    onPressedSuffixIcon: controller.onPressPasswordVisibility,
                  ),
                ),
                SizedBox(
                  height: ScreenDimension.height * 0.07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GetBuilder<LogInControllerImplement>(
                            builder: (controller) => Checkbox(
                              value: controller.rememberMe,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (value) {
                                controller.onPressRememberMe();
                              },
                              shape: const CircleBorder(),
                              activeColor: AppColors.brinkPink,
                            ),
                          ),
                          Text(
                            "Remember me",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: AppColors.lightRhythm1),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: controller.onPressForgetPassword,
                        child: Text(
                          "Forgot password?",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.lightRhythm1),
                        ),
                      )
                    ],
                  ),
                ),
                CustomAuthButton(
                  label: 'Log In',
                  onPress: controller.onPressLogIn,
                ),
                SizedBox(
                  height: ScreenDimension.height * 0.08,
                  child: Center(
                      child: Text(
                    "OR",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.lightRhythm2),
                  )),
                ),
                CustomSocialAuthButton(
                  label: "Continue With Google",
                  labelColor: AppColors.black,
                  buttonColor: AppColors.white,
                  prefixIcon: FontAwesomeIcons.google,
                  iconColor: AppColors.orange,
                  onPress: controller.onPressContinueWithGoogle,
                ),
                Divider(height: ScreenDimension.height * 0.02),
                CustomSocialAuthButton(
                  label: "Continue With Facebook",
                  labelColor: AppColors.white,
                  buttonColor: AppColors.chineseBlue,
                  prefixIcon: FontAwesomeIcons.facebookF,
                  iconColor: AppColors.white,
                  onPress: controller.onPressContinueWithFacebook,
                ),
                SizedBox(height: ScreenDimension.height * 0.04),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Don't have an account? ",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.lightRhythm2)),
                  TextSpan(
                    text: "Sign Up",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.brinkPink),
                    recognizer: TapGestureRecognizer()
                      ..onTap = controller.onPressSignUp,
                  )
                ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
