// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createTodoHash() => r'25ce0f91f39705ed0f9d6cfbe5cf5173f9faaaea';

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

String _$readTodoHash() => r'0f86697779ae4154043717f5d3b686118f46da35';

/// See also [readTodo].
@ProviderFor(readTodo)
const readTodoProvider = ReadTodoFamily();

/// See also [readTodo].
class ReadTodoFamily extends Family<AsyncValue<List<Todo>>> {
  /// See also [readTodo].
  const ReadTodoFamily();

  /// See also [readTodo].
  ReadTodoProvider call({
    required TodoFilter filter,
    TodoPagingCursor? pagingCursor,
  }) {
    return ReadTodoProvider(
      filter: filter,
      pagingCursor: pagingCursor,
    );
  }

  @override
  ReadTodoProvider getProviderOverride(
    covariant ReadTodoProvider provider,
  ) {
    return call(
      filter: provider.filter,
      pagingCursor: provider.pagingCursor,
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
  String? get name => r'readTodoProvider';
}

/// See also [readTodo].
class ReadTodoProvider extends AutoDisposeFutureProvider<List<Todo>> {
  /// See also [readTodo].
  ReadTodoProvider({
    required TodoFilter filter,
    TodoPagingCursor? pagingCursor,
  }) : this._internal(
          (ref) => readTodo(
            ref as ReadTodoRef,
            filter: filter,
            pagingCursor: pagingCursor,
          ),
          from: readTodoProvider,
          name: r'readTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$readTodoHash,
          dependencies: ReadTodoFamily._dependencies,
          allTransitiveDependencies: ReadTodoFamily._allTransitiveDependencies,
          filter: filter,
          pagingCursor: pagingCursor,
        );

  ReadTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filter,
    required this.pagingCursor,
  }) : super.internal();

  final TodoFilter filter;
  final TodoPagingCursor? pagingCursor;

