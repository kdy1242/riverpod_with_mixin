import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/data/model/todo_model.dart';

part 'todo_data_source.g.dart';

@riverpod
TodoDataSource todoDataSource(TodoDataSourceRef ref) => TodoDataSourceImpl();

abstract class TodoDataSource {
  Future<void> createTodo({
    required String text,
    required DateTime date,
  });

  Future<List<TodoModel>> readTodo(TodoFilter filter);

  Future<void> updateTodo({
    required String id,
    required Map<String, dynamic> data,
  });

  Future<void> deleteTodo({
    required String id,
  });
}

class TodoDataSourceImpl implements TodoDataSource {
  final _table = Supabase.instance.client.from('todo');

  @override
  Future<void> createTodo({
    required String text,
    required DateTime date,
  }) async {
    await _table.insert({
      'text': text,
      'date': date.toIso8601String(),
    });
  }

  @override
  Future<List<TodoModel>> readTodo(TodoFilter filter) async {
    final today = DateTime.now();
    final startOfToday = DateTime(today.year, today.month, today.day);
    final endOfToday = DateTime(today.year, today.month, today.day, 23, 59, 59);

    PostgrestFilterBuilder<List<Map<String, dynamic>>> query = _table.select();

    if (filter == TodoFilter.today) {
      query = query
          .gte('date', startOfToday.toIso8601String())
          .lte('date', endOfToday.toIso8601String());
    } else if (filter == TodoFilter.upcoming) {
      query = query.gt('date', endOfToday.toIso8601String());
    } else if (filter == TodoFilter.completed) {
      query = query.not('completedAt', 'is', null);
    }

    final result = await query.order('date', ascending: true);

    return result.map((e) => TodoModel.fromMap(e)).toList();
  }

  @override
  Future<void> updateTodo({
    required String id,
    required Map<String, dynamic> data,
  }) async =>
      await _table.update(data);

  @override
  Future<void> deleteTodo({required String id}) => _table.delete().eq('id', id);
}
