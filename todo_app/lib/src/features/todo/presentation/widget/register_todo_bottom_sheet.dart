import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterTodoBottomSheet extends StatelessWidget {
  const RegisterTodoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoTextField(),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 100,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.dateAndTime,
                onDateTimeChanged: (value) {
                  print(value);
                },
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              child: CupertinoButton.filled(
                child: const Text('ADD'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
