import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:radio_station/view/screen/auth/forget_password.dart';
import 'package:radio_station/view/screen/auth/log_in.dart';
import 'package:radio_station/view/screen/auth/sign_up.dart';
import 'package:radio_station/view/screen/home_layout.dart';
import 'package:radio_station/view/screen/on_boarding.dart';
import 'package:radio_station/view/screen/terms_of_service.dart';

import 'core/constant/routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const LogIn(),
    // middlewares: [Middleware()]
  ),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.homeLayout, page: () => HomeLayout()),
  GetPage(name: AppRoute.termsOfService, page: () => const TermsOfService()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding())
];
