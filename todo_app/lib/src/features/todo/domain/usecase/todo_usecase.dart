import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
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
Future<List<Todo>> readTodayTodoUsecase(ReadTodayTodoUsecaseRef ref) {
  final repository = ref.watch(todoRepositoryProvider);
  return repository.readTodo(TodoFilter.today);
}

@riverpod
Future<List<Todo>> readUpcomingTodoUsecase(ReadUpcomingTodoUsecaseRef ref) {
  final repository = ref.watch(todoRepositoryProvider);
  return repository.readTodo(TodoFilter.upcoming);
}

@riverpod
Future<List<Todo>> readAllTodoUsecase(ReadAllTodoUsecaseRef ref) {
  final repository = ref.watch(todoRepositoryProvider);
  return repository.readTodo(TodoFilter.all);
}

@riverpod
Future<List<Todo>> readCompletedTodoUsecase(ReadCompletedTodoUsecaseRef ref) {
  final repository = ref.watch(todoRepositoryProvider);
  return repository.readTodo(TodoFilter.completed);
}

@riverpod
Future<void> completeTodoUsecase(
  CompleteTodoUsecaseRef ref, {
  required int id,
  required bool value,
}) {
  final repository = ref.watch(todoRepositoryProvider);
  return repository.updateTodo(id: id, data: {
    'completedAt': value ? DateTime.now() : null,
  });
}
