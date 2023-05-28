import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../common/AppColor.dart';
import '../common/AppStyle.dart';
import '../common/Selected.dart';

@RoutePage()
class EditTodo extends StatefulWidget {
  const EditTodo({Key? key}) : super(key: key);

  @override
  State<EditTodo> createState() => _EditTodoState();
}

class _EditTodoState extends State<EditTodo> {
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
          onPressed: () {},
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
