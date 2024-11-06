import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/user/data/model/user_form_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_data_source.g.dart';

@riverpod
UserDataSource userDataSource(UserDataSourceRef ref) => UserDataSourceImpl();

abstract class UserDataSource {
  Future<void> saveUserInfo(UserFormModel form);

  Future<int?> checkPreviousResult({
    required String name,
    required int gender,
    required DateTime birth,
  });
}

class UserDataSourceImpl implements UserDataSource {
  final userTable = Supabase.instance.client.from('users');

  @override
  Future<void> saveUserInfo(UserFormModel form) async {
    await userTable.insert({
      'name': form.name,
      'gender': form.gender,
      'birth': form.birth,
      'email': form.email,
      'result_index': form.resultIndex,
    });
  }

  @override
  Future<int?> checkPreviousResult({
    required String name,
    required int gender,
    required DateTime birth,
  }) async {
    final res = await userTable
        .select()
        .eq('name', name)
        .eq('gender', gender)
        .eq('birth', birth.toIso8601String());

    if (res.isNotEmpty) {
      return res.first['result_index'];
    }
    return null;
  }
}
