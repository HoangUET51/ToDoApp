// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:to_do_list/pages/AddTodo.dart' as _i1;
import 'package:to_do_list/pages/EditTodo.dart' as _i2;
import 'package:to_do_list/pages/ToDoItem.dart' as _i6;
import 'package:to_do_list/pages/TodoList.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AddTodo.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddTodo(),
      );
    },
    EditTodo.name: (routeData) {
      final args = routeData.argsAs<EditTodoArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.EditTodo(
          key: args.key,
          todo: args.todo,
        ),
      );
    },
    TodoList.name: (routeData) {
      final args =
          routeData.argsAs<TodoListArgs>(orElse: () => const TodoListArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.TodoList(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTodo]
class AddTodo extends _i4.PageRouteInfo<void> {
  const AddTodo({List<_i4.PageRouteInfo>? children})
      : super(
          AddTodo.name,
          initialChildren: children,
        );

  static const String name = 'AddTodo';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EditTodo]
class EditTodo extends _i4.PageRouteInfo<EditTodoArgs> {
  EditTodo({
    _i5.Key? key,
    required _i6.ToDo todo,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          EditTodo.name,
          args: EditTodoArgs(
            key: key,
            todo: todo,
          ),
          initialChildren: children,
        );

  static const String name = 'EditTodo';

  static const _i4.PageInfo<EditTodoArgs> page =
      _i4.PageInfo<EditTodoArgs>(name);
}

class EditTodoArgs {
  const EditTodoArgs({
    this.key,
    required this.todo,
  });

  final _i5.Key? key;

  final _i6.ToDo todo;

  @override
  String toString() {
    return 'EditTodoArgs{key: $key, todo: $todo}';
  }
}

/// generated route for
/// [_i3.TodoList]
class TodoList extends _i4.PageRouteInfo<TodoListArgs> {
  TodoList({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          TodoList.name,
          args: TodoListArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TodoList';

  static const _i4.PageInfo<TodoListArgs> page =
      _i4.PageInfo<TodoListArgs>(name);
}

class TodoListArgs {
  const TodoListArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'TodoListArgs{key: $key}';
  }
}
