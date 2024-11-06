import 'package:riverpod_with_mixin/src/features/user/data/model/user_form_model.dart';

class UserForm {
  String name;
  int gender;
  String birth;
  String email;
  int resultIndex;

  UserForm({
    required this.name,
    required this.gender,
    required this.birth,
    required this.email,
    required this.resultIndex,
  });
}

extension UserFormExtension on UserForm {
  UserFormModel toModel() {
    return UserFormModel(
      name: name,
      gender: gender,
      birth: DateTime.parse(birth),
      email: email,
      resultIndex: resultIndex,
    );
  }
}
