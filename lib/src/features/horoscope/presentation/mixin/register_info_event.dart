import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/presentation/page/result_page.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/presentation/provider/horoscope_provider.dart';
import 'package:riverpod_with_mixin/src/features/user/domain/entity/user_form.dart';
import 'package:riverpod_with_mixin/src/features/user/presentation/provider/user_provider.dart';

mixin class RegisterInfoEvent {
  void setGender(ValueNotifier<int> currentValue, int selectedValue) {
    if (currentValue.value != selectedValue) {
      currentValue.value = selectedValue;
    }
  }

  Future<void> goToResultPage(
    WidgetRef ref,
    BuildContext context, {
    required String userName,
    required int gender,
    required String birth,
    required String email,
  }) async {
    final randomIndex = Random().nextInt(9);

    await ref.watch(saveUserInfoProvider(
      form: UserForm(
        name: userName,
        gender: gender,
        birth: birth,
        email: email,
        resultIndex: randomIndex,
      ),
    ).future);

    final result =
        await ref.watch(getResultProvider(index: randomIndex).future);

    if (!context.mounted) return;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ResultPage(name: userName, result: result),
    ));
  }
}
