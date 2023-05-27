import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/Song.dart';

class HomeController extends GetxController {
  late PageController pageController;
  int currentIndex = 0;
  List<Song> songs = [
    Song(
        name: "Bulletproof",
        singer: "Tabitha Nauser",
        photo: "asset_files/png/cover.png"),
    Song(name: "Dale", singer: "Pitbull", photo: "asset_files/png/4.jpg"),
  ];

  void onPressNav(int index){
    currentIndex=index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
