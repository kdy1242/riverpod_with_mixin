import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/core/route/app_routes.dart';
import 'package:todo_app/src/features/todo/presentation/provider/todo_provider.dart';
import 'package:todo_app/src/features/todo/presentation/widget/register_todo_bottom_sheet.dart';

mixin class TodoHomeEvent {
  void routeToTodoListPage(BuildContext context, TodoFilter filter) {
    context.push(AppRoutes.todoList, extra: filter);
  }

  void showRegisterTodoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => const RegisterTodoBottomSheet(),
    );
  }

  void onTapAddButton({
    required WidgetRef ref,
    required BuildContext context,
    required String text,
    required DateTime date,
  }) {
    ref.read(createTodoProvider(text: text, date: date).future).then((_) {
      context.pop();
    });
  }

  void refresh(WidgetRef ref) {
    ref.invalidate(todoCountProvider);
  }
}
