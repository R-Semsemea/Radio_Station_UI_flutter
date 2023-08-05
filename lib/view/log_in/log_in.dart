import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:radio_station/control/log_in_controller.dart';

import '../../global_constants.dart';
import 'log_in_constants.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LogInController>(
        init: LogInController(),
        builder: (controller) => LayoutBuilder(builder: (context, constraints) {
              return Scaffold(
                body: Stack(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(gradient: backgroundRadialGradient),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: constraints.maxWidth * 0.08),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Divider(height: constraints.maxHeight * 0.1008),
                            SizedBox(
                                width: constraints.maxWidth,
                                height: constraints.maxHeight * 0.106,
                                child: SvgPicture.string(appLogo)),
                            Divider(height: constraints.maxHeight * 0.0283),
                            SizedBox(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight * 0.0911,
                              child: Column(
                                children: [
                                  welcomeLabel,
                                  Divider(
                                      height: constraints.maxHeight * 0.0024),
                                  loginLabel,
                                ],
                              ),
                            ),
                            SizedBox(
                                width: constraints.maxWidth,
                                height: constraints.maxHeight * 0.0591,
                                child: inputField(
                                    TextInputType.emailAddress,
                                    "Email Address",
                                    "${pngIconsPath}mail.png")),
                            Divider(height: constraints.maxHeight * 0.0216),
                            SizedBox(
                                width: constraints.maxWidth,
                                height: constraints.maxHeight * 0.0591,
                                child: inputField(
                                    TextInputType.visiblePassword,
                                    "Password",
                                    "${pngIconsPath}password_lock.png",
                                    obscureText: true)),
                            SizedBox(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight * 0.0726,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: controller.rememberMe,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        onChanged: (value) {
                                          controller.switchAd();
                                        },
                                        shape: const CircleBorder(),
                                        activeColor: const Color(0xffFB6580),
                                      ),
                                      rememberMeLabel,
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed("/forgetPassword");
                                    },
                                    child: forgotPasswordLabel,
                                  )
                                ],
                              ),
                            ),
                            buildButton(constraints.maxWidth,
                                constraints.maxHeight * 0.059, "Log In",
                                colors: const [
                                  Color(0xffFB6580),
                                  Color(0xffF11775)
                                ], onTap: () {
                              Get.toNamed(
                                  "/home_layout"); //it's better to use " Get.to(()=>Tutorial()) " than " Get.to(Tutorial()) if it's not get to named "
                            }, labelSize: 16),
                            SizedBox(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight * 0.0862, //0.0197
                              child: Center(child: orLabel),
                            ),
                            buildButton(
                                constraints.maxWidth,
                                constraints.maxHeight * 0.059,
                                "Continue With Google",
                                color: Colors.white,
                                labelColor: Colors.black,
                                prefixIcon: "s"),
                            Divider(height: constraints.maxHeight * 0.0160),
                            buildButton(
                                constraints.maxWidth,
                                constraints.maxHeight * 0.059,
                                "Continue With Facebook",
                                color: const Color(0xff39579A),
                                prefixIcon: "s"),
                            Divider(height: constraints.maxHeight * 0.0357),
                            SizedBox(
                              height: constraints.maxHeight * 0.025, //0.0197
                              // width: constraints.maxWidth * 0.448,
                              child: RichText(
                                  text: TextSpan(children: <TextSpan>[
                                const TextSpan(
                                    text: "Don't have an account? ",
                                    style: TextStyle(color: Color(0xff7B7B8B))),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => Get.toNamed("/SignUp"),
                                    text: "Sign Up",
                                    style: const TextStyle(
                                        color: Color(0xffFB6580)))
                              ])),
                            ),
                            Divider(height: constraints.maxHeight * 0.0665),
                            SizedBox(
                              height: constraints.maxHeight * 0.027,
                              //width: constraints.maxWidth * 0.4373,
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            "By signing up you indicate that you have read and\nagreed to the Patch ",
                                        style: TextStyle(
                                          color: Color(0xff7B7B8B),
                                          fontSize: 8,
                                        )),
                                    TextSpan(
                                        text: "Terms of Service",
                                        style: TextStyle(
                                            color: Color(0xffFB6580),
                                            fontSize: 8))
                                  ])),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
