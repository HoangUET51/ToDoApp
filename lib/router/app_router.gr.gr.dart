// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:to_do_list/pages/AddTodo.dart' as _i1;
import 'package:to_do_list/pages/EditTodo.dart' as _i2;
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
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EditTodo(),
      );
    },
    TodoList.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.TodoList(),
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
class EditTodo extends _i4.PageRouteInfo<void> {
  const EditTodo({List<_i4.PageRouteInfo>? children})
      : super(
          EditTodo.name,
          initialChildren: children,
        );

  static const String name = 'EditTodo';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.TodoList]
class TodoList extends _i4.PageRouteInfo<void> {
  const TodoList({List<_i4.PageRouteInfo>? children})
      : super(
          TodoList.name,
          initialChildren: children,
        );

  static const String name = 'TodoList';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
