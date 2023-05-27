import 'package:flutter/material.dart';
import 'package:radio_station/constants.dart';

Widget PopularBroadcastCard(
    BuildContext context, String picture, String title, String subtitle) {
  return Container(

    width: widthOfScreen(context, 0.33),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(picture), fit: BoxFit.fill),
          ),
         // width: 140,
          height: heightOfScreen(context, 0.15),
        ),
        Divider(
          color: Colors.transparent,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            softWrap: false,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.start,
            title,
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Circular"),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            subtitle,
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Color(0xff5C5E6F),
                fontSize: 9,
                fontFamily: "Circular",
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    ),
  );
}