  @override
  Override overrideWith(
    FutureOr<List<Todo>> Function(ReadTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReadTodoProvider._internal(
        (ref) => create(ref as ReadTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filter: filter,
        pagingCursor: pagingCursor,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Todo>> createElement() {
    return _ReadTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReadTodoProvider &&
        other.filter == filter &&
        other.pagingCursor == pagingCursor;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);
    hash = _SystemHash.combine(hash, pagingCursor.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReadTodoRef on AutoDisposeFutureProviderRef<List<Todo>> {
  /// The parameter `filter` of this provider.
  TodoFilter get filter;

  /// The parameter `pagingCursor` of this provider.
  TodoPagingCursor? get pagingCursor;
}

class _ReadTodoProviderElement
    extends AutoDisposeFutureProviderElement<List<Todo>> with ReadTodoRef {
  _ReadTodoProviderElement(super.provider);

  @override
  TodoFilter get filter => (origin as ReadTodoProvider).filter;
  @override
  TodoPagingCursor? get pagingCursor =>
      (origin as ReadTodoProvider).pagingCursor;
}

String _$todoCountHash() => r'c06c5609c329d57dfe6fd05b10559ef5d016fc1e';

/// See also [todoCount].
@ProviderFor(todoCount)
const todoCountProvider = TodoCountFamily();

/// See also [todoCount].
class TodoCountFamily extends Family<AsyncValue<int>> {
  /// See also [todoCount].
  const TodoCountFamily();

  /// See also [todoCount].
  TodoCountProvider call({
    required TodoFilter filter,
  }) {
    return TodoCountProvider(
      filter: filter,
    );
  }

  @override
  TodoCountProvider getProviderOverride(
    covariant TodoCountProvider provider,
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
  String? get name => r'todoCountProvider';
}

/// See also [todoCount].
class TodoCountProvider extends AutoDisposeFutureProvider<int> {
  /// See also [todoCount].
  TodoCountProvider({
    required TodoFilter filter,
  }) : this._internal(
          (ref) => todoCount(
            ref as TodoCountRef,
            filter: filter,
          ),
          from: todoCountProvider,
          name: r'todoCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoCountHash,
          dependencies: TodoCountFamily._dependencies,
          allTransitiveDependencies: TodoCountFamily._allTransitiveDependencies,
          filter: filter,
        );

  TodoCountProvider._internal(
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
  Override overrideWith(
    FutureOr<int> Function(TodoCountRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TodoCountProvider._internal(
        (ref) => create(ref as TodoCountRef),
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
  AutoDisposeFutureProviderElement<int> createElement() {
    return _TodoCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoCountProvider && other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TodoCountRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `filter` of this provider.
  TodoFilter get filter;
}

class _TodoCountProviderElement extends AutoDisposeFutureProviderElement<int>
    with TodoCountRef {
  _TodoCountProviderElement(super.provider);

  @override
  TodoFilter get filter => (origin as TodoCountProvider).filter;
}

String _$checkTodoHash() => r'1bd1efa2f955e575ce4ea345c0d6b8437a3040d4';

/// See also [checkTodo].
@ProviderFor(checkTodo)
const checkTodoProvider = CheckTodoFamily();

/// See also [checkTodo].
class CheckTodoFamily extends Family<AsyncValue<void>> {
  /// See also [checkTodo].
  const CheckTodoFamily();

  /// See also [checkTodo].
  CheckTodoProvider call({
    required int id,
    required bool value,
  }) {
    return CheckTodoProvider(
      id: id,
      value: value,
    );
  }

  @override
  CheckTodoProvider getProviderOverride(
    covariant CheckTodoProvider provider,
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
  String? get name => r'checkTodoProvider';
}

/// See also [checkTodo].
class CheckTodoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [checkTodo].
  CheckTodoProvider({
    required int id,
    required bool value,
  }) : this._internal(
          (ref) => checkTodo(
            ref as CheckTodoRef,
            id: id,
            value: value,
          ),
          from: checkTodoProvider,
          name: r'checkTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkTodoHash,
          dependencies: CheckTodoFamily._dependencies,
          allTransitiveDependencies: CheckTodoFamily._allTransitiveDependencies,
          id: id,
          value: value,
        );

  CheckTodoProvider._internal(
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
    FutureOr<void> Function(CheckTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckTodoProvider._internal(
        (ref) => create(ref as CheckTodoRef),
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
    return _CheckTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckTodoProvider && other.id == id && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CheckTodoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;

  /// The parameter `value` of this provider.
  bool get value;
}

class _CheckTodoProviderElement extends AutoDisposeFutureProviderElement<void>
    with CheckTodoRef {
  _CheckTodoProviderElement(super.provider);

  @override
  int get id => (origin as CheckTodoProvider).id;
  @override
  bool get value => (origin as CheckTodoProvider).value;
}

String _$deleteTodoHash() => r'c9fbbb170f9252c00e0ced966ef4df96dd378180';

/// See also [deleteTodo].
@ProviderFor(deleteTodo)
const deleteTodoProvider = DeleteTodoFamily();

/// See also [deleteTodo].
class DeleteTodoFamily extends Family<AsyncValue<void>> {
  /// See also [deleteTodo].
  const DeleteTodoFamily();

  /// See also [deleteTodo].
  DeleteTodoProvider call({
    required int id,
  }) {
    return DeleteTodoProvider(
      id: id,
    );
  }

  @override
  DeleteTodoProvider getProviderOverride(
    covariant DeleteTodoProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'deleteTodoProvider';
}

/// See also [deleteTodo].
class DeleteTodoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteTodo].
  DeleteTodoProvider({
    required int id,
  }) : this._internal(
          (ref) => deleteTodo(
            ref as DeleteTodoRef,
            id: id,
          ),
          from: deleteTodoProvider,
          name: r'deleteTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteTodoHash,
          dependencies: DeleteTodoFamily._dependencies,
          allTransitiveDependencies:
              DeleteTodoFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteTodoProvider._internal(
        (ref) => create(ref as DeleteTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteTodoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteTodoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DeleteTodoProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteTodoRef {
  _DeleteTodoProviderElement(super.provider);

  @override
  int get id => (origin as DeleteTodoProvider).id;
}

String _$todoPagingHash() => r'e32a551ce0cb7088e6226c98697de724e50372c3';

/// See also [TodoPaging].
@ProviderFor(TodoPaging)
final todoPagingProvider = AutoDisposeNotifierProvider<TodoPaging,
    Raw<PagingController<TodoPagingCursor?, Todo>>>.internal(
  TodoPaging.new,
  name: r'todoPagingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todoPagingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoPaging
    = AutoDisposeNotifier<Raw<PagingController<TodoPagingCursor?, Todo>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
