import "package:flutter/material.dart";
import "package:radio_station/data/data_source/static/app_icons.dart";

class CustomControl extends StatelessWidget {
  const CustomControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppIcons.previous,
            )),
        IconButton(
            iconSize: 90,
            onPressed: () {},
            icon: Image.asset(
              AppIcons.play,
            )),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppIcons.next,
            )),
      ],
    );
  }
}
