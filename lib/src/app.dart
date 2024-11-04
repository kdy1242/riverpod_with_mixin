import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_with_mixin/src/features/presentation/provider/horoscope_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(getResultProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('취업운'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                final res = await ref.read(getResultProvider.future);
                print(res.description);
              },
              child: const Text('테스트 시작'),
            ),
          ],
        ),
      ),
    );
  }
}
