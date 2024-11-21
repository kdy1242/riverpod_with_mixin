import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/core/util/page_size.dart';
import 'package:todo_app/core/util/paging_cursor.dart';
import 'package:todo_app/src/features/todo/presentation/provider/todo_provider.dart';

mixin class TodoListEvent {
  Future<void> checkTodo({
    required WidgetRef ref,
    required TodoFilter filter,
    required int id,
    required bool value,
  }) async {
    await ref.read(checkTodoProvider(id: id, value: value).future).then((_) {
      ref.read(todoPagingProvider.notifier).checkTodo(id: id, value: value);

      ref.invalidate(todoCountProvider(filter: TodoFilter.completed));
    });
  }

  Future<void> deleteTodo({
    required WidgetRef ref,
    required TodoFilter filter,
    required int id,
  }) async {
    await ref.read(deleteTodoProvider(id: id).future).then((_) {
      ref.read(todoPagingProvider.notifier).deleteTodo(id: id);

      ref.invalidate(todoCountProvider);
    });
  }

  void refreshTodoList({required WidgetRef ref, required TodoFilter filter}) {
    ref.invalidate(todoPagingProvider);
  }

  Future<void> fetchPage({
    required WidgetRef ref,
    required TodoFilter filter,
    TodoPagingCursor? pagingCursor,
  }) async {
    final pagingController = ref.read(todoPagingProvider);
    try {
      final newItems = await ref.read(
        readTodoProvider(
          filter: filter,
          pagingCursor: pagingCursor,
        ).future,
      );

      if (newItems.length < PageSize.todo) {
        pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = TodoPagingCursor(
          id: newItems.last.id,
          date: newItems.last.date,
        );
        pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      log('error', error: error);
      pagingController.error = error;
    }
  }

  void setPagingListener({
    required WidgetRef ref,
    required Function(TodoPagingCursor?) listener,
  }) {
    ref.read(todoPagingProvider).addPageRequestListener(listener);
  }
}
