import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/util/data_indexes.dart';
import 'package:todo_app/core/util/paging_cursor.dart';
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
  Future<List<Todo>> readTodo({
    List<DataIndexes>? dataIndexes,
    TodoPagingCursor? pagingCursor,
    int? limit,
  }) async {
    final res = await _source.readTodo(
      dataIndexes: dataIndexes,
      pagingCursor: pagingCursor,
      limit: limit,
    );
    return res.data.map((e) => e.toEntity()).toList();
  }

  @override
  Future<int> getTodoCount({List<DataIndexes>? dataIndexes}) async {
    final res = await _source.readTodo(dataIndexes: dataIndexes);
    return res.count;
  }

  @override
  Future<void> updateTodo({
    required int id,
    required Map<String, dynamic> data,
  }) async =>
      await _source.updateTodo(id: id, data: data);

  @override
  Future<void> deleteTodo({
    required int id,
  }) async =>
      await _source.deleteTodo(id: id);
}
