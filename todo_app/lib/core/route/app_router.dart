import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/core/route/app_routes.dart';
import 'package:todo_app/src/features/todo/presentation/page/todo_home_page.dart';
import 'package:todo_app/src/features/todo/presentation/page/todo_list_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: AppRoutes.todoHome,
    routes: [
      GoRoute(
        path: AppRoutes.todoHome,
        builder: (context, state) => const TodoHomePage(),
      ),
      GoRoute(
        path: AppRoutes.todoList,
        builder: (context, state) =>
            TodoListPage(filter: state.extra as TodoFilter),
      ),
    ],
  );
}
