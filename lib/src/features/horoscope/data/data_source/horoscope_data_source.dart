import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_with_mixin/src/features/data/model/horoscope_result_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'horoscope_data_source.g.dart';

@riverpod
HoroscopeDataSource horoScopeDataSource(HoroScopeDataSourceRef ref) =>
    HoroscopeDataSourceImpl();

abstract class HoroscopeDataSource {
  Future<HoroscopeResultModel> getResult();
}

class HoroscopeDataSourceImpl implements HoroscopeDataSource {
  final resultTable = Supabase.instance.client.from('horoscope_result');

  @override
  Future<HoroscopeResultModel> getResult() async {
    final randomIndex = Random().nextInt(9);

    final res = await resultTable.select().eq('index', randomIndex);

    return HoroscopeResultModel.fromMap(res.first);
  }
}
