import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
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
Future<List<Todo>> readTodoUsecase(
  ReadTodoUsecaseRef ref, {
  required TodoFilter filter,
}) async {
  final repository = ref.watch(todoRepositoryProvider);

  final today = DateTime.now();
  final startOfToday = DateTime(today.year, today.month, today.day);
  final endOfToday = DateTime(today.year, today.month, today.day, 23, 59, 59);

  return await repository.readTodo(switch (filter) {
    TodoFilter.today => [
        DataGreaterThanOrEqual(
          key: 'date',
          value: startOfToday.toIso8601String(),
        ),
        DataLessThanOrEqual(
          key: 'date',
          value: endOfToday.toIso8601String(),
        ),
      ],
    TodoFilter.upcoming => [
        DataGreaterThan(
          key: 'date',
          value: endOfToday.toIso8601String(),
        ),
      ],
    TodoFilter.completed => [
        const DataNot(key: 'completedAt', operator: 'is', value: null),
      ],
    TodoFilter.all => [],
  });
}

@riverpod
Future<int> getTodoCountUsecase(
  GetTodoCountUsecaseRef ref, {
  required TodoFilter filter,
}) async {
  final repository = ref.watch(todoRepositoryProvider);

  final today = DateTime.now();
  final startOfToday = DateTime(today.year, today.month, today.day);
  final endOfToday = DateTime(today.year, today.month, today.day, 23, 59, 59);

  return await repository.getTodoCount(switch (filter) {
    TodoFilter.today => [
        DataGreaterThanOrEqual(
          key: 'date',
          value: startOfToday.toIso8601String(),
        ),
        DataLessThanOrEqual(
          key: 'date',
          value: endOfToday.toIso8601String(),
        ),
      ],
    TodoFilter.upcoming => [
        DataGreaterThan(
          key: 'date',
          value: endOfToday.toIso8601String(),
        ),
      ],
    TodoFilter.completed => [
        const DataNot(key: 'completedAt', operator: 'is', value: null),
      ],
    TodoFilter.all => [],
  });
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
