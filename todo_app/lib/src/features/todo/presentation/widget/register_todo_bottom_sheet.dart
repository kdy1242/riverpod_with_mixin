import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/src/features/todo/presentation/mixin/todo_home_event.dart';

class RegisterTodoBottomSheet extends HookConsumerWidget with TodoHomeEvent {
  const RegisterTodoBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoText = useState('');
    final selectedDate = useState(DateTime.now());

    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'TODO',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoTextField(
                onChanged: (value) => todoText.value = value,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 100,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.dateAndTime,
                onDateTimeChanged: (value) => selectedDate.value = value,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              child: CupertinoButton.filled(
                onPressed: todoText.value.isNotEmpty
                    ? () => onTapAddButton(
                          ref: ref,
                          context: context,
                          text: todoText.value,
                          date: selectedDate.value,
                        )
                    : null,
                child: const Text('ADD'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
