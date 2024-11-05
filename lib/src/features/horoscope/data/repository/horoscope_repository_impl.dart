import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/data/data_source/horoscope_data_source.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/data/model/horoscope_result_model.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/domain/entity/horoscope_result.dart';
import 'package:riverpod_with_mixin/src/features/horoscope/domain/repository/horoscope_repository.dart';

part 'horoscope_repository_impl.g.dart';

@riverpod
HoroscopeRepository horoscopeRepository(HoroscopeRepositoryRef ref) {
  final dataSource = ref.watch(horoScopeDataSourceProvider);
  return HoroscopeRepositoryImpl(source: dataSource);
}

class HoroscopeRepositoryImpl implements HoroscopeRepository {
  HoroscopeRepositoryImpl({required HoroscopeDataSource source})
      : _source = source;

  final HoroscopeDataSource _source;

  @override
  Future<HoroscopeResult> getResult() async =>
      (await _source.getResult()).toEntity();
}
