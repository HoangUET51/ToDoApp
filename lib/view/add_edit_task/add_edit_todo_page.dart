import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/model/todo_entity.dart';

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
      body: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  child: DropdownButton<Priority>(
                    padding: EdgeInsets.all(10),
                    hint: Text("Priority"),
                    onChanged: (Priority? value) {
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
                  onChanged: (text) {
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
                  onChanged: (text) {
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                      labelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          )
      );
  }
}
