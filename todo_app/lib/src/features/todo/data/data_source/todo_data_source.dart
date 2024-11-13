abstract class TodoDataSource {
  Future<void> createTodo({
    required String text,
    required DateTime date,
  });

  Future<void> readTodo();

  Future<void> updateTodo({
    required String id,
    String? text,
    DateTime? date,
  });

  Future<void> deleteTodo({
    required String id,
  });
}
