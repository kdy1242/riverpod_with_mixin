import 'package:riverpod_with_mixin/src/features/domain/entity/horoscope_result.dart';

abstract class HoroscopeRepository {
  Future<HoroscopeResult> getResult();
}
