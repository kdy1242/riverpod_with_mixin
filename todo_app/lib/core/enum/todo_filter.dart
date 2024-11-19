import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TodoFilter {
  today(
    title: '오늘',
    color: Colors.blue,
    icon: CupertinoIcons.calendar_today,
  ),
  upcoming(
    title: '예정',
    color: Colors.red,
    icon: CupertinoIcons.calendar,
  ),
  all(
    title: '전체',
    color: Colors.black,
    icon: CupertinoIcons.folder_fill,
  ),
  completed(
    title: '완료됨',
    color: Colors.green,
    icon: CupertinoIcons.checkmark_alt,
  );

  final String title;
  final IconData icon;
  final Color color;

  const TodoFilter({
    required this.title,
    required this.icon,
    required this.color,
  });
}
