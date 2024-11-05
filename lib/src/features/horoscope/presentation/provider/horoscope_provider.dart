import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/domain/entity/horoscope_result.dart';
import 'package:riverpod_with_mixin/src/features/domain/usecase/horoscope_usecase.dart';

part 'horoscope_provider.g.dart';

@riverpod
Future<HoroscopeResult> getResult(GetResultRef ref) async =>
    await ref.watch(getResultUsecaseProvider.future);
