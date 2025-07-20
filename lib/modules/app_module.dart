import 'package:flutter_modular/flutter_modular.dart';
import 'package:timesheet/core/constants/routes.dart';
import 'package:timesheet/modules/timer/timer_module.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.module(AppRoutes.timer, module: TimerModule());
  }
}
