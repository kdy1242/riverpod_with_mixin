import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/presentation/mixin/todo_list_event.dart';
import 'package:todo_app/src/features/todo/presentation/mixin/todo_list_state.dart';
import 'package:todo_app/src/features/todo/presentation/widget/todo_tile.dart';
import 'package:todo_app/src/widget/todo_app_bar.dart';

class TodoListPage extends ConsumerWidget with TodoListState, TodoListEvent {
  const TodoListPage({
    super.key,
    required this.filter,
  });

  final TodoFilter filter;

  static const String route = '/todo_list';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: TodoAppBar(title: filter.title),
      body: todoList(ref: ref, filter: filter).when(
        data: (data) {
          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) => TodoTile(
              todoText: data[index].text,
              date: data[index].date,
              isCompleted: data[index].completedAt != null,
              onCheck: (value) => completeTodo(
                  ref: ref, filter: filter, id: data[index].id, value: value),
              onEdit: () {},
              onDelete: () {},
            ),
            separatorBuilder: (context, index) => const Divider(),
          );
        },
        error: (error, stackTrace) {
          log('error', error: error, stackTrace: stackTrace);
          return Text(error.toString());
        },
        loading: () => const Center(child: CupertinoActivityIndicator()),
      ),
    );
  }
}
