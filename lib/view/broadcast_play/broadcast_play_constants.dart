import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../global_constants.dart';

///builds second layer of the image background
Widget radialGradient(
    {required double height, required double width, required double radius}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        gradient: RadialGradient(radius: radius, colors: const [
      Color(0x0014174e),
      Color(0x7d141535),
      Color(0xff14121C)
    ])),
  );
}

///builds third layer of the image background
Widget linearGradient(
    {required double height,
    required double width,
    required List<double> stops}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [Color(0x00262634), Color(0xee262634)],
            stops: stops)),
  );
}

const TextStyle broadcastTitleStyle =
    TextStyle(fontSize: 22, color: Colors.white, fontFamily: circular);

const TextStyle broadcastSubTitleStyle =
    TextStyle(fontSize: 11, color: Color(0xff7B7B8B), fontFamily: circular);

const Text frequencyText = Text(
  "41.08",
  style: TextStyle(fontSize: 9, color: Color(0xff7B7B8B), fontFamily: circular),
);

Container wave = Container(
  decoration: const BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fill, image: AssetImage("${pngIconsPath}wave.png"))),
);

const Icon favouriteIcon = Icon(
  FontAwesomeIcons.solidHeart,
  color: Color(0xff7B7B8B),
);
