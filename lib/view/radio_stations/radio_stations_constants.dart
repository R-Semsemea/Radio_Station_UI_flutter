import 'package:flutter/material.dart';

const Text radioStationLabel = Text(
  "Radio Stations",
  style: TextStyle(color: Colors.white, fontSize: 23, fontFamily: "Circular"),
);
const Text bannerTopText = Text(
  "Enjoy your day with RadioApp",
  style: TextStyle(fontSize: 8, color: Colors.white, fontFamily: "Circular"),
);

const Text bannerBottomText = Text(
  "Tune your radio now",
  style: TextStyle(fontSize: 16, color: Colors.white, fontFamily: "Circular"),
);

const Text tuneButtonLabel = Text(
  "Tune Now",
  style: TextStyle(fontSize: 10, color: Colors.white, fontFamily: "Circular"),
);

BoxDecoration bannerPhoto = BoxDecoration(
    borderRadius: BorderRadius.circular(6),
    image: const DecorationImage(
        image: AssetImage("assets/png/tune_background.png"),
        fit: BoxFit.cover));

BoxDecoration tuneButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(2),
  gradient:
      const LinearGradient(colors: [Color(0xffFB6580), Color(0xffF11775)]),
);

const Color activeTabColor = Color(0xffFB6580);
const Color inactiveTabColor = Color(0xff5C5E6F);

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
