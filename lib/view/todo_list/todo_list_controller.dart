import 'package:to_do_list/view/todo_list/todo_list_state.dart';
import 'package:state_notifier/state_notifier.dart';

class TodoController extends StateNotifier<ToDoListState> {
  TodoController() : super(ToDoListState());
}
