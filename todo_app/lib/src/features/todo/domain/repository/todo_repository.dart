import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';

abstract class TodoRepository {
  Future<void> createTodo({
    required String text,
    required DateTime date,
  });

  Future<List<Todo>> readTodo(TodoFilter filter);

  Future<void> updateTodo({
    required int id,
    required Map<String, dynamic> data,
  });

  Future<void> deleteTodo({
    required int id,
  });
}
