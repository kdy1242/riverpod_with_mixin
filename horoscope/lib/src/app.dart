import 'package:flutter/material.dart';
import 'package:riverpod_with_mixin/src/mixin/app_event.dart';

class App extends StatelessWidget with AppEvent {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('취업운'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => goToRegisterInfoPage(context),
              child: const Text('테스트 시작'),
            ),
          ],
        ),
      ),
    );
  }
}
