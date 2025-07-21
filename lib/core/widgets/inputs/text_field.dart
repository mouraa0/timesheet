import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/inputs.dart';

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
      cursorColor: AppInputsStyle.cursorColor,
      style: Theme.of(context).inputDecorationTheme.hintStyle!,
      controller: controller,
      decoration: InputDecoration(hintText: hint),
    );
  }
}
