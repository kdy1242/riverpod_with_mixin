import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_app/src/features/todo/presentation/provider/todo_provider.dart';

mixin class TodoListState {
  AsyncValue<List<Todo>> todayTodoList(WidgetRef ref) =>
      ref.watch(todayTodoListProvider);

  AsyncValue<List<Todo>> upcomingTodoList(WidgetRef ref) =>
      ref.watch(upcomingTodoListProvider);

  AsyncValue<List<Todo>> allTodoList(WidgetRef ref) =>
      ref.watch(allTodoListProvider);

  AsyncValue<List<Todo>> completedTodoList(WidgetRef ref) =>
      ref.watch(completedTodoListProvider);
}
