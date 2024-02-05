import 'package:flutter/material.dart';

class CustomForegroundPodcastPicture extends StatelessWidget {
  final String picture;

  const CustomForegroundPodcastPicture({Key? key, required this.picture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(
                picture,
              ),
              fit: BoxFit.cover)),
    );
  }
}
