class Todo {
  int id;
  DateTime createdAt;
  String text;
  DateTime date;
  DateTime? completedAt;

  Todo({
    required this.id,
    required this.createdAt,
    required this.text,
    required this.date,
    this.completedAt,
  });
}
