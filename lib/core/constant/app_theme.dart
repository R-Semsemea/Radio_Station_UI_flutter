import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

ThemeData appTheme = ThemeData(
  dividerTheme: const DividerThemeData(space: 5, color: AppColors.transparent),
  fontFamily: "Circular",
  splashColor: Colors.transparent,
  textTheme: const TextTheme(
    titleLarge: AppTextStyle.titleLarge,
    titleMedium: AppTextStyle.titleMedium,
    titleSmall: AppTextStyle.titleSmall,
    bodyLarge: AppTextStyle.bodyLarge,
    bodyMedium: AppTextStyle.bodyMedium,
    bodySmall: AppTextStyle.bodySmall,
    labelLarge: AppTextStyle.labelLarge,
    labelMedium: AppTextStyle.labelMedium,
    labelSmall: AppTextStyle.labelSmall,
  ),
);
