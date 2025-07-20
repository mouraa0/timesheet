import 'package:flutter_modular/flutter_modular.dart';
import 'package:timesheet/core/constants/routes.dart';
import 'package:timesheet/modules/timer/presentation/pages/create/timer_create_page.dart';
import 'package:timesheet/modules/timer/presentation/pages/list/timer_list_page.dart';

class TimerModule extends Module {
  @override
  void routes(r) {
    r.child(AppRoutes.timerList, child: (context) => const TimerListPage());
    r.child(AppRoutes.timerCreate, child: (context) => const TimerCreatePage());
  }
}
