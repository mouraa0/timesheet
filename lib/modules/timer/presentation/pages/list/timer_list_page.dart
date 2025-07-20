import 'package:flutter/material.dart';
import 'package:timesheet/core/styles/icons.dart';
import 'package:timesheet/core/styles/text_style.dart';
import 'package:timesheet/core/widgets/buttons/icon_button.dart';
import 'package:timesheet/core/widgets/scaffold.dart';
import 'package:timesheet/core/widgets/text/text.dart';
import 'package:timesheet/modules/timer/presentation/pages/list/components/timer_list_container.dart';

class TimerListPage extends StatelessWidget {
  const TimerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_Header(), _Label(), _List()],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8),
      child: Row(
        spacing: 8,
        children: [
          AppText('Timesheets', textStyle: AppTextStyle.headlineLarge),
          Spacer(),
          AppIconButton(iconPath: AppIcons.order),
          AppIconButton(iconPath: AppIcons.plus),
        ],
      ),
    );
  }
}

class _Label extends StatelessWidget {
  const _Label();

  @override
  Widget build(BuildContext context) {
    return AppText(
      'You have 16 Timers',
      textStyle: AppTextStyle.labelLargeOnSurface,
    );
  }
}

class _List extends StatelessWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 16,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) => const TimerListContainer(),
      ),
    );
  }
}
