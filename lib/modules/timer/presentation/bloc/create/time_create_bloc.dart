import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:timesheet/modules/timer/presentation/bloc/create/time_create_event.dart';

part 'time_create_state.dart';

class TimerCreateBloc extends Bloc<TimerCreateEvent, TimerCreateState> {
  TimerCreateBloc() : super(TimerCreateInitial()) {
    on<CreateTimerRequested>(_onCreate);
  }

  Future<void> _onCreate(
    CreateTimerRequested event,
    Emitter<TimerCreateState> emit,
  ) async {
    emit(TimerCreateLoading());

    await Future.delayed(const Duration(seconds: 2));

    emit(TimerCreateSuccess());
  }
}
