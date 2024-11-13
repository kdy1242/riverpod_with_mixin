// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saveUserInfoHash() => r'21b4ad8646d53adc79bd10276ef8d462b1b53e83';

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

/// See also [saveUserInfo].
@ProviderFor(saveUserInfo)
const saveUserInfoProvider = SaveUserInfoFamily();

/// See also [saveUserInfo].
class SaveUserInfoFamily extends Family<AsyncValue<void>> {
  /// See also [saveUserInfo].
  const SaveUserInfoFamily();

  /// See also [saveUserInfo].
  SaveUserInfoProvider call({
    required UserForm form,
  }) {
    return SaveUserInfoProvider(
      form: form,
    );
  }

  @override
  SaveUserInfoProvider getProviderOverride(
    covariant SaveUserInfoProvider provider,
  ) {
    return call(
      form: provider.form,
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
  String? get name => r'saveUserInfoProvider';
}

/// See also [saveUserInfo].
class SaveUserInfoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveUserInfo].
  SaveUserInfoProvider({
    required UserForm form,
  }) : this._internal(
          (ref) => saveUserInfo(
            ref as SaveUserInfoRef,
            form: form,
          ),
          from: saveUserInfoProvider,
          name: r'saveUserInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveUserInfoHash,
          dependencies: SaveUserInfoFamily._dependencies,
          allTransitiveDependencies:
              SaveUserInfoFamily._allTransitiveDependencies,
          form: form,
        );

  SaveUserInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.form,
  }) : super.internal();

  final UserForm form;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveUserInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveUserInfoProvider._internal(
        (ref) => create(ref as SaveUserInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        form: form,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveUserInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveUserInfoProvider && other.form == form;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, form.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveUserInfoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `form` of this provider.
  UserForm get form;
}

class _SaveUserInfoProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveUserInfoRef {
  _SaveUserInfoProviderElement(super.provider);

  @override
  UserForm get form => (origin as SaveUserInfoProvider).form;
}

String _$checkPreviousResultHash() =>
    r'2399934e5b81e9278491f7ec394b80f1e556dd9c';

/// See also [checkPreviousResult].
@ProviderFor(checkPreviousResult)
const checkPreviousResultProvider = CheckPreviousResultFamily();

/// See also [checkPreviousResult].
class CheckPreviousResultFamily extends Family<AsyncValue<int?>> {
  /// See also [checkPreviousResult].
  const CheckPreviousResultFamily();

  /// See also [checkPreviousResult].
  CheckPreviousResultProvider call({
    required UserForm form,
  }) {
    return CheckPreviousResultProvider(
      form: form,
    );
  }

  @override
  CheckPreviousResultProvider getProviderOverride(
    covariant CheckPreviousResultProvider provider,
  ) {
    return call(
      form: provider.form,
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
  String? get name => r'checkPreviousResultProvider';
}

/// See also [checkPreviousResult].
class CheckPreviousResultProvider extends AutoDisposeFutureProvider<int?> {
  /// See also [checkPreviousResult].
  CheckPreviousResultProvider({
    required UserForm form,
  }) : this._internal(
          (ref) => checkPreviousResult(
            ref as CheckPreviousResultRef,
            form: form,
          ),
          from: checkPreviousResultProvider,
          name: r'checkPreviousResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkPreviousResultHash,
          dependencies: CheckPreviousResultFamily._dependencies,
          allTransitiveDependencies:
              CheckPreviousResultFamily._allTransitiveDependencies,
          form: form,
        );

  CheckPreviousResultProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.form,
  }) : super.internal();

  final UserForm form;

  @override
  Override overrideWith(
    FutureOr<int?> Function(CheckPreviousResultRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckPreviousResultProvider._internal(
        (ref) => create(ref as CheckPreviousResultRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        form: form,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int?> createElement() {
    return _CheckPreviousResultProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckPreviousResultProvider && other.form == form;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, form.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CheckPreviousResultRef on AutoDisposeFutureProviderRef<int?> {
  /// The parameter `form` of this provider.
  UserForm get form;
}

class _CheckPreviousResultProviderElement
    extends AutoDisposeFutureProviderElement<int?> with CheckPreviousResultRef {
  _CheckPreviousResultProviderElement(super.provider);

  @override
  UserForm get form => (origin as CheckPreviousResultProvider).form;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
