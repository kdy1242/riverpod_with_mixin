import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/domain/entity/horoscope_result.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/presentation/provider/horoscope_provider.dart';

mixin class RegisterInfoEvent {
  Future<HoroscopeResult> getResult(WidgetRef ref) =>
      ref.watch(getResultProvider.future);
}
