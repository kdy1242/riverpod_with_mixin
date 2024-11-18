import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app/core/enum/todo_filter.dart';
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_app/src/features/todo/domain/usecase/todo_usecase.dart';

part 'todo_provider.g.dart';

@riverpod
Future<void> createTodo(
  CreateTodoRef ref, {
  required String text,
  required DateTime date,
}) async =>
    await ref.watch(createTodoUsecaseProvider(text: text, date: date).future);

@riverpod
class TodoList extends _$TodoList {
  @override
  Future<List<Todo>> build({required TodoFilter filter}) {
    return switch (filter) {
      TodoFilter.today => ref.watch(readTodayTodoUsecaseProvider.future),
      TodoFilter.upcoming => ref.watch(readUpcomingTodoUsecaseProvider.future),
      TodoFilter.all => ref.watch(readAllTodoUsecaseProvider.future),
      TodoFilter.completed =>
        ref.watch(readCompletedTodoUsecaseProvider.future),
    };
  }

  void checkTodo({required int id, required bool value}) {
    if (state.value != null) {
      int index = state.value!.indexWhere((e) => e.id == id);

      state = AsyncData([
        ...state.value!..[index].completedAt = (value ? DateTime.now() : null)
      ]);
    }
  }

  void deleteTodo({required int id}) {
    if (state.value != null) {
      state = AsyncData([...state.value!..removeWhere((e) => e.id == id)]);
    }
  }
}

@riverpod
Future<void> checkTodo(
  CheckTodoRef ref, {
  required int id,
  required bool value,
}) async =>
    await ref.watch(checkTodoUsecaseProvider(id: id, value: value).future);

@riverpod
Future<void> deleteTodo(
  DeleteTodoRef ref, {
  required int id,
}) async =>
    await ref.watch(deleteTodoUsecaseProvider(id: id));
