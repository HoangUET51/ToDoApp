class ToDo {
  int? id;
  String? title;
  String? description;
  String? priority;

  ToDo({
    required this.id,
    required this.title,
    required this.description,
    required this.priority,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
          id: 1,
          title: "List item",
          description:
              "Supporting line text lorem ipsum dolor sit amet, consectetur.",
          priority: "hight"),
      ToDo(
          id: 2,
          title: "List item",
          description:
              "Supporting line text lorem ipsum dolor sit amet, consectetur",
          priority: "low"),
      ToDo(
          id: 3,
          title: "List item",
          description:
              "Supporting line text lorem ipsum dolor sit amet, consectetur",
          priority: "medium"),
      ToDo(
          id: 4,
          title: "List item",
          description:
              "Supporting line text lorem ipsum dolor sit amet, consectetur",
          priority: "medium"),
      ToDo(
          id: 5,
          title: "List item",
          description:
              "Supporting line text lorem ipsum dolor sit amet, consectetur",
          priority: "medium"),
      ToDo(
          id: 6,
          title: "List item",
          description:
              "Supporting line text lorem ipsum dolor sit amet, consectetur",
          priority: "medium"),
      ToDo(
          id: 7,
          title: "List item",
          description:
              "Supporting line text lorem ipsum dolor sit amet, consectetur",
          priority: "medium")
    ];
  }
}
