import 'package:flutter/material.dart';
import 'package:timesheet/core/widgets/buttons/checkbox/checkbox.dart';
import 'package:timesheet/core/widgets/buttons/default_button.dart';
import 'package:timesheet/core/widgets/headers/secundary_header.dart';
import 'package:timesheet/core/widgets/inputs/dropdown/dropdown.dart';
import 'package:timesheet/core/widgets/inputs/text_field.dart';
import 'package:timesheet/core/widgets/scaffold.dart';

class TimerCreatePage extends StatelessWidget {
  const TimerCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    const double spacingDefault = 28;

    return AppScaffold(
      body: Column(
        children: [
          const AppSecondaryHeader(title: 'Create Timer'),
          AppDropdown(
            hint: 'Project',
            items: items,
            onChanged: (p0) {},
            getLabel: (item) => item,
          ),
          const SizedBox(height: spacingDefault),
          AppDropdown(
            hint: 'Task',
            items: items,
            onChanged: (p0) {},
            getLabel: (item) => item,
          ),
          const SizedBox(height: spacingDefault),
          const AppTextField(hint: 'Description', isMultiline: true),
          const SizedBox(height: 24),
          const AppCheckbox(initialValue: false, label: 'Make Favorite'),
          const Spacer(),
          AppDefaultButton(title: 'Create Timer', onPressed: () {}),
          const SizedBox(height: spacingDefault),
        ],
      ),
    );
  }
}
