import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:radio_station/constants.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radio_station/controller/sign_up_controller.dart';
import 'package:radio_station/view/sign_in.dart';

import '../constants.dart';

class ForgetPassword extends StatelessWidget {
  double height = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background,
          Center(
            child: Padding(
              padding: EdgeInsets.all(widthOfScreen(context, 0.08)),
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(height: 40),
                    Text(
                      "Forget Password",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: "Circular"),
                    ),
                    Divider(height: 10),
                    Text(
                      "Enter your email address below.\nWe'll look for your account and send you a\n password reset email.",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff7B7B8B),
                          fontFamily: "Circular"),
                      textAlign: TextAlign.center,
                    ),
                    Divider(height: height),

                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xff1D192C),
                        hintText: "Email Address",
                        hintStyle: TextStyle(color: Color(0xff7477A0)),
                        prefixIcon: Icon(
                          Icons.mail_outlined,
                          color: Color(0xff7477A0),
                        ),
                      ),
                    ),
                    Divider(height: height),
                    Container(
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [Color(0xffFB6580), Color(0xffF11775)]),
                      ),
                      child: Center(
                        child: Text(
                          "Send Password Reset",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Divider(height: height),

                    Divider(height: 300),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(text: "Already have an account? ",
                              style: TextStyle(color: Color(0xffFB6580))),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(()=>SignIn()),
                              text: "Log in",
                              style: TextStyle(color: Color(0xffFB6580),fontSize: 15))
                        ])),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
