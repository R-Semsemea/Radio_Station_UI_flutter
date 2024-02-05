import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:radio_station/routes.dart';
import 'package:radio_station/view/screen/auth/log_in.dart';

import 'core/constant/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(DevicePreview(builder: (context) => MyApp()));
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const LogIn(),
      theme: appTheme,
      /*ThemeData(
          dividerTheme:const DividerThemeData(space: 5, color: Colors.transparent),
          fontFamily: "Circular",
          primarySwatch: MaterialColor(0xffF11775, color)),*/
      getPages: routes,
    );
  }
}
