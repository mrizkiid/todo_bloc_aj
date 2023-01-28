part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  final List<Tasks> allTasks;
  const TasksState({this.allTasks = const <Tasks>[]});

  @override
  List<Object> get props => [];
}

// class TasksInitial extends TasksState {}
