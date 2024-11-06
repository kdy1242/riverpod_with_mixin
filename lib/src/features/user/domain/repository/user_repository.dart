import 'package:riverpod_with_mixin/src/features/user/domain/entity/user_form.dart';

abstract class UserRepository {
  Future<void> saveUserInfo(UserForm form);

  Future<int?> checkPreviousResult({
    required String name,
    required int gender,
    required DateTime birth,
  });
}
