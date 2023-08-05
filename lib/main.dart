import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:radio_station/view/home_layout/home_layout.dart';
import 'package:radio_station/view/log_in/log_in.dart';

import 'global_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(DevicePreview(builder: (context) => MyApp()));
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: LogIn(),
      theme: ThemeData(
          dividerTheme:
              const DividerThemeData(space: 5, color: Colors.transparent),
          fontFamily: "Circular",
          primarySwatch: MaterialColor(0xffF11775, color)),
      getPages: [
        GetPage(name: "/home_layout", page: () => HomeLayout()),
        GetPage(name: "/log_in", page: () => LogIn()),
      ],
    );
  }
}
