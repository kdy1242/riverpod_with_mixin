import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_data_source.g.dart';

@riverpod
UserDataSource userDataSource(UserDataSourceRef ref) => UserDataSourceImpl();

abstract class UserDataSource {
  Future<void> saveUserInfo({
    required String name,
    required int gender,
    required DateTime birth,
    required String email,
    required int resultIndex,
  });
}

class UserDataSourceImpl implements UserDataSource {
  final userTable = Supabase.instance.client.from('users');

  @override
  Future<void> saveUserInfo({
    required String name,
    required int gender,
    required DateTime birth,
    required String email,
    required int resultIndex,
  }) async {
    await userTable.insert({
      'name': name,
      'gender': gender,
      'birth': birth.toIso8601String(),
      'email': email,
      'result_index': resultIndex,
    });
  }
}
