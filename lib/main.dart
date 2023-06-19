import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_controller.dart';
import 'package:to_do_list/view/add_edit_task/add_edit_todo_state.dart';
import 'package:to_do_list/view/todo_list/todo_list_controller.dart';
import 'package:to_do_list/view/todo_list/todo_list_state.dart';
import 'router/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          StateNotifierProvider<TodoController, ToDoListState>(
            create: (_) => TodoController(),
          ),
          StateNotifierProvider<AddEditTaskController, AddEditTaskState>(
            create: (_) => AddEditTaskController(),
          )
        ],
        child: MaterialApp.router(
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        ));
  }
}
