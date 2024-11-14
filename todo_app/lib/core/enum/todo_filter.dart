import 'package:flutter/material.dart';

enum TodoFilter {
  today(title: '오늘', color: Colors.blue, icon: Icons.calendar_today),
  upcoming(title: '예정', color: Colors.red, icon: Icons.calendar_month),
  all(title: '전체', color: Colors.black, icon: Icons.folder),
  completed(title: '완료됨', color: Colors.green, icon: Icons.check);

  final String title;
  final IconData icon;
  final Color color;

  const TodoFilter({
    required this.title,
    required this.icon,
    required this.color,
  });
}
