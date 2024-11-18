import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.todoText,
    required this.date,
    required this.isCompleted,
    required this.onEdit,
    required this.onDelete,
  });

  final String todoText;
  final DateTime date;
  final bool isCompleted;
  final Function() onEdit;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      actions: [
        CupertinoContextMenuAction(
          trailingIcon: Icons.edit,
          onPressed: () {
            onEdit();
            context.pop();
          },
          child: const Text('edit'),
        ),
        CupertinoContextMenuAction(
          isDestructiveAction: true,
          trailingIcon: Icons.delete,
          onPressed: () {
            onDelete();
            context.pop();
          },
          child: const Text('delete'),
        ),
      ],
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[100],
        child: CupertinoListTile(
          leading: CupertinoCheckbox(
            value: isCompleted,
            onChanged: (value) {},
          ),
          title: Text(todoText),
          subtitle: Text(
            DateFormat('yyyy. M. d - hh:mm').format(date),
          ),
        ),
      ),
    );
  }
}
