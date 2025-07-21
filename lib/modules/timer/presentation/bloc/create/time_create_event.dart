import 'package:equatable/equatable.dart';

abstract class TimerCreateEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreateTimerRequested extends TimerCreateEvent {
  final String projectId;
  final String taskId;
  final String description;
  final bool isFavorite;

  CreateTimerRequested({
    required this.projectId,
    required this.taskId,
    required this.description,
    required this.isFavorite,
  });

  @override
  List<Object?> get props => [projectId, taskId, description, isFavorite];
}
