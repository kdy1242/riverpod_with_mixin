abstract class UserRepository {
  Future<void> saveUserInfo({
    required String name,
    required int gender,
    required DateTime birth,
    required String email,
    required int resultIndex,
  });

  Future<int?> checkPreviousResult({
    required String name,
    required int gender,
    required DateTime birth,
  });
}
