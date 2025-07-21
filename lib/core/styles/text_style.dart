import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/color.dart';

class AppTextStyle extends TextStyle {
  const AppTextStyle({
    super.color,
    super.fontSize,
    super.fontWeight,
    super.height,
    super.letterSpacing,
    super.wordSpacing,
    super.backgroundColor,
    super.decoration,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
  }) : super(fontFamily: 'Inter');

  static const headlineLarge = AppTextStyle(
    color: AppColors.onSurface,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 40 / 32,
  );

  static const headlineSmall = AppTextStyle(
    fontSize: 24,
    height: 32 / 24,
    fontWeight: FontWeight.w700,
  );

  static const titleMedium = AppTextStyle(
    color: AppColors.onSurface,
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w600,
  );

  static const bodyMedium = AppTextStyle(
    color: AppColors.onSurface,
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
  );

  static const bodyLarge = AppTextStyle(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w400,
  );

  static const labelLarge = AppTextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
  );
}
