enum Priority {
  high,
  medium,
  low;

  @override
  String toString() {
    return name.toUpperCase();
  }
}

class TodoEntity {
  TodoEntity({
    this.id,
    required this.priority,
    required this.title,
    required this.description,
  });

  final int? id;

  late final Priority priority;
  late final String title;
  late final String description;
}
