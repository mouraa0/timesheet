import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/text_style.dart';

class AppText extends StatelessWidget {
  final String text;
  final AppTextStyle textStyle;

  const AppText(this.text, {super.key, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle);
  }
}
