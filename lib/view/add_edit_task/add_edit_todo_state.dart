import 'package:to_do_list/model/todo_entity.dart';

class AddEditTaskState {
  final List<TodoEntity> todoList;
  AddEditTaskState({this.todoList = const<TodoEntity>[]});
}
