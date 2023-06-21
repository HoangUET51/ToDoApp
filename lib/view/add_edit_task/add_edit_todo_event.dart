import 'package:to_do_list/model/todo_entity.dart';

abstract class AddEditTodoEvent{}

class UpdateTodoEvent extends AddEditTodoEvent {
  final TodoEntity todo;
  UpdateTodoEvent({required this.todo});
}

class AddTodoEvent extends AddEditTodoEvent {
  final TodoEntity todo;
  AddTodoEvent({required this.todo});
}




