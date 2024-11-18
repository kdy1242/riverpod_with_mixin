import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/presentation/provider/todo_provider.dart';

mixin class TodoListEvent {
  void completeTodo({
    required WidgetRef ref,
    required TodoFilter filter,
    required int id,
    required bool value,
  }) =>
      ref
          .watch(todoListProvider(filter: filter).notifier)
          .completeTodo(id: id, value: value);
}
