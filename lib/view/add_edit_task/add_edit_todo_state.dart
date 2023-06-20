import 'package:to_do_list/model/todo_entity.dart';

class AddEditTaskState {
  TodoEntity? todoEntity;
  AddEditTaskState({this.todoEntity});
  AddEditTaskState copyWith({
    TodoEntity? todo,
  }) {
   return AddEditTaskState(todoEntity: todo);
  }
}
