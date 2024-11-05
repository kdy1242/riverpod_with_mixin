import 'package:flutter/material.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/presentation/page/register_info_page.dart';

mixin class AppEvent {
  void goToRegisterInfoPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const RegisterInfoPage()),
    );
  }
}
