import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
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
    ref.onDispose(() {
      ref.invalidate(readTodoUsecaseProvider(filter: filter));
    });

    return ref.watch(readTodoUsecaseProvider(filter: filter).future);
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
class TodoPaging extends _$TodoPaging {
  @override
  Raw<PagingController<int?, Todo>> build() {
    final PagingController<int?, Todo> controller =
        PagingController(firstPageKey: null);

    ref.onDispose(() {
      controller.dispose();
    });

    return controller;
  }

  void checkTodo({required int id, required bool value}) {
    if (state.itemList != null) {
      int index = state.itemList!.indexWhere((e) => e.id == id);

      state.itemList = [
        ...state.itemList!
          ..[index].completedAt = (value ? DateTime.now() : null)
      ];
    }
  }

  void deleteTodo({required int id}) {
    if (state.itemList != null) {
      state.itemList = [...state.itemList!..removeWhere((e) => e.id == id)];
    }
  }
}

@riverpod
Future<int> todoCount(TodoCountRef ref, {required TodoFilter filter}) {
  ref.onDispose(() {
    ref.invalidate(getTodoCountUsecaseProvider(filter: filter));
  });

  return ref.watch(getTodoCountUsecaseProvider(filter: filter).future);
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
