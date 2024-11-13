// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horoscope_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getResultUsecaseHash() => r'd9d7f4187cdc7783f8353aec758702a76e7606be';

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

/// See also [getResultUsecase].
@ProviderFor(getResultUsecase)
const getResultUsecaseProvider = GetResultUsecaseFamily();

/// See also [getResultUsecase].
class GetResultUsecaseFamily extends Family<AsyncValue<HoroscopeResult>> {
  /// See also [getResultUsecase].
  const GetResultUsecaseFamily();

  /// See also [getResultUsecase].
  GetResultUsecaseProvider call({
    required int index,
  }) {
    return GetResultUsecaseProvider(
      index: index,
    );
  }

  @override
  GetResultUsecaseProvider getProviderOverride(
    covariant GetResultUsecaseProvider provider,
  ) {
    return call(
      index: provider.index,
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
  String? get name => r'getResultUsecaseProvider';
}

/// See also [getResultUsecase].
class GetResultUsecaseProvider
    extends AutoDisposeFutureProvider<HoroscopeResult> {
  /// See also [getResultUsecase].
  GetResultUsecaseProvider({
    required int index,
  }) : this._internal(
          (ref) => getResultUsecase(
            ref as GetResultUsecaseRef,
            index: index,
          ),
          from: getResultUsecaseProvider,
          name: r'getResultUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getResultUsecaseHash,
          dependencies: GetResultUsecaseFamily._dependencies,
          allTransitiveDependencies:
              GetResultUsecaseFamily._allTransitiveDependencies,
          index: index,
        );

  GetResultUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Override overrideWith(
    FutureOr<HoroscopeResult> Function(GetResultUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetResultUsecaseProvider._internal(
        (ref) => create(ref as GetResultUsecaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<HoroscopeResult> createElement() {
    return _GetResultUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetResultUsecaseProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetResultUsecaseRef on AutoDisposeFutureProviderRef<HoroscopeResult> {
  /// The parameter `index` of this provider.
  int get index;
}

class _GetResultUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<HoroscopeResult>
    with GetResultUsecaseRef {
  _GetResultUsecaseProviderElement(super.provider);

  @override
  int get index => (origin as GetResultUsecaseProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
