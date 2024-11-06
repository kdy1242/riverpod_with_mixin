// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horoscope_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getResultHash() => r'dfdf272cb07431e83706d9895d525e9558dd484c';

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

/// See also [getResult].
@ProviderFor(getResult)
const getResultProvider = GetResultFamily();

/// See also [getResult].
class GetResultFamily extends Family<AsyncValue<HoroscopeResult>> {
  /// See also [getResult].
  const GetResultFamily();

  /// See also [getResult].
  GetResultProvider call({
    required int index,
  }) {
    return GetResultProvider(
      index: index,
    );
  }

  @override
  GetResultProvider getProviderOverride(
    covariant GetResultProvider provider,
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
  String? get name => r'getResultProvider';
}

/// See also [getResult].
class GetResultProvider extends AutoDisposeFutureProvider<HoroscopeResult> {
  /// See also [getResult].
  GetResultProvider({
    required int index,
  }) : this._internal(
          (ref) => getResult(
            ref as GetResultRef,
            index: index,
          ),
          from: getResultProvider,
          name: r'getResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getResultHash,
          dependencies: GetResultFamily._dependencies,
          allTransitiveDependencies: GetResultFamily._allTransitiveDependencies,
          index: index,
        );

  GetResultProvider._internal(
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
    FutureOr<HoroscopeResult> Function(GetResultRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetResultProvider._internal(
        (ref) => create(ref as GetResultRef),
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
    return _GetResultProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetResultProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetResultRef on AutoDisposeFutureProviderRef<HoroscopeResult> {
  /// The parameter `index` of this provider.
  int get index;
}

class _GetResultProviderElement
    extends AutoDisposeFutureProviderElement<HoroscopeResult>
    with GetResultRef {
  _GetResultProviderElement(super.provider);

  @override
  int get index => (origin as GetResultProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
