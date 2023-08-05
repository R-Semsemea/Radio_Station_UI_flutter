import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/broadcast.dart';

class RadioStationsController extends GetxController {
  int index = 0;
  List<Broadcast> similarBroadcastObjects = [
    Broadcast(
        title: "THE JORDAN HARBING",
        subTitle: "Celeste Headlee",
        photo: "assets/png/popular_broadcasts/1.png"),
    Broadcast(
        title: "FROM NEGATIVE TO POSITIVE",
        subTitle: "The King of Miami",
        photo: "assets/png/popular_broadcasts/2.png"),
    Broadcast(
        title: "I SURVIVED",
        subTitle: "Cold Case Files: Modus Operandi",
        photo: "assets/png/popular_broadcasts/3.png"),
    Broadcast(
        title: 'Expeditiously with tip "T.I." Harris',
        subTitle: "Greenwood Online Banking For Us By Us",
        photo: "assets/png/similar_broadcasts/1.png"),
    Broadcast(
        title: "Superman's not coming with Erin Brockovich",
        subTitle: "Lunchbreak with Yasmi...",
        photo: "assets/png/similar_broadcasts/2.png"),
    Broadcast(
        title: "That's Awesome with Steve Burton & Bradford Anderson",
        subTitle: "Talking GH and Days With BRANDON BAR...",
        photo: "assets/png/similar_broadcasts/3.png"),
    Broadcast(
        title: "Purple daily - a Minnesota Vikings",
        subTitle: "Minnesota Vikings trade deadline: What should ...",
        photo: "assets/png/similar_broadcasts/4.png"),
  ];
  late PageController pageController;

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

  void onPress(int index) {
    this.index = index;
    pageController.jumpToPage(index);
    update();
  }
}
