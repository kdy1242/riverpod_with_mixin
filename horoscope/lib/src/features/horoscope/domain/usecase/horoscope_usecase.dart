import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/data/repository/horoscope_repository_impl.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/domain/entity/horoscope_result.dart';

part 'horoscope_usecase.g.dart';

@riverpod
Future<HoroscopeResult> getResultUsecase(
  GetResultUsecaseRef ref, {
  required int index,
}) async {
  final repository = ref.watch(horoscopeRepositoryProvider);
  return repository.getResult(index);
}
