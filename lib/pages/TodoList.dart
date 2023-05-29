import 'package:flutter/material.dart';
import 'package:to_do_list/common/AppColor.dart';
import 'package:to_do_list/common/AppStyle.dart';
import 'package:auto_route/auto_route.dart';
import 'package:to_do_list/pages/ToDoItem.dart';
import 'package:to_do_list/router/app_router.gr.gr.dart';

@RoutePage()
class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final todosList = ToDo.todoList();

  void addTodoList(ToDo todo) {
    setState(() {
      todosList.add(todo);
    });
  }

  void deleteItem(int id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void handleOnchange(ToDo todo, ToDo newTodo) {
    setState(() {
      todo.priority = newTodo.priority;
      todo.title = newTodo.title;
      todo.description = newTodo.description;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo List App", style: AppStyle.titleAppBar),
        backgroundColor: AppColor.backgroundButton,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                width: 358,
                height: 104,
                color: AppColor.backgroundItem,
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              todosList[index].priority.toString(),
                              style: TextStyle(
                                  color: AppColor.subItem,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              todosList[index].title.toString(),
                              style: TextStyle(
                                  color: AppColor.titleItem,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              todosList[index].description.toString(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                  color: AppColor.subItem,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () async {
                                var newTodo = await context.router
                                    .push(EditTodo(todo: todosList[index]));
                                handleOnchange(
                                    todosList[index], newTodo as ToDo);
                              },
                              icon: Icon(
                                Icons.create_outlined,
                                color: AppColor.subItem,
                                size: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                deleteItem(todosList[index].id as int);
                              },
                              icon: Icon(
                                Icons.delete,
                                color: AppColor.subItem,
                                size: 20,
                              ),
                            ),
                          ],
                        ))
                  ],
                ));
          },
          itemCount: todosList.length),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.backgroundActionButton,
        onPressed: () async {
          final result = await context.router.push(const AddTodo());
          addTodoList(result as ToDo);
        },
        child: Icon(
          Icons.add,
          color: Color(0xff6750A4),
        ),
      ),
    );
  }
}
