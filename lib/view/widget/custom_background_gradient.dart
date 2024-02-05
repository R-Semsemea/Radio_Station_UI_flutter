import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class CustomBackgroundGradient extends StatelessWidget {
  const CustomBackgroundGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
        radius: 1.234,
        colors: [AppColors.gunmetal, AppColors.eerieBlack],
      )),
    );
  }
}
