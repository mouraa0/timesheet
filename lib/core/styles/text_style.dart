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
  }) : super(
          fontFamily: 'Inter',
        );

  static const headlineLarge = AppTextStyle(
    color: AppColors.onSurface,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 40 / 32,
  );

  static const subtitle = AppTextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const body = AppTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
}