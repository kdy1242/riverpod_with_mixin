import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/presentation/mixin/todo_list_state.dart';
import 'package:todo_app/src/features/todo/presentation/widget/todo_tile.dart';
import 'package:todo_app/src/widget/todo_app_bar.dart';

class TodoListPage extends ConsumerWidget with TodoListState {
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
      body: switch (filter) {
        TodoFilter.today => todayTodoList(ref),
        TodoFilter.upcoming => upcomingTodoList(ref),
        TodoFilter.all => allTodoList(ref),
        TodoFilter.completed => completedTodoList(ref),
      }
          .when(
        data: (value) {
          return ListView.separated(
            itemCount: value.length,
            itemBuilder: (context, index) => TodoTile(
              todoText: value[index].text,
              date: value[index].date,
              isCompleted: value[index].completedAt != null,
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
