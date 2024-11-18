import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_app/src/features/todo/domain/usecase/todo_usecase.dart';

part 'todo_provider.g.dart';

@riverpod
Future<void> createTodo(
  CreateTodoRef ref, {
  required String text,
  required DateTime date,
}) =>
    ref.watch(createTodoUsecaseProvider(text: text, date: date).future);

@riverpod
class TodayTodoList extends _$TodayTodoList {
  @override
  Future<List<Todo>> build() => ref.watch(readTodayTodoUsecaseProvider.future);
}

@riverpod
class UpcomingTodoList extends _$UpcomingTodoList {
  @override
  Future<List<Todo>> build() =>
      ref.watch(readUpcomingTodoUsecaseProvider.future);
}

@riverpod
class AllTodoList extends _$AllTodoList {
  @override
  Future<List<Todo>> build() => ref.watch(readAllTodoUsecaseProvider.future);
}

@riverpod
class CompletedTodoList extends _$CompletedTodoList {
  @override
  Future<List<Todo>> build() =>
      ref.watch(readCompletedTodoUsecaseProvider.future);
}

@riverpod
Future<void> completeTodo(
  CompleteTodoRef ref, {
  required String id,
  required bool value,
}) async =>
    await ref.watch(completeTodoUsecaseProvider(id: id, value: value).future);
