// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createTodoUsecaseHash() => r'994d5fe14e1c2ac809168b007bc006c646f91705';

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

/// See also [createTodoUsecase].
@ProviderFor(createTodoUsecase)
const createTodoUsecaseProvider = CreateTodoUsecaseFamily();

/// See also [createTodoUsecase].
class CreateTodoUsecaseFamily extends Family<AsyncValue<void>> {
  /// See also [createTodoUsecase].
  const CreateTodoUsecaseFamily();

  /// See also [createTodoUsecase].
  CreateTodoUsecaseProvider call({
    required String text,
    required DateTime date,
  }) {
    return CreateTodoUsecaseProvider(
      text: text,
      date: date,
    );
  }

  @override
  CreateTodoUsecaseProvider getProviderOverride(
    covariant CreateTodoUsecaseProvider provider,
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
  String? get name => r'createTodoUsecaseProvider';
}

/// See also [createTodoUsecase].
class CreateTodoUsecaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createTodoUsecase].
  CreateTodoUsecaseProvider({
    required String text,
    required DateTime date,
  }) : this._internal(
          (ref) => createTodoUsecase(
            ref as CreateTodoUsecaseRef,
            text: text,
            date: date,
          ),
          from: createTodoUsecaseProvider,
          name: r'createTodoUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createTodoUsecaseHash,
          dependencies: CreateTodoUsecaseFamily._dependencies,
          allTransitiveDependencies:
              CreateTodoUsecaseFamily._allTransitiveDependencies,
          text: text,
          date: date,
        );

  CreateTodoUsecaseProvider._internal(
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
    FutureOr<void> Function(CreateTodoUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateTodoUsecaseProvider._internal(
        (ref) => create(ref as CreateTodoUsecaseRef),
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
    return _CreateTodoUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateTodoUsecaseProvider &&
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

mixin CreateTodoUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `text` of this provider.
  String get text;

  /// The parameter `date` of this provider.
  DateTime get date;
}

class _CreateTodoUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateTodoUsecaseRef {
  _CreateTodoUsecaseProviderElement(super.provider);

  @override
  String get text => (origin as CreateTodoUsecaseProvider).text;
  @override
  DateTime get date => (origin as CreateTodoUsecaseProvider).date;
}

String _$readTodayTodoUsecaseHash() =>
    r'544c9317eeb7081aee6d0cf6b704793659ee708b';

/// See also [readTodayTodoUsecase].
@ProviderFor(readTodayTodoUsecase)
final readTodayTodoUsecaseProvider =
    AutoDisposeFutureProvider<List<Todo>>.internal(
  readTodayTodoUsecase,
  name: r'readTodayTodoUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$readTodayTodoUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReadTodayTodoUsecaseRef = AutoDisposeFutureProviderRef<List<Todo>>;
String _$readUpcomingTodoUsecaseHash() =>
    r'ce63d22fc535c4c14f76a89b524c492aa0f8f5a9';

/// See also [readUpcomingTodoUsecase].
@ProviderFor(readUpcomingTodoUsecase)
final readUpcomingTodoUsecaseProvider =
    AutoDisposeFutureProvider<List<Todo>>.internal(
  readUpcomingTodoUsecase,
  name: r'readUpcomingTodoUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$readUpcomingTodoUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReadUpcomingTodoUsecaseRef = AutoDisposeFutureProviderRef<List<Todo>>;
String _$readAllTodoUsecaseHash() =>
    r'6e74b8300c56706c40d334575370528fa5be841e';

/// See also [readAllTodoUsecase].
@ProviderFor(readAllTodoUsecase)
final readAllTodoUsecaseProvider =
    AutoDisposeFutureProvider<List<Todo>>.internal(
  readAllTodoUsecase,
  name: r'readAllTodoUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$readAllTodoUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReadAllTodoUsecaseRef = AutoDisposeFutureProviderRef<List<Todo>>;
String _$readCompletedTodoUsecaseHash() =>
    r'6a1e1b5b27e3078b5f19046c2d853dfc64693d1e';

/// See also [readCompletedTodoUsecase].
@ProviderFor(readCompletedTodoUsecase)
final readCompletedTodoUsecaseProvider =
    AutoDisposeFutureProvider<List<Todo>>.internal(
  readCompletedTodoUsecase,
  name: r'readCompletedTodoUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$readCompletedTodoUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReadCompletedTodoUsecaseRef = AutoDisposeFutureProviderRef<List<Todo>>;
String _$checkTodoUsecaseHash() => r'fe15bac38ed875da4ae81400ae115fce52dbec0f';

/// See also [checkTodoUsecase].
@ProviderFor(checkTodoUsecase)
const checkTodoUsecaseProvider = CheckTodoUsecaseFamily();

/// See also [checkTodoUsecase].
class CheckTodoUsecaseFamily extends Family<AsyncValue<void>> {
  /// See also [checkTodoUsecase].
  const CheckTodoUsecaseFamily();

  /// See also [checkTodoUsecase].
  CheckTodoUsecaseProvider call({
    required int id,
    required bool value,
  }) {
    return CheckTodoUsecaseProvider(
      id: id,
      value: value,
    );
  }

  @override
  CheckTodoUsecaseProvider getProviderOverride(
    covariant CheckTodoUsecaseProvider provider,
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
  String? get name => r'checkTodoUsecaseProvider';
}

/// See also [checkTodoUsecase].
class CheckTodoUsecaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [checkTodoUsecase].
  CheckTodoUsecaseProvider({
    required int id,
    required bool value,
  }) : this._internal(
          (ref) => checkTodoUsecase(
            ref as CheckTodoUsecaseRef,
            id: id,
            value: value,
          ),
          from: checkTodoUsecaseProvider,
          name: r'checkTodoUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkTodoUsecaseHash,
          dependencies: CheckTodoUsecaseFamily._dependencies,
          allTransitiveDependencies:
              CheckTodoUsecaseFamily._allTransitiveDependencies,
          id: id,
          value: value,
        );

  CheckTodoUsecaseProvider._internal(
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
    FutureOr<void> Function(CheckTodoUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckTodoUsecaseProvider._internal(
        (ref) => create(ref as CheckTodoUsecaseRef),
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
    return _CheckTodoUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckTodoUsecaseProvider &&
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

mixin CheckTodoUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;

  /// The parameter `value` of this provider.
  bool get value;
}

class _CheckTodoUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with CheckTodoUsecaseRef {
  _CheckTodoUsecaseProviderElement(super.provider);

  @override
  int get id => (origin as CheckTodoUsecaseProvider).id;
  @override
  bool get value => (origin as CheckTodoUsecaseProvider).value;
}

String _$deleteTodoUsecaseHash() => r'b3aca2029206e104402b5ad43fd61c8eb8577b85';

/// See also [deleteTodoUsecase].
@ProviderFor(deleteTodoUsecase)
const deleteTodoUsecaseProvider = DeleteTodoUsecaseFamily();

/// See also [deleteTodoUsecase].
class DeleteTodoUsecaseFamily extends Family<AsyncValue<void>> {
  /// See also [deleteTodoUsecase].
  const DeleteTodoUsecaseFamily();

  /// See also [deleteTodoUsecase].
  DeleteTodoUsecaseProvider call({
    required int id,
  }) {
    return DeleteTodoUsecaseProvider(
      id: id,
    );
  }

  @override
  DeleteTodoUsecaseProvider getProviderOverride(
    covariant DeleteTodoUsecaseProvider provider,
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
  String? get name => r'deleteTodoUsecaseProvider';
}

/// See also [deleteTodoUsecase].
class DeleteTodoUsecaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteTodoUsecase].
  DeleteTodoUsecaseProvider({
    required int id,
  }) : this._internal(
          (ref) => deleteTodoUsecase(
            ref as DeleteTodoUsecaseRef,
            id: id,
          ),
          from: deleteTodoUsecaseProvider,
          name: r'deleteTodoUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteTodoUsecaseHash,
          dependencies: DeleteTodoUsecaseFamily._dependencies,
          allTransitiveDependencies:
              DeleteTodoUsecaseFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteTodoUsecaseProvider._internal(
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
    FutureOr<void> Function(DeleteTodoUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteTodoUsecaseProvider._internal(
        (ref) => create(ref as DeleteTodoUsecaseRef),
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
    return _DeleteTodoUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteTodoUsecaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteTodoUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DeleteTodoUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteTodoUsecaseRef {
  _DeleteTodoUsecaseProviderElement(super.provider);

  @override
  int get id => (origin as DeleteTodoUsecaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
