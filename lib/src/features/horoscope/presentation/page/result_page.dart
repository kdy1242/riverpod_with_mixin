import 'package:flutter/material.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/domain/entity/horoscope_result.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.name, required this.result});

  final String name;
  final HoroscopeResult result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name의 사주'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              result.summary,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              result.description.replaceAll('[name]', name),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
