import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/user/data/repository/user_repository_impl.dart';

part 'user_usecase.g.dart';

@riverpod
Future<void> saveUserInfoUsecase(
  SaveUserInfoUsecaseRef ref, {
  required String userName,
  required int gender,
  required DateTime birth,
  required String email,
  required int resultIndex,
}) {
  final repository = ref.watch(userRepositoryProvider);
  return repository.saveUserInfo(
    name: userName,
    gender: gender,
    birth: birth,
    email: email,
    resultIndex: resultIndex,
  );
}

@riverpod
Future<int?> checkPreviousResultUsecase(
  CheckPreviousResultUsecaseRef ref, {
  required String userName,
  required int gender,
  required DateTime birth,
}) {
  final repository = ref.watch(userRepositoryProvider);
  return repository.checkPreviousResult(
    name: userName,
    gender: gender,
    birth: birth,
  );
}
