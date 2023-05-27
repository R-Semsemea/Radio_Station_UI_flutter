import 'package:get/get.dart';
class SignUpController extends GetxController{
  bool ad=false;

  void switchAd(){
    ad=!ad;
    update();
  }
}