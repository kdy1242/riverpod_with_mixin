import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/user/data/data_source/user_data_source.dart';
import 'package:riverpod_with_mixin/src/features/user/domain/repository/user_repository.dart';

part 'user_repository_impl.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final dataSource = ref.watch(userDataSourceProvider);
  return UserRepositoryImpl(source: dataSource);
}

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required UserDataSource source}) : _source = source;

  final UserDataSource _source;

  @override
  Future<void> saveUserInfo({
    required String name,
    required int gender,
    required DateTime birth,
    required String email,
    required int resultIndex,
  }) async =>
      await _source.saveUserInfo(
        name: name,
        gender: gender,
        birth: birth,
        email: email,
        resultIndex: resultIndex,
      );
}
