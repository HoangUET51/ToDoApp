part of 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen,Page")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: TodoList.page, path: "/", initial: true),
        AutoRoute(page: AddTodo.page, path: "/add"),
        AutoRoute(page: EditTodo.page, path: "/edit")
      ];
}
