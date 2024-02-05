import 'package:flutter/material.dart';
import 'package:radio_station/core/constant/screen_dimensions.dart';

class CustomSocialAuthButton extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color buttonColor;
  final IconData prefixIcon;
  final Color iconColor;
  final void Function() onPress;

  const CustomSocialAuthButton(
      {Key? key,
      required this.label,
      required this.buttonColor,
      required this.labelColor,
      required this.prefixIcon,
      required this.iconColor,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: ScreenDimension.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: buttonColor,
        ),
        child: Center(
            child: TextButton.icon(
          onPressed: onPress,
          label: Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: labelColor),
          ),
          icon: Icon(
            prefixIcon,
            color: iconColor,
          ),
        )),
      ),
    );
  }
}
