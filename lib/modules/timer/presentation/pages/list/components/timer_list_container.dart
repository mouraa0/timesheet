import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timesheet/core/styles/color.dart';
import 'package:timesheet/core/styles/icons.dart';

class TimerListContainer extends StatelessWidget {
  const TimerListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceAtOne,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 2,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(width: 10),
            const _InfoColumn(),
            const SizedBox(width: 14),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryContainer,
                borderRadius: BorderRadius.circular(64),
              ),
              child: Row(
                spacing: 12,
                children: [
                  Text(
                    '00:30',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SvgPicture.asset(AppIcons.pause),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  const _InfoColumn();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6,
      children: [
        _TextInfo(
          text: 'iOS app deployment',
          iconPath: AppIcons.star,
          isTitle: true,
        ),
        _TextInfo(text: 'SO056 - Booqio V2', iconPath: AppIcons.bag),
        _TextInfo(text: 'Deadline 07/20/2023', iconPath: AppIcons.clock),
      ],
    );
  }
}

class _TextInfo extends StatelessWidget {
  final String text;
  final String iconPath;
  final bool isTitle;

  const _TextInfo({
    required this.text,
    required this.iconPath,
    this.isTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;

    return Row(
      spacing: 8,
      children: [
        SvgPicture.asset(iconPath),
        Text(
          text,
          style: isTitle
              ? Theme.of(context).textTheme.titleMedium!.copyWith(color: color)
              : Theme.of(context).textTheme.bodyMedium!.copyWith(color: color),
        ),
      ],
    );
  }
}
