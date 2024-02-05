import 'package:flutter/material.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/core/constant/screen_dimensions.dart';

class CustomAuthButton extends StatelessWidget {
  final String label;
  final void Function() onPress;

  const CustomAuthButton({
    Key? key,
    required this.label,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: ScreenDimension.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: const LinearGradient(colors: [
            AppColors.brinkPink,
            AppColors.electricPink,
          ]),
        ),
        child: Center(
            child: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge,
        )),
      ),
    );
  }
}
