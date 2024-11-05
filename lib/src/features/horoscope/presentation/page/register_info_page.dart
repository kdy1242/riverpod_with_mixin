import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/presentation/mixin/register_info_event.dart';

class RegisterInfoPage extends HookConsumerWidget with RegisterInfoEvent {
  const RegisterInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('정보 입력'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text('이름'),
              Expanded(
                child: TextField(
                  controller: nameController,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('test'),
          )
        ],
      ),
    );
  }
}
