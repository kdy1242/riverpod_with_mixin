// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saveUserInfoUsecaseHash() =>
    r'67635b0ad61f1067c4e7f4c1411e83e34203076e';

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

/// See also [saveUserInfoUsecase].
@ProviderFor(saveUserInfoUsecase)
const saveUserInfoUsecaseProvider = SaveUserInfoUsecaseFamily();

/// See also [saveUserInfoUsecase].
class SaveUserInfoUsecaseFamily extends Family<AsyncValue<void>> {
  /// See also [saveUserInfoUsecase].
  const SaveUserInfoUsecaseFamily();

  /// See also [saveUserInfoUsecase].
  SaveUserInfoUsecaseProvider call({
    required UserForm form,
  }) {
    return SaveUserInfoUsecaseProvider(
      form: form,
    );
  }

  @override
  SaveUserInfoUsecaseProvider getProviderOverride(
    covariant SaveUserInfoUsecaseProvider provider,
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
  String? get name => r'saveUserInfoUsecaseProvider';
}

/// See also [saveUserInfoUsecase].
class SaveUserInfoUsecaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveUserInfoUsecase].
  SaveUserInfoUsecaseProvider({
    required UserForm form,
  }) : this._internal(
          (ref) => saveUserInfoUsecase(
            ref as SaveUserInfoUsecaseRef,
            form: form,
          ),
          from: saveUserInfoUsecaseProvider,
          name: r'saveUserInfoUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveUserInfoUsecaseHash,
          dependencies: SaveUserInfoUsecaseFamily._dependencies,
          allTransitiveDependencies:
              SaveUserInfoUsecaseFamily._allTransitiveDependencies,
          form: form,
        );

  SaveUserInfoUsecaseProvider._internal(
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
    FutureOr<void> Function(SaveUserInfoUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveUserInfoUsecaseProvider._internal(
        (ref) => create(ref as SaveUserInfoUsecaseRef),
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
    return _SaveUserInfoUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveUserInfoUsecaseProvider && other.form == form;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, form.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveUserInfoUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `form` of this provider.
  UserForm get form;
}

class _SaveUserInfoUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveUserInfoUsecaseRef {
  _SaveUserInfoUsecaseProviderElement(super.provider);

  @override
  UserForm get form => (origin as SaveUserInfoUsecaseProvider).form;
}

String _$checkPreviousResultUsecaseHash() =>
    r'04f37f01e1d61a92268d52c854f9b01fe618d7a2';

/// See also [checkPreviousResultUsecase].
@ProviderFor(checkPreviousResultUsecase)
const checkPreviousResultUsecaseProvider = CheckPreviousResultUsecaseFamily();

/// See also [checkPreviousResultUsecase].
class CheckPreviousResultUsecaseFamily extends Family<AsyncValue<int?>> {
  /// See also [checkPreviousResultUsecase].
  const CheckPreviousResultUsecaseFamily();

  /// See also [checkPreviousResultUsecase].
  CheckPreviousResultUsecaseProvider call({
    required UserForm form,
  }) {
    return CheckPreviousResultUsecaseProvider(
      form: form,
    );
  }

  @override
  CheckPreviousResultUsecaseProvider getProviderOverride(
    covariant CheckPreviousResultUsecaseProvider provider,
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
  String? get name => r'checkPreviousResultUsecaseProvider';
}

/// See also [checkPreviousResultUsecase].
class CheckPreviousResultUsecaseProvider
    extends AutoDisposeFutureProvider<int?> {
  /// See also [checkPreviousResultUsecase].
  CheckPreviousResultUsecaseProvider({
    required UserForm form,
  }) : this._internal(
          (ref) => checkPreviousResultUsecase(
            ref as CheckPreviousResultUsecaseRef,
            form: form,
          ),
          from: checkPreviousResultUsecaseProvider,
          name: r'checkPreviousResultUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkPreviousResultUsecaseHash,
          dependencies: CheckPreviousResultUsecaseFamily._dependencies,
          allTransitiveDependencies:
              CheckPreviousResultUsecaseFamily._allTransitiveDependencies,
          form: form,
        );

  CheckPreviousResultUsecaseProvider._internal(
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
    FutureOr<int?> Function(CheckPreviousResultUsecaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckPreviousResultUsecaseProvider._internal(
        (ref) => create(ref as CheckPreviousResultUsecaseRef),
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
    return _CheckPreviousResultUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckPreviousResultUsecaseProvider && other.form == form;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, form.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CheckPreviousResultUsecaseRef on AutoDisposeFutureProviderRef<int?> {
  /// The parameter `form` of this provider.
  UserForm get form;
}

class _CheckPreviousResultUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<int?>
    with CheckPreviousResultUsecaseRef {
  _CheckPreviousResultUsecaseProviderElement(super.provider);

  @override
  UserForm get form => (origin as CheckPreviousResultUsecaseProvider).form;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
