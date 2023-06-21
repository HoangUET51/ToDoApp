import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_event.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_state.dart';

class AddEditTodoBloc extends Bloc<AddEditTodoEvent,AddEditTaskState> {
  AddEditTodoBloc() : super(AddEditTaskState()){
    on<AddTodoEvent>(_onAddTodo);
    on<UpdateTodoEvent>(_onEditTodo);
    on<DeleteTodoEvent>(_onDeleteTodo);
  }

  void _onAddTodo(AddTodoEvent event, Emitter<AddEditTaskState> emit) {
    final state = this.state;

    emit(AddEditTaskState(todoList: List.from(state.todoList)..add(event.todo),));
  }

  void _onEditTodo(UpdateTodoEvent event, Emitter<AddEditTaskState> emit) {

  }

  void _onDeleteTodo(DeleteTodoEvent event,Emitter<AddEditTaskState> emit ){}
}