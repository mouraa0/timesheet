import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timesheet/core/styles/icons.dart';

class AppSecondaryHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onBackPressed;

  const AppSecondaryHeader({
    super.key,
    required this.title,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onBackPressed,
            child: SizedBox(
              width: 10,
              height: 17,
              child: SvgPicture.asset(AppIcons.arrowLeft),
            ),
          ),
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
