// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createTodoHash() => r'12aae7a7585a2b94d073fe054706fc927a5022e2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [createTodo].
@ProviderFor(createTodo)
const createTodoProvider = CreateTodoFamily();

/// See also [createTodo].
class CreateTodoFamily extends Family<AsyncValue<void>> {
  /// See also [createTodo].
  const CreateTodoFamily();

  /// See also [createTodo].
  CreateTodoProvider call({
    required String text,
    required DateTime date,
  }) {
    return CreateTodoProvider(
      text: text,
      date: date,
    );
  }

  @override
  CreateTodoProvider getProviderOverride(
    covariant CreateTodoProvider provider,
  ) {
    return call(
      text: provider.text,
      date: provider.date,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createTodoProvider';
}

/// See also [createTodo].
class CreateTodoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createTodo].
  CreateTodoProvider({
    required String text,
    required DateTime date,
  }) : this._internal(
          (ref) => createTodo(
            ref as CreateTodoRef,
            text: text,
            date: date,
          ),
          from: createTodoProvider,
          name: r'createTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createTodoHash,
          dependencies: CreateTodoFamily._dependencies,
          allTransitiveDependencies:
              CreateTodoFamily._allTransitiveDependencies,
          text: text,
          date: date,
        );

  CreateTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.text,
    required this.date,
  }) : super.internal();

  final String text;
  final DateTime date;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateTodoProvider._internal(
        (ref) => create(ref as CreateTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        text: text,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateTodoProvider &&
        other.text == text &&
        other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateTodoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `text` of this provider.
  String get text;

  /// The parameter `date` of this provider.
  DateTime get date;
}

class _CreateTodoProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateTodoRef {
  _CreateTodoProviderElement(super.provider);

  @override
  String get text => (origin as CreateTodoProvider).text;
  @override
  DateTime get date => (origin as CreateTodoProvider).date;
}

String _$completeTodoHash() => r'77187a04cc8dfbd4bf139c889b332080e4e09980';

/// See also [completeTodo].
@ProviderFor(completeTodo)
const completeTodoProvider = CompleteTodoFamily();

/// See also [completeTodo].
class CompleteTodoFamily extends Family<AsyncValue<void>> {
  /// See also [completeTodo].
  const CompleteTodoFamily();

  /// See also [completeTodo].
  CompleteTodoProvider call({
    required int id,
    required bool value,
  }) {
    return CompleteTodoProvider(
      id: id,
      value: value,
    );
  }

  @override
  CompleteTodoProvider getProviderOverride(
    covariant CompleteTodoProvider provider,
  ) {
    return call(
      id: provider.id,
      value: provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'completeTodoProvider';
}

/// See also [completeTodo].
class CompleteTodoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [completeTodo].
  CompleteTodoProvider({
    required int id,
    required bool value,
  }) : this._internal(
          (ref) => completeTodo(
            ref as CompleteTodoRef,
            id: id,
            value: value,
          ),
          from: completeTodoProvider,
          name: r'completeTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$completeTodoHash,
          dependencies: CompleteTodoFamily._dependencies,
          allTransitiveDependencies:
              CompleteTodoFamily._allTransitiveDependencies,
          id: id,
          value: value,
        );

  CompleteTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.value,
  }) : super.internal();

  final int id;
  final bool value;

  @override
  Override overrideWith(
    FutureOr<void> Function(CompleteTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompleteTodoProvider._internal(
        (ref) => create(ref as CompleteTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CompleteTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompleteTodoProvider &&
        other.id == id &&
        other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompleteTodoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;

  /// The parameter `value` of this provider.
  bool get value;
}

class _CompleteTodoProviderElement
    extends AutoDisposeFutureProviderElement<void> with CompleteTodoRef {
  _CompleteTodoProviderElement(super.provider);

  @override
  int get id => (origin as CompleteTodoProvider).id;
  @override
  bool get value => (origin as CompleteTodoProvider).value;
}

String _$todoListHash() => r'6cc644cd7c24e88a6a80f13065fbf9d659e845ae';

abstract class _$TodoList
    extends BuildlessAutoDisposeAsyncNotifier<List<Todo>> {
  late final TodoFilter filter;

  FutureOr<List<Todo>> build({
    required TodoFilter filter,
  });
}

/// See also [TodoList].
@ProviderFor(TodoList)
const todoListProvider = TodoListFamily();

/// See also [TodoList].
class TodoListFamily extends Family<AsyncValue<List<Todo>>> {
  /// See also [TodoList].
  const TodoListFamily();

  /// See also [TodoList].
  TodoListProvider call({
    required TodoFilter filter,
  }) {
    return TodoListProvider(
      filter: filter,
    );
  }

  @override
  TodoListProvider getProviderOverride(
    covariant TodoListProvider provider,
  ) {
    return call(
      filter: provider.filter,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoListProvider';
}

/// See also [TodoList].
class TodoListProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TodoList, List<Todo>> {
  /// See also [TodoList].
  TodoListProvider({
    required TodoFilter filter,
  }) : this._internal(
          () => TodoList()..filter = filter,
          from: todoListProvider,
          name: r'todoListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoListHash,
          dependencies: TodoListFamily._dependencies,
          allTransitiveDependencies: TodoListFamily._allTransitiveDependencies,
          filter: filter,
        );

  TodoListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filter,
  }) : super.internal();

  final TodoFilter filter;

  @override
  FutureOr<List<Todo>> runNotifierBuild(
    covariant TodoList notifier,
  ) {
    return notifier.build(
      filter: filter,
    );
  }

  @override
  Override overrideWith(TodoList Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoListProvider._internal(
        () => create()..filter = filter,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filter: filter,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TodoList, List<Todo>>
      createElement() {
    return _TodoListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoListProvider && other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TodoListRef on AutoDisposeAsyncNotifierProviderRef<List<Todo>> {
  /// The parameter `filter` of this provider.
  TodoFilter get filter;
}

class _TodoListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TodoList, List<Todo>>
    with TodoListRef {
  _TodoListProviderElement(super.provider);

  @override
  TodoFilter get filter => (origin as TodoListProvider).filter;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
