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

String _$readTodoUsecaseHash() => r'191e86bb64f6fad80d71c4c069c2ef0f99ca59f5';

/// See also [readTodoUsecase].
@ProviderFor(readTodoUsecase)
const readTodoUsecaseProvider = ReadTodoUsecaseFamily();

/// See also [readTodoUsecase].
class ReadTodoUsecaseFamily extends Family<AsyncValue<List<Todo>>> {
  /// See also [readTodoUsecase].
  const ReadTodoUsecaseFamily();

  /// See also [readTodoUsecase].
  ReadTodoUsecaseProvider call({
    required TodoFilter filter,
    TodoPagingCursor? pagingCursor,
    int? limit,
  }) {
    return ReadTodoUsecaseProvider(
      filter: filter,
      pagingCursor: pagingCursor,
      limit: limit,
    );
  }

  @override
  ReadTodoUsecaseProvider getProviderOverride(
    covariant ReadTodoUsecaseProvider provider,
  ) {
    return call(
      filter: provider.filter,
      pagingCursor: provider.pagingCursor,
      limit: provider.limit,
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
  String? get name => r'readTodoUsecaseProvider';
}

/// See also [readTodoUsecase].
class ReadTodoUsecaseProvider extends AutoDisposeFutureProvider<List<Todo>> {
  /// See also [readTodoUsecase].
  ReadTodoUsecaseProvider({
    required TodoFilter filter,
    TodoPagingCursor? pagingCursor,
    int? limit,
  }) : this._internal(
          (ref) => readTodoUsecase(
            ref as ReadTodoUsecaseRef,
            filter: filter,
            pagingCursor: pagingCursor,
            limit: limit,
          ),
          from: readTodoUsecaseProvider,
          name: r'readTodoUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$readTodoUsecaseHash,
          dependencies: ReadTodoUsecaseFamily._dependencies,
          allTransitiveDependencies:
              ReadTodoUsecaseFamily._allTransitiveDependencies,
          filter: filter,
          pagingCursor: pagingCursor,
          limit: limit,
        );

  ReadTodoUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filter,
    required this.pagingCursor,
    required this.limit,
  }) : super.internal();

  final TodoFilter filter;
  final TodoPagingCursor? pagingCursor;
  final int? limit;

  @override
  Override overrideWith(
    FutureOr<List<Todo>> Function(ReadTodoUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReadTodoUsecaseProvider._internal(
        (ref) => create(ref as ReadTodoUsecaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filter: filter,
        pagingCursor: pagingCursor,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Todo>> createElement() {
    return _ReadTodoUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReadTodoUsecaseProvider &&
        other.filter == filter &&
        other.pagingCursor == pagingCursor &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);
    hash = _SystemHash.combine(hash, pagingCursor.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReadTodoUsecaseRef on AutoDisposeFutureProviderRef<List<Todo>> {
  /// The parameter `filter` of this provider.
  TodoFilter get filter;

  /// The parameter `pagingCursor` of this provider.
  TodoPagingCursor? get pagingCursor;

  /// The parameter `limit` of this provider.
  int? get limit;
}

class _ReadTodoUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<List<Todo>>
    with ReadTodoUsecaseRef {
  _ReadTodoUsecaseProviderElement(super.provider);

  @override
  TodoFilter get filter => (origin as ReadTodoUsecaseProvider).filter;
  @override
  TodoPagingCursor? get pagingCursor =>
      (origin as ReadTodoUsecaseProvider).pagingCursor;
  @override
  int? get limit => (origin as ReadTodoUsecaseProvider).limit;
}

String _$getTodoCountUsecaseHash() =>
    r'37710508bdbab78a03edf4f6c06a03955a13b916';

/// See also [getTodoCountUsecase].
@ProviderFor(getTodoCountUsecase)
const getTodoCountUsecaseProvider = GetTodoCountUsecaseFamily();

/// See also [getTodoCountUsecase].
class GetTodoCountUsecaseFamily extends Family<AsyncValue<int>> {
  /// See also [getTodoCountUsecase].
  const GetTodoCountUsecaseFamily();

  /// See also [getTodoCountUsecase].
  GetTodoCountUsecaseProvider call({
    required TodoFilter filter,
  }) {
    return GetTodoCountUsecaseProvider(
      filter: filter,
    );
  }

  @override
  GetTodoCountUsecaseProvider getProviderOverride(
    covariant GetTodoCountUsecaseProvider provider,
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
  String? get name => r'getTodoCountUsecaseProvider';
}

/// See also [getTodoCountUsecase].
class GetTodoCountUsecaseProvider extends AutoDisposeFutureProvider<int> {
  /// See also [getTodoCountUsecase].
  GetTodoCountUsecaseProvider({
    required TodoFilter filter,
  }) : this._internal(
          (ref) => getTodoCountUsecase(
            ref as GetTodoCountUsecaseRef,
            filter: filter,
          ),
          from: getTodoCountUsecaseProvider,
          name: r'getTodoCountUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTodoCountUsecaseHash,
          dependencies: GetTodoCountUsecaseFamily._dependencies,
          allTransitiveDependencies:
              GetTodoCountUsecaseFamily._allTransitiveDependencies,
          filter: filter,
        );

  GetTodoCountUsecaseProvider._internal(
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
    FutureOr<int> Function(GetTodoCountUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTodoCountUsecaseProvider._internal(
        (ref) => create(ref as GetTodoCountUsecaseRef),
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
    return _GetTodoCountUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTodoCountUsecaseProvider && other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTodoCountUsecaseRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `filter` of this provider.
  TodoFilter get filter;
}

class _GetTodoCountUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<int> with GetTodoCountUsecaseRef {
  _GetTodoCountUsecaseProviderElement(super.provider);

  @override
  TodoFilter get filter => (origin as GetTodoCountUsecaseProvider).filter;
}

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
