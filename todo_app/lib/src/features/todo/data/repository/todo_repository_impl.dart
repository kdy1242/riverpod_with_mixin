import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/data/data_source/todo_data_source.dart';
import 'package:todo_app/src/features/todo/data/model/todo_model.dart';
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_app/src/features/todo/domain/repository/todo_repository.dart';

part 'todo_repository_impl.g.dart';

@riverpod
TodoRepository todoRepository(TodoRepositoryRef ref) {
  final dataSource = ref.watch(todoDataSourceProvider);
  return TodoRepositoryImpl(source: dataSource);
}

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl({required TodoDataSource source}) : _source = source;

  final TodoDataSource _source;

  @override
  Future<void> createTodo({
    required String text,
    required DateTime date,
  }) async =>
      await _source.createTodo(text: text, date: date);

  @override
  Future<List<Todo>> readTodo(TodoFilter filter) async =>
      (await _source.readTodo(filter)).map((e) => e.toEntity()).toList();

  @override
  Future<void> updateTodo({
    required String id,
    required Map<String, dynamic> data,
  }) async =>
      await _source.updateTodo(id: id, data: data);

  @override
  Future<void> deleteTodo({
    required String id,
  }) async =>
      await _source.deleteTodo(id: id);
}
