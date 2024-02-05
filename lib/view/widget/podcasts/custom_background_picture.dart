import 'package:flutter/material.dart';
import 'package:radio_station/core/constant/app_colors.dart';

class CustomBackgroundPodcastPicture extends StatelessWidget {
  final String picture;

  const CustomBackgroundPodcastPicture({Key? key, required this.picture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Container(
            height: constraints.maxHeight * 0.8333,
            width: constraints.maxWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(picture))),
          ),
          Container(
            height: constraints.maxHeight * 0.8340,
            decoration: BoxDecoration(
                gradient: RadialGradient(radius: 0.7, colors: [
              AppColors.spaceCadet.withOpacity(0),
              AppColors.maastrichtBlue.withOpacity(0.49),
              AppColors.chineseBlack
            ])),
          ),
          Container(
            height: constraints.maxHeight * 0.8333,
            decoration: BoxDecoration(
                gradient: RadialGradient(radius: 1, colors: [
              AppColors.spaceCadet.withOpacity(0),
              AppColors.maastrichtBlue.withOpacity(0.49),
              AppColors.chineseBlack
            ])),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: constraints.maxHeight * 0.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      AppColors.charlestonGreen.withOpacity(0),
                      AppColors.charlestonGreen.withOpacity(0.93)
                    ],
                        stops: const [
                      0,
                      1
                    ])),
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: constraints.maxHeight * 0.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      AppColors.charlestonGreen.withOpacity(0),
                      AppColors.charlestonGreen.withOpacity(0.93)
                    ],
                        stops: const [
                      0,
                      0.3
                    ])),
              )),
        ],
      );
    });
  }
}
