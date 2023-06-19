import 'package:state_notifier/state_notifier.dart';
import 'package:to_do_list/model/todo_entity.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_state.dart';

class AddEditTaskController extends StateNotifier<AddEditTaskState> {
  AddEditTaskController() : super(AddEditTaskState(null));

  void onTitleUpdated(String value) {
    state = AddEditTaskState(
      TodoEntity(
          priority: state.todoEntity?.priority ?? Priority.high,
          title: value,
          description: state.todoEntity?.description ?? ''),
    );
  }

  void onDescriptionUpdated(String value) {
    state = AddEditTaskState(
      TodoEntity(
          priority: state.todoEntity?.priority ?? Priority.high,
          title: state.todoEntity?.title ?? '',
          description: value),
    );
  }

  void onPriorityChanged(Priority value) {
    state = AddEditTaskState(
      TodoEntity(
          priority: value,
          title: state.todoEntity?.title ?? '',
          description: state.todoEntity?.description ?? ''),
    );
  }

  TodoEntity? onAddBtnClicked() {
    return state.todoEntity;
  }

  void setTodoEntity(TodoEntity todo) {
    state = AddEditTaskState(todo);
  }
}
