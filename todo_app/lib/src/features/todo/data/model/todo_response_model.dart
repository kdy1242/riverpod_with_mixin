// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/src/features/todo/data/model/todo_model.dart';

class TodoResponseModel {
  int count;
  List<TodoModel> data;

  TodoResponseModel({
    required this.count,
    required this.data,
  });

  factory TodoResponseModel.fromPostgrestResponse(
    PostgrestResponse<List<Map<String, dynamic>>> response,
  ) {
    return TodoResponseModel(
      count: response.count,
      data: response.data.map((e) => TodoModel.fromMap(e)).toList(),
    );
  }
}
