import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_bloc_aj/models/task.dart';
import 'package:todo_bloc_aj/screen/tasks_creen.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const TasksState()) {
    // on<TasksEvent>((event, emit) {
    //   // TODO: implement event handler
    // });

    on<TasksEvent>(_onAdd);
    void _onAdd(

    )

  }

  // void
}
