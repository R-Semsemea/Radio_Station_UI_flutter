import 'package:get/get.dart';

import '../model/broadcast.dart';

class ProfileController extends GetxController {
  final List<Broadcast> favouriteBroadcasts = [
    Broadcast(
        title: "THE JORDAN HARBINGER SHOW",
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
        title: "SHANGHAI",
        subTitle: "Lorem Ipsum",
        photo: "assets/png/popular_broadcasts/4.png"),
  ];

  final List<Broadcast> favouriteRadioStations = [
    Broadcast(
        title: 'Expeditiously with tip "T.I." Harris',
        subTitle: "Greenwood Online Banking For Us By Us",
        photo: "assets/png/similar_broadcasts/1.png"),
    Broadcast(
        title: "Superman's not coming with Erin Brockovich",
        subTitle: "Lunchbreak with Yasmi...",
        photo: "assets/png/similar_broadcasts/2.png"),
    Broadcast(
        title: "That's awesome with Steve Burton & Bradfor...",
        subTitle: "Talking GH and Days With BRANDON BAR...",
        photo: "assets/png/similar_broadcasts/3.png"),
    Broadcast(
        title: "Purple daily - a Minnesota Vikings",
        subTitle: "Minnesota Vikings trade deadline: What should ...",
        photo: "assets/png/similar_broadcasts/4.png"),
  ];
}
