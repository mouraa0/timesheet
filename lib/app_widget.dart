import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:timesheet/core/styles/theme.dart';
import 'package:timesheet/modules/timer/timer_module.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(TimerModule.pathCreate);

    return MaterialApp.router(
      title: 'Timesheet',
      theme: AppTheme.light,
      routerConfig: Modular.routerConfig,
    );
  }
}
