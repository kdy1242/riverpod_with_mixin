import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/user/domain/entity/user_form.dart';
import 'package:riverpod_with_mixin/src/features/user/domain/usecase/user_usecase.dart';

part 'user_provider.g.dart';

@riverpod
Future<void> saveUserInfo(
  SaveUserInfoRef ref, {
  required UserForm form,
}) {
  return ref.watch(saveUserInfoUsecaseProvider(form: form).future);
}

@riverpod
Future<int?> checkPreviousResult(
  CheckPreviousResultRef ref, {
  required UserForm form,
}) async {
  return ref.watch(checkPreviousResultUsecaseProvider(form: form).future);
}
