import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/constants.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radio_station/controller/sign_up_controller.dart';
import 'package:radio_station/view/sign_in.dart';

import '../constants.dart';

class SignUp extends StatelessWidget {
  double height = 20;

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
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: "Circular"),
                    ),
                    Divider(height: 25),
                    Text(
                      "Sign Up and Start Learning",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7B7B8B),
                          fontFamily: "Circular"),
                    ),
                    Divider(height: height),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xff1D192C),
                        hintText: "User Name",
                        hintStyle: TextStyle(color: Color(0xff7477A0)),
                        prefixIcon: Icon(
                          Icons.person_outline_outlined,
                          color: Color(0xff7477A0),
                        ),
                      ),
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
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xff1D192C),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Color(0xff7477A0)),
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Color(0xff7477A0),
                        ),
                      ),
                    ),
                    Divider(height: height),
                    Row(
                      children: [
                        GetBuilder<SignUpController>(
                          init: SignUpController(),
                          builder: (controller) => Checkbox(
                            value: controller.ad,
                            onChanged: (value) {
                              controller.switchAd();
                            },
                            shape: CircleBorder(),
                            activeColor: Color(0xffFB6580),
                          ),
                        ),
                        Text(
                          "Yes! I want to get the most out of Ezymaster\n by receiving emails with exclusive deals\n and learning tips!",
                          style: TextStyle(color: Color(0xff747895)),
                        )
                      ],
                    ),
                    Divider(height: height),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [Color(0xffFB6580), Color(0xffF11775)]),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Divider(height: height),
                    Text(
                      "OR",
                      style: TextStyle(color: Color(0xff7B7B8B)),
                    ),
                    Divider(height: height),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.google,
                            color: Colors.red[900],
                          ),
                          Text(
                            "  Continue With Google",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: height),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff39579A),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                          ),
                          Text(
                            " Continue With Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 25),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(color: Color(0xff7B7B8B))),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(()=>SignIn()),
                          text: "Log in",
                          style: TextStyle(color: Color(0xffFB6580)))
                    ]))
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
