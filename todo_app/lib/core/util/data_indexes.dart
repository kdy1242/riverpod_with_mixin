import 'package:supabase_flutter/supabase_flutter.dart';

sealed class DataIndexes {
  final String key;

  const DataIndexes({required this.key});

  PostgrestFilterBuilder<List<Map<String, dynamic>>> applyToQuery(
    PostgrestFilterBuilder<List<Map<String, dynamic>>> query,
  ) {
    return query;
  }
}

class DataGreaterThan extends DataIndexes {
  final dynamic value;

  const DataGreaterThan({
    required super.key,
    required this.value,
  });

  @override
  PostgrestFilterBuilder<List<Map<String, dynamic>>> applyToQuery(
    PostgrestFilterBuilder<List<Map<String, dynamic>>> query,
  ) {
    return query.gt(key, value);
  }
}

class DataGreaterThanOrEqual extends DataIndexes {
  final dynamic value;

  const DataGreaterThanOrEqual({
    required super.key,
    required this.value,
  });

  @override
  PostgrestFilterBuilder<List<Map<String, dynamic>>> applyToQuery(
    PostgrestFilterBuilder<List<Map<String, dynamic>>> query,
  ) {
    return query.gte(key, value);
  }
}

class DataLessThanOrEqual extends DataIndexes {
  final dynamic value;

  const DataLessThanOrEqual({
    required super.key,
    required this.value,
  });

  @override
  PostgrestFilterBuilder<List<Map<String, dynamic>>> applyToQuery(
    PostgrestFilterBuilder<List<Map<String, dynamic>>> query,
  ) {
    return query.lte(key, value);
  }
}

class DataNot extends DataIndexes {
  final dynamic value;
  final String operator;

  const DataNot({
    required super.key,
    required this.operator,
    required this.value,
  });

  @override
  PostgrestFilterBuilder<List<Map<String, dynamic>>> applyToQuery(
    PostgrestFilterBuilder<List<Map<String, dynamic>>> query,
  ) {
    return query.not(key, operator, value);
  }
}
