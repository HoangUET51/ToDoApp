import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/model/todo_entity.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_controller.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_state.dart';

import '../../common/AppColor.dart';
import '../../common/AppStyle.dart';

@RoutePage()
class AddEditTodo extends StatelessWidget {
  const AddEditTodo({Key? key, required this.isEditMode}) : super(key: key);

  final isEditMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isEditMode
            ? Text('Edit Todo', style: AppStyle.titleAppBar)
            : Text('Add Todo', style: AppStyle.titleAppBar),
        backgroundColor: AppColor.backgroundButton,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 40,
        margin: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.backgroundButton),
          onPressed: () {
            final todoEntity =
                context.read<AddEditTaskController>().onAddBtnClicked();
            context.router.pop(todoEntity);
          },
          child: Center(
              child: !isEditMode
                  ? Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.titleBar,
                      ),
                    )
                  : Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.titleBar,
                      ),
                    )),
        ),
      ),
      body: Consumer<AddEditTaskState>(
        builder: (context, state, _) {
          return Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  child: DropdownButton<Priority>(
                    value: state.todoEntity?.priority,
                    padding: EdgeInsets.all(10),
                    hint: Text("Priority"),
                    onChanged: (Priority? value) {
                      if (value == null) {
                        return;
                      }

                      context
                          .read<AddEditTaskController>()
                          .onPriorityChanged(value);
                    },
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.titleItem),
                    items: Priority.values
                        .map<DropdownMenuItem<Priority>>((Priority value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                TextFormField(
                  initialValue: state.todoEntity?.title,
                  onChanged: (text) {
                    context.read<AddEditTaskController>().onTitleUpdated(text);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                    labelStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                TextFormField(
                  initialValue: state.todoEntity?.description,
                  onChanged: (text) {
                    context
                        .read<AddEditTaskController>()
                        .onDescriptionUpdated(text);
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                      labelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
