import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/view/todo_list/todo_list_event.dart';
import 'package:to_do_list/view/todo_list/todo_list_state.dart';

class TodoListBloc extends Bloc<TodoListEvent, ToDoListState> {
  TodoListBloc(super.initialState);
}
