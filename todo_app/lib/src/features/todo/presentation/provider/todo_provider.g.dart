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

String _$completeTodoHash() => r'087fa1b4d850be22dadc2e1d061986e4de7c4b8d';

/// See also [completeTodo].
@ProviderFor(completeTodo)
const completeTodoProvider = CompleteTodoFamily();

/// See also [completeTodo].
class CompleteTodoFamily extends Family<AsyncValue<void>> {
  /// See also [completeTodo].
  const CompleteTodoFamily();

  /// See also [completeTodo].
  CompleteTodoProvider call({
    required String id,
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
    required String id,
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

  final String id;
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
  String get id;

  /// The parameter `value` of this provider.
  bool get value;
}

class _CompleteTodoProviderElement
    extends AutoDisposeFutureProviderElement<void> with CompleteTodoRef {
  _CompleteTodoProviderElement(super.provider);

  @override
  String get id => (origin as CompleteTodoProvider).id;
  @override
  bool get value => (origin as CompleteTodoProvider).value;
}

String _$todayTodoListHash() => r'6edb5493ad6fcc3f2b8674bc48f7581d47d12d2a';

/// See also [TodayTodoList].
@ProviderFor(TodayTodoList)
final todayTodoListProvider =
    AutoDisposeAsyncNotifierProvider<TodayTodoList, List<Todo>>.internal(
  TodayTodoList.new,
  name: r'todayTodoListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todayTodoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodayTodoList = AutoDisposeAsyncNotifier<List<Todo>>;
String _$upcomingTodoListHash() => r'ae4b8ec599dc9fdd03da656940c121c07e73a29f';

/// See also [UpcomingTodoList].
@ProviderFor(UpcomingTodoList)
final upcomingTodoListProvider =
    AutoDisposeAsyncNotifierProvider<UpcomingTodoList, List<Todo>>.internal(
  UpcomingTodoList.new,
  name: r'upcomingTodoListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$upcomingTodoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UpcomingTodoList = AutoDisposeAsyncNotifier<List<Todo>>;
String _$allTodoListHash() => r'276c7fc195e48d9036841ee3051cb4f6e37f4cc5';

/// See also [AllTodoList].
@ProviderFor(AllTodoList)
final allTodoListProvider =
    AutoDisposeAsyncNotifierProvider<AllTodoList, List<Todo>>.internal(
  AllTodoList.new,
  name: r'allTodoListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allTodoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AllTodoList = AutoDisposeAsyncNotifier<List<Todo>>;
String _$completedTodoListHash() => r'a532df9ab6374d101071a0e303d2229d970b8a77';

/// See also [CompletedTodoList].
@ProviderFor(CompletedTodoList)
final completedTodoListProvider =
    AutoDisposeAsyncNotifierProvider<CompletedTodoList, List<Todo>>.internal(
  CompletedTodoList.new,
  name: r'completedTodoListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$completedTodoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CompletedTodoList = AutoDisposeAsyncNotifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
