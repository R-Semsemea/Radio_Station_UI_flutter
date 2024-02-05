import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/view/widget/custom_background_gradient.dart';

import '../../../controller/auth/forget_password_controller.dart';
import '../../../core/constant/app_colors.dart';
import '../../../data/data_source/static/auth_icons.dart';
import '../../../core/constant/screen_dimensions.dart';
import '../../widget/auth/custom_auth_button.dart';
import '../../widget/auth/custom_auth_text_form_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImplement controller =
        Get.put(ForgetPasswordControllerImplement());
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
                SizedBox(height: ScreenDimension.height * 0.25),
                Text(
                  "Forget Password",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Divider(height: ScreenDimension.height * 0.0024),
                Text(
                  "Enter your email address below.\nWe'll look for your account and send you a\npassword reset email.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.lightRhythm2,
                      ),
                ),
                SizedBox(height: ScreenDimension.height * 0.025),
                CustomAuthTextFormField(
                  type: TextInputType.emailAddress,
                  hint: "Email Address",
                  prefixIcon: AuthIcons.email,
                  controller: controller.emailController,
                ),
                SizedBox(height: ScreenDimension.height * 0.025),
                CustomAuthButton(
                  label: 'Send Password Reset',
                  onPress: controller.onPressSendPasswordReset,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
