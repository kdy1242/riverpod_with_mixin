// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:riverpod_with_mixin/src/features/horoscope/domain/entity/horoscope_result.dart';

class HoroscopeResultModel {
  String summary;
  DateTime day;
  String description;

  HoroscopeResultModel({
    required this.summary,
    required this.day,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'summary': summary,
      'day': day,
      'description': description,
    };
  }

  factory HoroscopeResultModel.fromMap(Map<String, dynamic> map) {
    return HoroscopeResultModel(
      summary: map['summary'] as String,
      day: DateTime.parse(map['day']),
      description: map['description'] as String,
    );
  }
}

extension HoroscopeResultModelExtension on HoroscopeResultModel {
  HoroscopeResult toEntity() {
    return HoroscopeResult(
      summary: summary,
      day: day,
      description: description,
    );
  }
}
