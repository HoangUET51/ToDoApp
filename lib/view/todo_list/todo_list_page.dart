import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/common/AppColor.dart';
import 'package:to_do_list/common/AppStyle.dart';
import 'package:auto_route/auto_route.dart';
import 'package:to_do_list/model/todo_entity.dart';
import 'package:to_do_list/repository/todo_repository.dart';
import 'package:to_do_list/router/app_router.gr.gr.dart';
import 'package:to_do_list/view/todo_list/todo_list_bloc.dart';
import 'package:to_do_list/view/todo_list/todo_list_state.dart';

@RoutePage()
class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo List App", style: AppStyle.titleAppBar),
        backgroundColor: AppColor.backgroundButton,
      ),
      body: BlocSelector<TodoListBloc,ToDoListState,List<TodoEntity>>(
        selector: (state) => state.todoList,
        builder: (context,todosListState) {
          return ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                    padding: EdgeInsets.only(
                        left: 16, right: 16, top: 12, bottom: 12),
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
                                  todosListState[index].priority.toString(),
                                  style: TextStyle(
                                      color: AppColor.subItem,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  todosListState[index].title.toString(),
                                  style: TextStyle(
                                      color: AppColor.titleItem,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  todosListState[index].description.toString(),
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
                                    final result = await context.router
                                        .push(AddEditTodo(isEditMode: true));
                                    todosListState[index] = result as TodoEntity;
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    Icons.create_outlined,
                                    color: AppColor.subItem,
                                    size: 20,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {});
                                    todosListState
                                        .remove(todosListState[index]);
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
              itemCount: todosListState.length);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.backgroundActionButton,
        onPressed: () async {
          final result =
              await context.router.push(AddEditTodo(isEditMode: false));
          todoLists.add(result as TodoEntity);
          setState(() {});
        },
        child: Icon(
          Icons.add,
          color: Color(0xff6750A4),
        ),
      ),
    );
  }
}
