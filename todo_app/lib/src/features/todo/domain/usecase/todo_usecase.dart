import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/util/data_indexes.dart';
import 'package:todo_app/src/features/todo/data/repository/todo_repository_impl.dart';
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';

part 'todo_usecase.g.dart';

@riverpod
Future<void> createTodoUsecase(
  CreateTodoUsecaseRef ref, {
  required String text,
  required DateTime date,
}) {
  final repository = ref.watch(todoRepositoryProvider);
  return repository.createTodo(text: text, date: date);
}

@riverpod
Future<List<Todo>> readTodayTodoUsecase(ReadTodayTodoUsecaseRef ref) async {
  final repository = ref.watch(todoRepositoryProvider);

  final today = DateTime.now();
  final startOfToday = DateTime(today.year, today.month, today.day);
  final endOfToday = DateTime(today.year, today.month, today.day, 23, 59, 59);

  return await repository.readTodo([
    DataGreaterThanOrEqual(key: 'date', value: startOfToday.toIso8601String()),
    DataLessThanOrEqual(key: 'date', value: endOfToday.toIso8601String())
  ]);
}

@riverpod
Future<List<Todo>> readUpcomingTodoUsecase(
  ReadUpcomingTodoUsecaseRef ref,
) async {
  final repository = ref.watch(todoRepositoryProvider);

  final today = DateTime.now();
  final endOfToday = DateTime(today.year, today.month, today.day, 23, 59, 59);

  return await repository.readTodo([
    DataGreaterThan(key: 'date', value: endOfToday.toIso8601String()),
  ]);
}

@riverpod
Future<List<Todo>> readAllTodoUsecase(ReadAllTodoUsecaseRef ref) async {
  final repository = ref.watch(todoRepositoryProvider);
  return await repository.readTodo();
}

@riverpod
Future<List<Todo>> readCompletedTodoUsecase(
  ReadCompletedTodoUsecaseRef ref,
) async {
  final repository = ref.watch(todoRepositoryProvider);
  return await repository.readTodo([
    const DataNot(key: 'completedAt', operator: 'is', value: null),
  ]);
}

@riverpod
Future<void> checkTodoUsecase(
  CheckTodoUsecaseRef ref, {
  required int id,
  required bool value,
}) async {
  final repository = ref.watch(todoRepositoryProvider);
  return await repository.updateTodo(id: id, data: {
    'completedAt': value ? DateTime.now().toIso8601String() : null,
  });
}

@riverpod
Future<void> deleteTodoUsecase(
  DeleteTodoUsecaseRef ref, {
  required int id,
}) async {
  final repository = ref.watch(todoRepositoryProvider);
  return await repository.deleteTodo(id: id);
}
