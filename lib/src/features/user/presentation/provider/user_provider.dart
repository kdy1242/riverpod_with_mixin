import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/user/domain/usecase/user_usecase.dart';

part 'user_provider.g.dart';

@riverpod
Future<void> saveUserInfo(
  SaveUserInfoRef ref, {
  required String userName,
  required int gender,
  required String birth,
  required String email,
  required int resultIndex,
}) {
  return ref.watch(
    saveUserInfoUsecaseProvider(
      userName: userName,
      gender: gender,
      birth: DateTime.parse(birth),
      email: email,
      resultIndex: resultIndex,
    ).future,
  );
}

@riverpod
Future<int?> checkPreviousResult(
  CheckPreviousResultRef ref, {
  required String userName,
  required int gender,
  required DateTime birth,
}) async {
  return ref.watch(checkPreviousResultUsecaseProvider(
    userName: userName,
    gender: gender,
    birth: birth,
  ).future);
}
