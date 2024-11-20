import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/presentation/provider/todo_provider.dart';

mixin class TodoListEvent {
  Future<void> checkTodo({
    required WidgetRef ref,
    required TodoFilter filter,
    required int id,
    required bool value,
  }) async {
    await ref.read(checkTodoProvider(id: id, value: value).future).then((_) {
      ref
          .read(todoListProvider(filter: filter).notifier)
          .checkTodo(id: id, value: value);

      ref.invalidate(todoCountProvider(filter: TodoFilter.completed));
    });
  }

  Future<void> deleteTodo({
    required WidgetRef ref,
    required TodoFilter filter,
    required int id,
  }) async {
    await ref.read(deleteTodoProvider(id: id).future).then((_) {
      ref.read(todoListProvider(filter: filter).notifier).deleteTodo(id: id);

      ref.invalidate(todoCountProvider);
    });
  }

  void refreshTodoList({required WidgetRef ref, required TodoFilter filter}) {
    ref.invalidate(todoListProvider(filter: filter));
  }

  Future<void> fetchPage(DateTime? lastItemDate) async {}
}
