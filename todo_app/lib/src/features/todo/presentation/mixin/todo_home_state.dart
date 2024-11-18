import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/presentation/provider/todo_provider.dart';

mixin class TodoHomeState {
  AsyncValue<int> todoCount(WidgetRef ref, TodoFilter filter) =>
      ref.watch(todoCountProvider(filter: filter));
}
