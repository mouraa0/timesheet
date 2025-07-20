import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:timesheet/core/constants/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(AppRoutes.timerList);

    return MaterialApp.router(
      title: 'Timesheet',
      routerConfig: Modular.routerConfig,
    );
  }
}
