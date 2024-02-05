import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  final String name;
  final void Function() onPress;

  const CustomTextButton({Key? key, required this.name, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith((states) {
          return Colors.transparent;
        }),
      ),
      child: Text(
        name,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColors.electricPink),
      ),
    );
  }
}
