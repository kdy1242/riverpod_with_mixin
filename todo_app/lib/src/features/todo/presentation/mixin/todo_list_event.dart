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
    await ref.read(checkTodoProvider(id: id, value: value).future);
    ref
        .watch(todoListProvider(filter: filter).notifier)
        .checkTodo(id: id, value: value);
  }
}
