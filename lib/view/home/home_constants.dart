import 'package:flutter/material.dart';

TextStyle coverLargeTextStyle = const TextStyle(
    color: Color(0xff7B7B8B), fontSize: 11, fontFamily: "Circular");

TextStyle coverSmallTextStyle =
    const TextStyle(color: Colors.white, fontSize: 31, fontFamily: "Circular");

TextStyle popularBroadcastEntityTitleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 10,
    fontFamily: "HK_Bold",
    overflow: TextOverflow.ellipsis);

TextStyle popularBroadcastEntitySubTitleStyle = const TextStyle(
    color: Color(0xff5C5E6F),
    fontSize: 9,
    fontFamily: "HK_Medium",
    overflow: TextOverflow.ellipsis);

TextStyle similarBroadcastEntityTitleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 10,
    fontFamily: "HK_Bold",
    overflow: TextOverflow.ellipsis);

TextStyle similarBroadcastEntitySubTitleStyle = const TextStyle(
    color: Color(0xff5C5E6F),
    fontSize: 10,
    fontFamily: "HK_Medium",
    overflow: TextOverflow.ellipsis);

Text popularBroadcastLabel = const Text(
  "Popular Broadcast",
  style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "HK_Bold"),
);

Text similarBroadcastLabel = const Text(
  "Similar Broadcast",
  style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "HK_Bold"),
);
