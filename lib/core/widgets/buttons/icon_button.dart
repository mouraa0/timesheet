import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timesheet/core/styles/color.dart';

class AppIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback? onPressed;
  final double size;

  const AppIconButton({
    super.key,
    required this.iconPath,
    this.onPressed,
    this.size = 48,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        height: size,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.secundaryContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SvgPicture.asset(iconPath),
      ),
    );
  }
}
