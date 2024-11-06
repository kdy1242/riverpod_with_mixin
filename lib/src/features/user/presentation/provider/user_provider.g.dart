// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saveUserInfoHash() => r'f7dae0cfaf7545a75104dacd951493e18f28f785';

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
    required String userName,
    required int gender,
    required String birth,
    required String email,
    required int resultIndex,
  }) {
    return SaveUserInfoProvider(
      userName: userName,
      gender: gender,
      birth: birth,
      email: email,
      resultIndex: resultIndex,
    );
  }

  @override
  SaveUserInfoProvider getProviderOverride(
    covariant SaveUserInfoProvider provider,
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
  String? get name => r'saveUserInfoProvider';
}

/// See also [saveUserInfo].
class SaveUserInfoProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveUserInfo].
  SaveUserInfoProvider({
    required String userName,
    required int gender,
    required String birth,
    required String email,
    required int resultIndex,
  }) : this._internal(
          (ref) => saveUserInfo(
            ref as SaveUserInfoRef,
            userName: userName,
            gender: gender,
            birth: birth,
            email: email,
            resultIndex: resultIndex,
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
          userName: userName,
          gender: gender,
          birth: birth,
          email: email,
          resultIndex: resultIndex,
        );

  SaveUserInfoProvider._internal(
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
  final String birth;
  final String email;
  final int resultIndex;

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
    return _SaveUserInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveUserInfoProvider &&
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

mixin SaveUserInfoRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `gender` of this provider.
  int get gender;

  /// The parameter `birth` of this provider.
  String get birth;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `resultIndex` of this provider.
  int get resultIndex;
}

class _SaveUserInfoProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveUserInfoRef {
  _SaveUserInfoProviderElement(super.provider);

  @override
  String get userName => (origin as SaveUserInfoProvider).userName;
  @override
  int get gender => (origin as SaveUserInfoProvider).gender;
  @override
  String get birth => (origin as SaveUserInfoProvider).birth;
  @override
  String get email => (origin as SaveUserInfoProvider).email;
  @override
  int get resultIndex => (origin as SaveUserInfoProvider).resultIndex;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
