// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:to_do_list/view/add_edit_task/add_edit_todo_page.dart' as _i1;
import 'package:to_do_list/view/todo_list/todo_list_page.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AddEditTodo.name: (routeData) {
      final args = routeData.argsAs<AddEditTodoArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddEditTodo(
          key: args.key,
          isEditMode: args.isEditMode,
        ),
      );
    },
    TodoList.name: (routeData) {
      final args =
          routeData.argsAs<TodoListArgs>(orElse: () => const TodoListArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.TodoList(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AddEditTodo]
class AddEditTodo extends _i3.PageRouteInfo<AddEditTodoArgs> {
  AddEditTodo({
    _i4.Key? key,
    required dynamic isEditMode,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          AddEditTodo.name,
          args: AddEditTodoArgs(
            key: key,
            isEditMode: isEditMode,
          ),
          initialChildren: children,
        );

  static const String name = 'AddEditTodo';

  static const _i3.PageInfo<AddEditTodoArgs> page =
      _i3.PageInfo<AddEditTodoArgs>(name);
}

class AddEditTodoArgs {
  const AddEditTodoArgs({
    this.key,
    required this.isEditMode,
  });

  final _i4.Key? key;

  final dynamic isEditMode;

  @override
  String toString() {
    return 'AddEditTodoArgs{key: $key, isEditMode: $isEditMode}';
  }
}

/// generated route for
/// [_i2.TodoList]
class TodoList extends _i3.PageRouteInfo<TodoListArgs> {
  TodoList({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          TodoList.name,
          args: TodoListArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TodoList';

  static const _i3.PageInfo<TodoListArgs> page =
      _i3.PageInfo<TodoListArgs>(name);
}

class TodoListArgs {
  const TodoListArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'TodoListArgs{key: $key}';
  }
}
