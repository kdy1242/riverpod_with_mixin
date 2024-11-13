import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/src/features/todo/data/model/todo_model.dart';

part 'todo_data_source.g.dart';

@riverpod
TodoDataSource todoDataSource(TodoDataSourceRef ref) => TodoDataSourceImpl();

abstract class TodoDataSource {
  Future<void> createTodo({
    required String text,
    required DateTime date,
  });

  Future<List<TodoModel>> readTodo();

  Future<void> updateTodo({
    required String id,
    String? text,
    DateTime? date,
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
  Future<List<TodoModel>> readTodo() {
    // TODO: implement readTodo
    throw UnimplementedError();
  }

  @override
  Future<void> updateTodo({required String id, String? text, DateTime? date}) {
    // TODO: implement updateTodo
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTodo({required String id}) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }
}
