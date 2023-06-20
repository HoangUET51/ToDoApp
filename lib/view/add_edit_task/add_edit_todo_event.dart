abstract class addEditTodoEvent{}

class UpdateTitleEvent extends addEditTodoEvent {
  String title;
  UpdateTitleEvent({required this.title});
}

class UpdateDescriptionEvent extends addEditTodoEvent {
  String description;
  UpdateDescriptionEvent({required this.description});
}

class UpdatePriorityEvent extends addEditTodoEvent {
  String priority;
  UpdatePriorityEvent({required this.priority});
}

