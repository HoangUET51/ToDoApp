import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/view/ToDoItem.dart';

import '../../common/AppColor.dart';
import '../../common/AppStyle.dart';
import '../../common/Selected.dart';

@RoutePage()
class EditTodo extends StatefulWidget {
  const EditTodo({Key? key, required this.todo}) : super(key: key);

  final ToDo todo;

  @override
  State<EditTodo> createState() => _EditTodoState();
}

class _EditTodoState extends State<EditTodo> {
  final priorityController = TextEditingController();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void initState() {
    priorityController.text = widget.todo.priority as String;
    titleController.text = widget.todo.title as String;
    descriptionController.text = widget.todo.description as String;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<Selected>> dropDowns =
        <DropdownMenuEntry<Selected>>[];

    for (final Selected select in Selected.values) {
      dropDowns.add(
        DropdownMenuEntry<Selected>(value: select, label: select.label),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Edit Todo", style: AppStyle.titleAppBar),
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
            setState(() {
              context.router.pop(ToDo(
                  id: widget.todo.id,
                  title: titleController.text,
                  description: descriptionController.text,
                  priority: priorityController.text));
            });
          },
          child: const Center(
            child: Text(
              'Save',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor.titleBar,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              child: DropdownMenu(
                controller: priorityController,
                width: 360,
                initialSelection: Selected.hight,
                label: const Text('Priority'),
                dropdownMenuEntries: dropDowns,
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.titleItem),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            TextField(
              controller: titleController,
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
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            )
          ],
        ),
      ),
    );
  }
}
