import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/src/features/todo/data/repository/todo_repository_impl.dart';

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
