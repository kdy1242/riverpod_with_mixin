import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/util/data_indexes.dart';
import 'package:todo_app/src/features/todo/data/model/todo_response_model.dart';

part 'todo_data_source.g.dart';

@riverpod
TodoDataSource todoDataSource(TodoDataSourceRef ref) => TodoDataSourceImpl();

abstract class TodoDataSource {
  Future<void> createTodo({
    required String text,
    required DateTime date,
  });

  Future<TodoResponseModel> readTodo([List<DataIndexes>? dataIndexes]);

  Future<void> updateTodo({
    required int id,
    required Map<String, dynamic> data,
  });

  Future<void> deleteTodo({
    required int id,
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
  Future<TodoResponseModel> readTodo([List<DataIndexes>? dataIndexes]) async {
    PostgrestFilterBuilder<List<Map<String, dynamic>>> query = _table.select();

    if (dataIndexes != null) {
      for (final index in dataIndexes) {
        query = index.applyToQuery(query);
      }
    }

    final res = await query.order('date', ascending: true).count();

    return TodoResponseModel.fromPostgrestResponse(res);
  }

  @override
  Future<void> updateTodo({
    required int id,
    required Map<String, dynamic> data,
  }) async =>
      await _table.update(data).eq('id', id);

  @override
  Future<void> deleteTodo({required int id}) => _table.delete().eq('id', id);
}
