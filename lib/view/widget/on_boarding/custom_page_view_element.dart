import 'package:flutter/material.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/core/constant/screen_dimensions.dart';

import '../../../data/data_source/static/on_boarding_elements.dart';

class CustomPageViewElement extends StatelessWidget {
  final OnBoardingModel element;

  const CustomPageViewElement({super.key, required this.element});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenDimension.width * 0.08,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(element.picture), fit: BoxFit.fill),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: ScreenDimension.height * 0.08,
              ),
              Text(
                element.title,
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge,
              ),
              Text(
                element.subTitle,
                maxLines: 100,
                textAlign: TextAlign.center,
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.lightRhythm2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
