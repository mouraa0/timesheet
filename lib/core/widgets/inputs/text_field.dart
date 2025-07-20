import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/inputs.dart';
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
      cursorColor: AppInputsStyle.cursorColor,
      style: AppInputsStyle.textStyle,
      controller: controller,
      decoration: InputDecoration(
        hint: AppText(hint, textStyle: AppInputsStyle.textStyle),
        contentPadding: EdgeInsets.all(AppInputsStyle.contentPadding),
        border: _border(),
        focusedBorder: _border(),
        enabledBorder: _border(),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppInputsStyle.borderRadius),
      borderSide: BorderSide(
        color: AppInputsStyle.borderColor,
        width: AppInputsStyle.borderWidth,
      ),
    );
  }
}
