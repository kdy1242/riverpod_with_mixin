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
