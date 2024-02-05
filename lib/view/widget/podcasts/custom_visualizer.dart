import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/data/data_source/static/app_images.dart';

class CustomVisualizer extends StatelessWidget {
  const CustomVisualizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "41.08",
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: AppColors.lightRhythm2),
        ),
        Image.asset(AppImages.visualizer),
        IconButton(
          visualDensity: VisualDensity.compact,
            onPressed: () {},
            icon: const Icon(

              FontAwesomeIcons.solidHeart,
              size: 18,
              color: AppColors.lightRhythm2,
            ))
      ],
    );
  }
}
