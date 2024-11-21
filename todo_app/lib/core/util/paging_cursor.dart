import 'package:supabase_flutter/supabase_flutter.dart';

sealed class PagingCursor {
  final int id;

  const PagingCursor({required this.id});

  PostgrestTransformBuilder<List<Map<String, dynamic>>> getQuery(
      PostgrestFilterBuilder<List<Map<String, dynamic>>> query) {
    return query;
  }
}

class TodoPagingCursor extends PagingCursor {
  final DateTime date;

  const TodoPagingCursor({
    required super.id,
    required this.date,
  });

  @override
  PostgrestTransformBuilder<List<Map<String, dynamic>>> getQuery(
    PostgrestFilterBuilder<List<Map<String, dynamic>>> query,
  ) {
    return query.or(
      'and(date.eq.${date.toIso8601String()},id.gt.$id),date.gt.${date.toIso8601String()}',
    );
  }
}
