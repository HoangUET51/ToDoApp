import 'package:flutter/material.dart';
import 'package:to_do_list/common/AppColor.dart';
import 'package:to_do_list/common/AppStyle.dart';
import 'package:auto_route/auto_route.dart';
import 'package:to_do_list/router/app_router.gr.gr.dart';

@RoutePage()
class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

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
                              "High",
                              style: TextStyle(
                                  color: AppColor.subItem,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "List item",
                              style: TextStyle(
                                  color: AppColor.titleItem,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Supporting line text lorem ipsum dolor sit amet, consectetur.",
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                context.router.push(const EditTodo());
                              },
                              child: Icon(
                                Icons.create_outlined,
                                color: AppColor.subItem,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 20,
                            ),
                            Icon(
                              Icons.delete,
                              color: AppColor.subItem,
                              size: 20,
                            )
                          ],
                        ))
                  ],
                ));
          },
          itemCount: 10),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.backgroundActionButton,
        onPressed: () {
          context.router.push(const AddTodo());
        },
        child: Icon(
          Icons.add,
          color: Color(0xff6750A4),
        ),
      ),
    );
  }
}
