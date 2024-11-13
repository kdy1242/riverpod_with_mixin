import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/src/features/todo/domain/usecase/todo_usecase.dart';

part 'todo_provider.g.dart';

@riverpod
Future<void> createTodo(
  CreateTodoRef ref, {
  required String text,
  required DateTime date,
}) =>
    ref.watch(createTodoUsecaseProvider(text: text, date: date).future);
