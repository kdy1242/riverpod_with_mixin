import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/core/util/paging_cursor.dart';
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_app/src/features/todo/presentation/mixin/todo_list_event.dart';
import 'package:todo_app/src/features/todo/presentation/mixin/todo_list_state.dart';
import 'package:todo_app/src/features/todo/presentation/widget/todo_tile.dart';
import 'package:todo_app/src/widget/todo_app_bar.dart';

class TodoListPage extends HookConsumerWidget
    with TodoListState, TodoListEvent {
  const TodoListPage({
    super.key,
    required this.filter,
  });

  final TodoFilter filter;

  static const String route = '/todo_list';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      setPagingListener(
        ref: ref,
        listener: (pageKey) =>
            fetchPage(ref: ref, filter: filter, pagingCursor: pageKey),
      );

      return;
    }, []);

    return Scaffold(
      appBar: TodoAppBar(title: filter.title),
      body: PagedListView<TodoPagingCursor?, Todo>.separated(
        pagingController: todoList(ref: ref, filter: filter),
        builderDelegate: PagedChildBuilderDelegate<Todo>(
          itemBuilder: (context, item, index) => TodoTile(
            todoText: item.text,
            date: item.date,
            isCompleted: item.completedAt != null,
            onCheck: (value) => checkTodo(
              ref: ref,
              filter: filter,
              id: item.id,
              value: value,
            ),
            onEdit: () {},
            onDelete: () => deleteTodo(
              ref: ref,
              filter: filter,
              id: item.id,
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(height: 1),
      ),
      // body: todoList(ref: ref, filter: filter).when(
      //   data: (data) {
      //     return RefreshIndicator(
      //       onRefresh: () async => refreshTodoList(ref: ref, filter: filter),
      //       child: ListView.separated(
      //         itemCount: data.length,
      //         itemBuilder: (context, index) => TodoTile(
      //           todoText: data[index].text,
      //           date: data[index].date,
      //           isCompleted: data[index].completedAt != null,
      //           onCheck: (value) => checkTodo(
      //             ref: ref,
      //             filter: filter,
      //             id: data[index].id,
      //             value: value,
      //           ),
      //           onEdit: () {},
      //           onDelete: () => deleteTodo(
      //             ref: ref,
      //             filter: filter,
      //             id: data[index].id,
      //           ),
      //         ),
      //         separatorBuilder: (context, index) => const Divider(height: 1),
      //       ),
      //     );
      //   },
      //   error: (error, stackTrace) {
      //     log('error', error: error, stackTrace: stackTrace);
      //     return Text(error.toString());
      //   },
      //   loading: () => const Center(child: CupertinoActivityIndicator()),
      // ),
    );
  }
}
