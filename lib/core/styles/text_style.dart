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

  static final labelLargeOnSurface = _labelLarge.withColor(AppColors.onSurface);

  static final labelLargeOnPrimaryContainer = _labelLarge.withColor(
    AppColors.onPrimaryContainer,
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

  static const _labelLarge = AppTextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
  );

  AppTextStyle _copyWith({
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    return AppTextStyle(
      color: color ?? this.color,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      height: height ?? this.height,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      decoration: decoration ?? this.decoration,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
    );
  }

  AppTextStyle withColor(Color color) => _copyWith(color: color);
}
