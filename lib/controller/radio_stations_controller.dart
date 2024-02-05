import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/broadcast.dart';

abstract class RadioStationsController extends GetxController {
  late PageController pageController;

  List<String> genres = [
    "All",
    "Adult Contemporary",
    "Adult Rock",
    "Christian",
    "Classic Hits",
    "Classic Rock",
    "Comedy",
    "Country",
    "Dance"
  ];

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

  void onPressListSelector(int index);

  void onPressFavourite();
}

class RadioStationsControllerImplement extends RadioStationsController {
  int listSelectorIndex = 0;

  @override
  void onPressListSelector(int index) {
    listSelectorIndex = index;
    pageController.jumpToPage(index);
    update();
  }

  @override
  void onPressFavourite() {
    // TODO: implement onPressFavourite
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
