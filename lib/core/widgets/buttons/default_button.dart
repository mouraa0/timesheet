import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/color.dart';
import 'package:timesheet/core/styles/text_style.dart';
import 'package:timesheet/core/widgets/text/text.dart';

class AppDefaultButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final bool isLoading;

  const AppDefaultButton({
    super.key,
    required this.title,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(14),
          elevation: 0,
          backgroundColor: AppColors.secundaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: AppColors.onSecundaryContainer,
                ),
              )
            : AppText(
                title,
                textStyle: AppTextStyle.labelLargeOnSecundaryContainer,
              ),
      ),
    );
  }
}
