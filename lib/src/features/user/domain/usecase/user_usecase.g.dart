// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saveUserInfoUsecaseHash() =>
    r'cf4e1da518d1d5db02ccc5e7782ea7de8007f17f';

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
    required String userName,
    required int gender,
    required DateTime birth,
    required String email,
    required int resultIndex,
  }) {
    return SaveUserInfoUsecaseProvider(
      userName: userName,
      gender: gender,
      birth: birth,
      email: email,
      resultIndex: resultIndex,
    );
  }

  @override
  SaveUserInfoUsecaseProvider getProviderOverride(
    covariant SaveUserInfoUsecaseProvider provider,
  ) {
    return call(
      userName: provider.userName,
      gender: provider.gender,
      birth: provider.birth,
      email: provider.email,
      resultIndex: provider.resultIndex,
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
    required String userName,
    required int gender,
    required DateTime birth,
    required String email,
    required int resultIndex,
  }) : this._internal(
          (ref) => saveUserInfoUsecase(
            ref as SaveUserInfoUsecaseRef,
            userName: userName,
            gender: gender,
            birth: birth,
            email: email,
            resultIndex: resultIndex,
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
          userName: userName,
          gender: gender,
          birth: birth,
          email: email,
          resultIndex: resultIndex,
        );

  SaveUserInfoUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
    required this.gender,
    required this.birth,
    required this.email,
    required this.resultIndex,
  }) : super.internal();

  final String userName;
  final int gender;
  final DateTime birth;
  final String email;
  final int resultIndex;

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
        userName: userName,
        gender: gender,
        birth: birth,
        email: email,
        resultIndex: resultIndex,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveUserInfoUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveUserInfoUsecaseProvider &&
        other.userName == userName &&
        other.gender == gender &&
        other.birth == birth &&
        other.email == email &&
        other.resultIndex == resultIndex;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, gender.hashCode);
    hash = _SystemHash.combine(hash, birth.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, resultIndex.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveUserInfoUsecaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `gender` of this provider.
  int get gender;

  /// The parameter `birth` of this provider.
  DateTime get birth;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `resultIndex` of this provider.
  int get resultIndex;
}

class _SaveUserInfoUsecaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveUserInfoUsecaseRef {
  _SaveUserInfoUsecaseProviderElement(super.provider);

  @override
  String get userName => (origin as SaveUserInfoUsecaseProvider).userName;
  @override
  int get gender => (origin as SaveUserInfoUsecaseProvider).gender;
  @override
  DateTime get birth => (origin as SaveUserInfoUsecaseProvider).birth;
  @override
  String get email => (origin as SaveUserInfoUsecaseProvider).email;
  @override
  int get resultIndex => (origin as SaveUserInfoUsecaseProvider).resultIndex;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
