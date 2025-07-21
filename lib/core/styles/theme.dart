import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/color.dart';
import 'package:timesheet/core/styles/inputs.dart';
import 'package:timesheet/core/styles/text_style.dart';

class AppTheme {
  static ThemeData get light {
    final outline = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppInputsStyle.borderRadius),
      borderSide: BorderSide(
        color: AppInputsStyle.borderColor,
        width: AppInputsStyle.borderWidth,
      ),
    );

    return ThemeData(
      colorScheme: const ColorScheme.light(
        primaryContainer: AppColors.primaryContainer,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        secondaryContainer: AppColors.secundaryContainer,
        onSecondaryContainer: AppColors.onSecundaryContainer,
        surface: AppColors.surfaceAtOneDark,
        onSurface: AppColors.onSurface,
        outline: AppColors.outline,
        surfaceBright: AppColors.surfaceAtOne,
      ),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyle.headlineLarge,
        headlineSmall: AppTextStyle.headlineSmall,
        titleMedium: AppTextStyle.titleMedium,
        bodyMedium: AppTextStyle.bodyMedium,
        bodyLarge: AppTextStyle.bodyLarge,
        labelLarge: AppTextStyle.labelLarge,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secundaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          padding: EdgeInsets.zero,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyle.bodyLarge.copyWith(color: AppColors.onSurface),
        border: outline,
        enabledBorder: outline,
        focusedBorder: outline,
        contentPadding: EdgeInsets.all(AppInputsStyle.contentPadding),
      ),
    );
  }
}
