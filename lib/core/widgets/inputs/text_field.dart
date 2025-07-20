import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/color.dart';
import 'package:timesheet/core/styles/text_style.dart';
import 'package:timesheet/core/widgets/text/text.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final bool isMultiline;

  const AppTextField({
    super.key,
    required this.hint,
    this.controller,
    this.isMultiline = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 1,
      maxLines: isMultiline ? null : 1,
      cursorColor: AppColors.outline,
      style: AppTextStyle.bodyLargeOnSurface,
      controller: controller,
      decoration: InputDecoration(
        hint: AppText(hint, textStyle: AppTextStyle.bodyLargeOnSurface),
        contentPadding: const EdgeInsets.all(16),
        border: _border(),
        focusedBorder: _border(),
        enabledBorder: _border(),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.outline, width: 2),
    );
  }
}
