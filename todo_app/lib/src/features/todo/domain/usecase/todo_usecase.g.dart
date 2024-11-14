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
    r'428d426bf4d754b3bf4b456085c36e68166f956f';

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
    r'c0ba8840cbdb4f43f8e5ab68bd8291fdabfe1cdf';

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
    r'c74f22e0bade3fdb257abce8c6612c4de9cffb62';

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
    r'da62f3a98ebdee00f14f7552249d47552eb425ef';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
