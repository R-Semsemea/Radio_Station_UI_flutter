import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:radio_station/constants.dart';
import 'package:radio_station/view/forget_password.dart';
import 'package:radio_station/view/home/home.dart';
import 'package:radio_station/view/sign_in.dart';
import 'package:radio_station/view/sign_up.dart';
import 'package:radio_station/view/splash.dart';
import 'package:radio_station/view/test.dart';
import 'package:radio_station/view/tutorial.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
      theme: ThemeData(primarySwatch: MaterialColor(0xffF11775, color)),
      getPages: [
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/signIn", page: () => SignIn()),
        GetPage(name: "/signUp", page: () => SignUp()),
        GetPage(name: "/forgetPassword", page: () => ForgetPassword()),
        GetPage(name: "/tutorial", page: () => Tutorial()),
      ],
    );
  }
}
