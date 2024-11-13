import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/user/data/repository/user_repository_impl.dart';
import 'package:riverpod_with_mixin/src/features/user/domain/entity/user_form.dart';

part 'user_usecase.g.dart';

@riverpod
Future<void> saveUserInfoUsecase(
  SaveUserInfoUsecaseRef ref, {
  required UserForm form,
}) {
  final repository = ref.watch(userRepositoryProvider);
  return repository.saveUserInfo(form);
}

@riverpod
Future<int?> checkPreviousResultUsecase(
  CheckPreviousResultUsecaseRef ref, {
  required UserForm form,
}) {
  final repository = ref.watch(userRepositoryProvider);
  return repository.checkPreviousResult(form);
}
