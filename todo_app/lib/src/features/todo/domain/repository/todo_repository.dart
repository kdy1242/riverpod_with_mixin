import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';

abstract class TodoRepository {
  Future<void> createTodo({
    required String text,
    required DateTime date,
  });

  Future<List<Todo>> readTodo();

  Future<void> updateTodo({
    required String id,
    String? text,
    DateTime? date,
  });

  Future<void> deleteTodo({
    required String id,
  });
}