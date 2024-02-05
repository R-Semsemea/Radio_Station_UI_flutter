import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';
import '../../../data/data_source/static/app_images.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.onBoardingBackground),
              fit: BoxFit.cover),
          gradient: RadialGradient(
            radius: 1.234,
            colors: [AppColors.gunmetal, AppColors.eerieBlack],
          )),
    );
  }
}
