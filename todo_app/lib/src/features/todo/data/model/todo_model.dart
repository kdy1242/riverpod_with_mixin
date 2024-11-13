// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_app/src/features/todo/domain/entity/todo_entity.dart';

class TodoModel {
  int id;
  DateTime createdAt;
  String text;
  DateTime date;
  DateTime? completedAt;

  TodoModel({
    required this.id,
    required this.createdAt,
    required this.text,
    required this.date,
    this.completedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'text': text,
      'date': date.millisecondsSinceEpoch,
      'completedAt': completedAt?.millisecondsSinceEpoch,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'] as int,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      text: map['text'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      completedAt: map['completedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['completedAt'] as int)
          : null,
    );
  }
}

extension TodoModelExtension on TodoModel {
  Todo toEntity() => Todo(id: id, createdAt: createdAt, text: text, date: date);
}
