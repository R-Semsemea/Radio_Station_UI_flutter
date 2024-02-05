import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:radio_station/controller/auth/sign_up_controller.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/data/data_source/static/auth_icons.dart';
import 'package:radio_station/core/constant/screen_dimensions.dart';
import 'package:radio_station/view/widget/auth/custom_auth_button.dart';
import 'package:radio_station/view/widget/auth/custom_auth_text_form_field.dart';

import '../../widget/custom_background_gradient.dart';
import '../../widget/auth/custom_social_auth_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImplement controller = Get.put(SignUpControllerImplement());
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
                SizedBox(height: ScreenDimension.height * 0.12),
                SizedBox(
                  width: ScreenDimension.width,
                  height: ScreenDimension.height * 0.09,
                  child: Column(
                    children: [
                      Text(
                        "Sign Up",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Divider(height: ScreenDimension.height * 0.0024),
                      Text(
                        "Sign Up and Start Learning",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.lightRhythm2),
                      ),
                    ],
                  ),
                ),
                CustomAuthTextFormField(
                  type: TextInputType.text,
                  hint: "User Name",
                  prefixIcon: AuthIcons.userName,
                  controller: controller.userNameController,
                ),
                SizedBox(height: ScreenDimension.height * 0.02),
                CustomAuthTextFormField(
                  type: TextInputType.emailAddress,
                  hint: "Email Address",
                  prefixIcon: AuthIcons.email,
                  controller: controller.emailController,
                ),
                SizedBox(height: ScreenDimension.height * 0.02),
                GetBuilder<SignUpControllerImplement>(
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GetBuilder<SignUpControllerImplement>(
                        builder: (controller) => Checkbox(
                          value: controller.receiveEmails,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            controller.onPressReceiveEmails();
                          },
                          shape: const CircleBorder(),
                          activeColor: AppColors.brinkPink,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Yes! I want to get the most out of Ezymaster by receiving emails with exclusive deals and learning tips!",
                          maxLines: 3,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.lightRhythm1),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomAuthButton(
                  label: 'Sign Up',
                  onPress: controller.onPressSignUp,
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
                Expanded(
                  //height: ScreenDimension.height * 0.025,
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Already have an account? ",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.lightRhythm2)),
                    TextSpan(
                      text: "Log In",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.brinkPink),
                      recognizer: TapGestureRecognizer()
                        ..onTap = controller.onPressLogIn,
                    )
                  ])),
                ),
                SizedBox(height: ScreenDimension.height * 0.065),
                Expanded(
                  //height: ScreenDimension.height * 0.027,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text:
                              "By signing up you indicate that you have read and\nagreed to the Patch ",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: AppColors.lightRhythm2),
                        ),
                        TextSpan(
                          text: "Terms of Service",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: AppColors.brinkPink,fontSize: 8),
                          recognizer: TapGestureRecognizer()
                            ..onTap = controller.onPressTermsOfService,
                        )
                      ])),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
