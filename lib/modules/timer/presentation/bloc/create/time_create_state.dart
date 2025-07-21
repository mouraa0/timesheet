part of 'time_create_bloc.dart';

abstract class TimerCreateState extends Equatable {
  @override
  List<Object?> get props => [];
}

class TimerCreateInitial extends TimerCreateState {}

class TimerCreateLoading extends TimerCreateState {}

class TimerCreateSuccess extends TimerCreateState {}

class TimerCreateFailure extends TimerCreateState {
  final String message;
  TimerCreateFailure(this.message);

  @override
  List<Object?> get props => [message];
}
