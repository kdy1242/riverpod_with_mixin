import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/core/util/paging_cursor.dart';
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_app/src/features/todo/presentation/provider/todo_provider.dart';

mixin class TodoListState {
  PagingController<TodoPagingCursor?, Todo> todoList({
    required WidgetRef ref,
    required TodoFilter filter,
  }) =>
      ref.watch(todoPagingProvider);
}
