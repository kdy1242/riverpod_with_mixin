import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/src/features/todo/presentation/provider/todo_provider.dart';

mixin class TodoListState {
  AsyncValue todayTodoList(WidgetRef ref) => ref.watch(todayTodoProvider);
}
