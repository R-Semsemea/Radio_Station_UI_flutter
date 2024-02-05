import 'package:flutter/material.dart';
import 'package:radio_station/core/constant/app_colors.dart';

class CustomAuthTextFormField extends StatelessWidget {
  final TextInputType type;
  final String hint;
  final String prefixIcon;
  final bool obscureText;
  final bool isPasswordField;
  final void Function()? onPressedSuffixIcon;
  final TextEditingController controller;

  const CustomAuthTextFormField(
      {Key? key,
      required this.type,
      required this.hint,
      required this.prefixIcon,
      this.obscureText = false,
      this.isPasswordField = false,
      this.onPressedSuffixIcon,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: obscureText,
        style: const TextStyle(color: AppColors.white),
        cursorColor: AppColors.brinkPink,
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.brinkPink, width: 2),
          ),
          filled: true,
          fillColor: AppColors.darkGunmetal,
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.rhythm),
          prefixIcon: IconButton(
              icon: Image.asset(prefixIcon),
              padding: const EdgeInsets.all(12.0),
              onPressed: null),
          suffixIcon: isPasswordField
              ? IconButton(
                  icon: obscureText
                      ? const Icon(
                          Icons.visibility_off,
                          color: AppColors.rhythm,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: AppColors.rhythm,
                        ),
                  onPressed: onPressedSuffixIcon ?? () {},
                )
              : null,
        ),
      );
    });
  }
}
