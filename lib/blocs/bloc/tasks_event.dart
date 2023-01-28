// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tasks_bloc.dart';

abstract class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object> get props => [];
}

class AddTask extends TasksEvent {
  final Tasks task;
  AddTask({
    required this.task,
  });

  List<Object> get props => [task];
}

class UpdateTask extends TasksEvent {
  final Tasks task;
  UpdateTask({
    required this.task,
  });

  List<Object> get props => [task];
}

class DeleteTask extends TasksEvent {
  final Tasks task;
  DeleteTask({
    required this.task,
  });

  List<Object> get props => [task];
}
