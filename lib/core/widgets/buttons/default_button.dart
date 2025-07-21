import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/color.dart';

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
        onPressed: onPressed,
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: AppColors.onSecundaryContainer,
                ),
              )
            : Text(
                title,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: AppColors.onSecundaryContainer,
                ),
              ),
      ),
    );
  }
}
