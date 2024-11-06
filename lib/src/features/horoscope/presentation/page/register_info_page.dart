import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/presentation/mixin/register_info_event.dart';

class RegisterInfoPage extends HookConsumerWidget with RegisterInfoEvent {
  const RegisterInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final currentGender = useState(0);
    final birthController = useTextEditingController();
    final emailController = useTextEditingController();

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
          Row(
            children: [
              const Text('성별'),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        currentGender.value == 0 ? Colors.cyan : Colors.white,
                  ),
                  onPressed: () => setGender(currentGender, 0),
                  child: const Text('남'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        currentGender.value == 1 ? Colors.cyan : Colors.white,
                  ),
                  onPressed: () => setGender(currentGender, 1),
                  child: const Text('여'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('생년월일'),
              Expanded(
                child: TextField(
                  controller: birthController,
                  decoration: const InputDecoration(
                    hintText: 'ex) 19990101',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('이메일'),
              Expanded(
                child: TextField(
                  controller: emailController,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () => goToResultPage(
              ref,
              context,
              userName: nameController.text,
              gender: currentGender.value,
              birth: birthController.text,
              email: emailController.text,
            ),
            child: const Text('test'),
          )
        ],
      ),
    );
  }
}
