import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/data/repository/horoscope_repository_impl.dart';
import 'package:riverpod_with_mixin/src/features/domain/entity/horoscope_result.dart';

part 'horoscope_usecase.g.dart';

@riverpod
Future<HoroscopeResult> getResultUsecase(GetResultUsecaseRef ref) async {
  final repository = ref.watch(horoscopeRepositoryProvider);
  return repository.getResult();
}
