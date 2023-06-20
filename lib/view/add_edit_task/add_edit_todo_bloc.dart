import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_event.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_state.dart';

class AddEditTodoBloc extends Bloc<addEditTodoEvent,AddEditTaskState> {
  AddEditTodoBloc() : super(AddEditTaskState()){
    on<UpdateTitleEvent>((event,emit){
      print(event);
    });

  }
}